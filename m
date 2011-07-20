Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjQpk-00069J-QZ
	for barebox@lists.infradead.org; Wed, 20 Jul 2011 07:04:43 +0000
Date: Wed, 20 Jul 2011 09:04:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110720070436.GR20587@pengutronix.de>
References: <CAM9uW_57ecdoGWdV9pqNjBfkCo5xS-R1zkY910_yvBLKHEYzxQ@mail.gmail.com>
	<20110712135443.GW6069@pengutronix.de>
	<20110712135816.GY6069@pengutronix.de>
	<CAM9uW_6-dGAXi0vKp8Ghg5gXhQ_0ORy2x3mDOTK4-T8LOmMELg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9uW_6-dGAXi0vKp8Ghg5gXhQ_0ORy2x3mDOTK4-T8LOmMELg@mail.gmail.com>
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
Subject: Re: FEC Not working with imx27 based board
To: Kamel BOUHARA <k.bouhara@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 19, 2011 at 06:33:26PM +0200, Kamel BOUHARA wrote:
> Yes I've set the correct adress and it's why I don't have fffff like on the
> phytec.
> But in fact I had to change the fec_get_hwadrr() to make it work with my
> board :
> 
> static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)
> 
> {
> 
>  int i;
> 
>  int uninitialized = 0;
> 
> 
> >  for (i=0;i<6;i++) {
> 
>  mac[6-1-i] = readl(&IIM_BANK_REG(0,(IIM0_MAC+i)));
> 
>  }
> 
> 
> >  /* uninitialized if all 00 */
> 
>  if ((mac[0] == 0) && (mac[1] == 0) && (mac[2] == 0) &&
> 
>             (mac[3] == 0) && (mac[4] == 0) && (mac[5] == 0))
> 
>                 uninitialized = 1;
> 
> 
> >  /* uninitialized if all FF (could be safe) */
> 
>         if ((mac[0] == 0xff) && (mac[1] == 0xff) && (mac[2] == 0xff) &&
> 
>      (mac[3] == 0xff) && (mac[4] == 0xff) && (mac[5] == 0xff))
> 
>          uninitialized = 1;
> 
> 
> >  return uninitialized;
> 
> }

Please generate proper diffs. I can't really read this.

> 
> 
> Before this change it wasn't the case, I had no mac adress in barebox
> start...

fec_get_hwaddr error value in which case the core will generate a random
mac address. Looking at the code the driver seems to do this wihtout
changes.

> I also added a specific reset :
> 
> void fec_reset()
> {
>         int i=0;
>     /*  FEC RESET */
>     imx_gpio_mode(CFG_ETHPHY_RST | GPIO_OUT | GPIO_PUEN | GPIO_GPIO);
>     printf("Before PHY reset\n");
>     GPIO_CLEAR(CFG_ETHPHY_RST);
>     udelay(200);
>     GPIO_SET(CFG_ETHPHY_RST);
>     printf("After PHY reset\n");
> 
> }
> 
> And then I call it in the fec_probe() to ensure the fec is reset properly
> before settings.
> I already tested the fec on u-boot and it works fine, so i tought it can
> help me with barebox but it seems there are some differences between codes.
> 
> For now Im trying to see if it can be a cpu frequence problem because I have
> an errata on the pll that shifts all my frequencies and so I have to adjust
> them in the lowlevelinit...
> 
> So I would like to know if the clock initialization is taking effect if I
> boot from RAM ? Do I have t boot from flash ?

the pll setup code is in your board, so it's in your hands.

Some PLL settings are safer to run from Flash or internal RAM instead of
SDRAM.

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
