Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWZz-0008Os-Ra
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:31:26 +0000
Date: Wed, 30 Sep 2020 09:31:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200930073110.GF11648@pengutronix.de>
References: <20200928123942.26970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928123942.26970-1-a.fatoum@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] readkey: shrink table of known escape sequences in size
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 28, 2020 at 02:39:42PM +0200, Ahmad Fatoum wrote:
> Instead of storing pointers to 4-byte strings, we could just store the
> characters directly in the struct. Can save us up to 18 pointers worth
> of space.
> 
> We could save 18 x 1 byte more of static storage by making the strings
> 3 bytes of length as the nul byte need not be stored explicitly for
> strings of maximal length.
> 
> For clarity, this optimization is omitted for now. We still use strncmp,
> instead of strcmp use runs risk of accidental out of bounds reads when
> longer escape sequences are added. This can't occur with strncmp.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - Maintain a nul delimiter always at the cost of 18 more bytes
>     (Sascha)
> ---
>  lib/readkey.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/readkey.c b/lib/readkey.c
> index c26e9d51aba9..6a4ddf14a99d 100644
> --- a/lib/readkey.c
> +++ b/lib/readkey.c
> @@ -20,8 +20,10 @@
>  #include <linux/ctype.h>
>  #include <readkey.h>
>  
> +#define MAX_ESC_LEN 4
> +
>  struct esc_cmds {
> -	const char *seq;
> +	const char seq[MAX_ESC_LEN];
>  	unsigned char val;
>  };
>  
> @@ -49,7 +51,7 @@ static const struct esc_cmds esccmds[] = {
>  int read_key(void)
>  {
>  	unsigned char c;
> -	unsigned char esc[5];
> +	unsigned char esc[MAX_ESC_LEN + 2];
>  	c = getchar();
>  
>  	if (c == 27) {
> @@ -67,7 +69,7 @@ int read_key(void)
>  		}
>  		esc[i] = 0;
>  		for (i = 0; i < ARRAY_SIZE(esccmds); i++){
> -			if (!strcmp(esc, esccmds[i].seq))
> +			if (!strncmp(esc, esccmds[i].seq, MAX_ESC_LEN))
>  				return esccmds[i].val;

strncmp() gives you undesired results when 'esc' is longer than
MAX_ESC_LEN. Please don't start proving me that this can't happen in the
current code. I still don't think that saving a few bytes is worth the
hassle.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
