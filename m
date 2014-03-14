Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOUYu-0008LQ-Dm
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 16:02:21 +0000
Received: by mail-ee0-f45.google.com with SMTP id d17so1553543eek.32
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 09:01:39 -0700 (PDT)
Date: Fri, 14 Mar 2014 17:01:33 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140314160132.GA7755@omega>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
 <1394803820-29277-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394803820-29277-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 6/6] ARM: pfla02: Set new ethernet phy tx timings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 14, 2014 at 02:30:20PM +0100, Sascha Hauer wrote:
> From: Christian Hemp <c.hemp@phytec.de>
> 
> TX_CLK line is approx. 54mm longer than other TX lines which adds
> a delay of 0.36ns. RGMII need a delay of min. 1.0ns. This mean we have to add
> a delay of 0.64ns. We choose 0.78 to have a little gap. This can be done by
> setting GTX pad skew value to 11100
>  => Set register 2.8 (RGMII Clock Pad Skew) to 0x038F.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  arch/arm/boards/phytec-phyflex-imx6/board.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
> index f510407..3db88da 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/board.c
> +++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
> @@ -21,6 +21,9 @@
>  #include <gpio.h>
>  #include <init.h>
>  #include <of.h>
> +#include <fec.h>
> +
> +#include <linux/micrel_phy.h>
>  
>  #include <mach/imx6.h>
>  
> @@ -36,6 +39,21 @@ static int eth_phy_reset(void)
>  	return 0;
>  }
>  
> +static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
> +{
> +	phy_write(dev, 0x0d, device);
> +	phy_write(dev, 0x0e, reg);
> +	phy_write(dev, 0x0d, (1 << 14) | device);
> +	phy_write(dev, 0x0e, val);
> +}
> +
> +static int ksz9031rn_phy_fixup(struct phy_device *dev)
> +{
> +	mmd_write_reg(dev, 2, 8, 0x039F);
> +
commit msg says 0x038F and here is 0x039F. Which one is correct now?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
