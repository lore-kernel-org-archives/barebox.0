Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OOScS-0007dy-JS
	for barebox@lists.infradead.org; Tue, 15 Jun 2010 09:39:45 +0000
Received: by wyb40 with SMTP id 40so970564wyb.36
	for <barebox@lists.infradead.org>; Tue, 15 Jun 2010 02:39:42 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
	<1276508921-3264-5-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 15 Jun 2010 11:39:39 +0200
In-Reply-To: <1276508921-3264-5-git-send-email-s.hauer@pengutronix.de> (Sascha
	Hauer's message of "Mon, 14 Jun 2010 11:48:34 +0200")
Message-ID: <87d3vseisk.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 Sascha> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
 Sascha> ---
 Sascha>  include/random.h |    7 +++++++
 Sascha>  lib/Makefile     |    1 +
 Sascha>  lib/random.c     |   22 ++++++++++++++++++++++
 Sascha>  3 files changed, 30 insertions(+), 0 deletions(-)
 Sascha>  create mode 100644 include/random.h
 Sascha>  create mode 100644 lib/random.c

 Sascha> diff --git a/lib/random.c b/lib/random.c
 Sascha> new file mode 100644
 Sascha> index 0000000..25315e7
 Sascha> --- /dev/null
 Sascha> +++ b/lib/random.c
 Sascha> @@ -0,0 +1,22 @@
 Sascha> +#include <common.h>
 Sascha> +#include <random.h>
 Sascha> +
 Sascha> +static int random_seed;
 Sascha> +
 Sascha> +static unsigned char rand(void)
 Sascha> +{
 Sascha> +	random_seed = random_seed * 1103515245 + 12345;
 Sascha> +	return (unsigned char)(random_seed / 65536) % 256;
 Sascha> +}

Any reason to not make this public and return int instead similar to
rand(3)?

We could presumably simply do:

#define RAND_MAX 255

And to be completely correct, these prototypes should be in stdlib.h
instead.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
