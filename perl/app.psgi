use FindBin;
use lib "$FindBin::Bin/local/lib/perl5";
use lib "$FindBin::Bin/lib";
use File::Basename;
use Plack::Builder;
use Isucon5f::Web;
use Cache::Memcached::Fast;

my $root_dir = File::Basename::dirname(__FILE__);

my $app = Isucon5f::Web->psgi($root_dir);
builder {
    enable 'ReverseProxy';
    enable 'Static',
        path => qr!^/(?:(?:css|fonts|js)/|favicon\.ico$)!,
        root => File::Basename::dirname($root_dir) . '/static';
    enable 'Session::Simple',
        store => Cache::Memcached::Fast->new(+{ servers => [qw/203.104.208.197:11211/] }),
        session_key => "airisu_session",
    ;
    $app;
};
