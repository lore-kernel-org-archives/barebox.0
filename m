Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OOUjH-0005DQ-RZ
	for barebox@lists.infradead.org; Tue, 15 Jun 2010 11:54:56 +0000
Date: Tue, 15 Jun 2010 13:54:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100615115452.GC20799@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
	<1276508921-3264-5-git-send-email-s.hauer@pengutronix.de>
	<87d3vseisk.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d3vseisk.fsf@macbook.be.48ers.dk>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 04/11] include support for a simple pseudo number generator
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

Hi Peter,

On Tue, Jun 15, 2010 at 11:39:39AM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  Sascha> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>  Sascha> ---
>  Sascha>  include/random.h |    7 +++++++
>  Sascha>  lib/Makefile     |    1 +
>  Sascha>  lib/random.c     |   22 ++++++++++++++++++++++
>  Sascha>  3 files changed, 30 insertions(+), 0 deletions(-)
>  Sascha>  create mode 100644 include/random.h
>  Sascha>  create mode 100644 lib/random.c
> 
>  Sascha> diff --git a/lib/random.c b/lib/random.c
>  Sascha> new file mode 100644
>  Sascha> index 0000000..25315e7
>  Sascha> --- /dev/null
>  Sascha> +++ b/lib/random.c
>  Sascha> @@ -0,0 +1,22 @@
>  Sascha> +#include <common.h>
>  Sascha> +#include <random.h>
>  Sascha> +
>  Sascha> +static int random_seed;
>  Sascha> +
>  Sascha> +static unsigned char rand(void)
>  Sascha> +{
>  Sascha> +	random_seed = random_seed * 1103515245 + 12345;
>  Sascha> +	return (unsigned char)(random_seed / 65536) % 256;
>  Sascha> +}
> 
> Any reason to not make this public and return int instead similar to
> rand(3)?

The reason was that I did not need rand but get_random_bytes and I
wasn't aware that rand() is that close to the corresponding libc
function.

> 
> We could presumably simply do:
> 
> #define RAND_MAX 255
> 
> And to be completely correct, these prototypes should be in stdlib.h
> instead.

Ok, will do.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
