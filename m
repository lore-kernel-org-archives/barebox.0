Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7hBz-0004oz-Fi
 for barebox@lists.infradead.org; Fri, 09 Aug 2013 07:33:00 +0000
Date: Fri, 9 Aug 2013 09:32:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130809073237.GA26614@pengutronix.de>
References: <ce9d0dc069aa93694635e8bd5ac2fbd94bd2fa24.1376020752.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce9d0dc069aa93694635e8bd5ac2fbd94bd2fa24.1376020752.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] net: fix checksum verification
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Fri, Aug 09, 2013 at 07:01:24AM +0300, Baruch Siach wrote:
> Checksum verification on data including its own checksum (as is the case with
> IP headers) should give zero. Current code works well for the correct checksum
> case, but fails to identify (most) errors.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
> 
> Untested. From code inspection only.
> 
>  net/net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/net.c b/net/net.c
> index 0bd9084..bd7a578 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -41,7 +41,7 @@ static unsigned int net_ip_id;
>  
>  int net_checksum_ok(unsigned char *ptr, int len)
>  {
> -	return net_checksum(ptr, len) + 1;
> +	return net_checksum(ptr, len) == 0;

D'oh. There's a bug indeed. For a good packet net_checksum returns
0xffff (all ones in an u16). So the check should be:

	return net_checksum(ptr, len) == 0xffff;

U-Boot has this instead:

	return !((net_checksum(ptr, len) + 1) & 0xfffe);

From what I see both above should be equivalent so I wonder why U-Boot
has such a complicated code here. Some compiler optimization or is this
something I don't see?

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
