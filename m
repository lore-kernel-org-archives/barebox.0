Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgngG-0000Qh-Bg
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:46:57 +0000
Date: Mon, 5 Sep 2016 08:46:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160905064634.ie7xcbt5tnczi3vg@pengutronix.de>
References: <1473032402-23789-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473032402-23789-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i.MX: scripts: Fix a bug in imx-image
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 04, 2016 at 04:40:02PM -0700, Andrey Smirnov wrote:
> In order to clear a bitmask, "Set" bit has to be '0' and "Mask" bit
> '1'. Since "Set" is bit 4 and "Mask" is bit 3 this leaves us with a
> overal or-mask of 1 << 3. Orginal code was doing the inverse and setting
> bit #4 to '1' bit #3 to '0'.

Yeah, right. I just had a look at the i.MX53 reference manual and I
probably was confused by the description table which describes the bits
in the order I used them in the code.

Applied, thanks

Sascha

> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  scripts/imx/imx-image.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 3f62228..10aa4c1 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -380,7 +380,7 @@ static int write_mem_v2(uint32_t addr, uint32_t val, int width, int set_bits, in
>  	if (set_bits)
>  		cmd |= 3 << 3;
>  	if (clear_bits)
> -		cmd |= 2 << 3;
> +		cmd |= 1 << 3;
>  
>  	if (curdcd > MAX_DCD - 3) {
>  		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
> -- 
> 2.5.5
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
