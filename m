Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aprSn-0007zf-Rd
 for barebox@lists.infradead.org; Tue, 12 Apr 2016 06:06:14 +0000
Date: Tue, 12 Apr 2016 08:05:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160412060549.GO9102@pengutronix.de>
References: <1460106970-23144-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460106970-23144-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] lib: declared buffer is too small to hold string
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 08, 2016 at 10:16:10AM +0100, Renaud Barbier wrote:
> Displaying an unsigned 64-bit integer can be represented by up to 20
> characters. The 20 bytes buffer reserved to store the formatted string
> "%llu Bytes" is to small: (20 + 6) = 26. Hence, a bigger buffer is reserved
> to hold this string.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  lib/display_options.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/display_options.c b/lib/display_options.c
> index 2d695e4..0f65f59 100644
> --- a/lib/display_options.c
> +++ b/lib/display_options.c
> @@ -26,7 +26,7 @@
>   */
>  char *size_human_readable(unsigned long long size)
>  {
> -	static char buf[20];
> +	static char buf[30];
>  	unsigned long m = 0, n;
>  	unsigned long long f;
>  	static const char names[] = {'E', 'P', 'T', 'G', 'M', 'K'};
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
