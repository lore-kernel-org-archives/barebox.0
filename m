Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZbmw-0004bf-Lx
 for barebox@lists.infradead.org; Wed, 30 May 2012 05:49:43 +0000
Date: Wed, 30 May 2012 07:49:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120530054940.GG30400@pengutronix.de>
References: <CAJLCkXMV6mtW7q7MtQuhJstKwb3mGXwJbunLNVKQRZ+ey_gZ2A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJLCkXMV6mtW7q7MtQuhJstKwb3mGXwJbunLNVKQRZ+ey_gZ2A@mail.gmail.com>
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
Subject: Re: check if RGMII works
To: Maxim Gorbachyov <maxim.gorbachyov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 07:37:47PM +0300, Maxim Gorbachyov wrote:
> Hello.
> 
> I'm trying to use barebox (current git version) with a Freescale
> i.MX6q based board. The board is similar to Armadillo 2, but it comes
> with another Ethernet PHY. Barebox starts on the board, and there is a
> fec_imx0:
> 
> barebox@Freescale i.MX6q myboard:/ devinfo fec_imx0
> resources:
> num   : 0
> start : 0x02188000
> size  : 0x00001000
> driver: fec_imx
> no info available for fec_imx0
> no parameters available
> 
> I've removed AR8031 (Armadillo 2 PHY) code from the mx6_rgmii_rework()
> and added these lines:
> 
>         for (i = 0; i < 16; ++i) {
>                 val = mii_read(mdev, mdev->address, i);
>                 printf("%s() PHY register %d: 0x%04x\n", __FUNCTION__, i, val);
>         }
> 
> Relevant boot log:
> 
> mx6_rgmii_rework() PHY register 0: 0x7fff
> mx6_rgmii_rework() PHY register 1: 0xffff
> mx6_rgmii_rework() PHY register 2: 0x7fff
> mx6_rgmii_rework() PHY register 3: 0xffff
> mx6_rgmii_rework() PHY register 4: 0x7fff
> mx6_rgmii_rework() PHY register 5: 0xffff
> mx6_rgmii_rework() PHY register 6: 0x7fff
> mx6_rgmii_rework() PHY register 7: 0xffff
> mx6_rgmii_rework() PHY register 8: 0x7fff
> mx6_rgmii_rework() PHY register 9: 0xffff
> mx6_rgmii_rework() PHY register 10: 0x7fff
> mx6_rgmii_rework() PHY register 11: 0xffff
> mx6_rgmii_rework() PHY register 12: 0x7fff
> mx6_rgmii_rework() PHY register 13: 0xffff
> mx6_rgmii_rework() PHY register 14: 0x7fff
> mx6_rgmii_rework() PHY register 15: 0xffff
> 
> These values are not PHY defaults and actually look strange. I'm not
> sure if mii_read() really works here.

It seems not.

> Could you please suggest how to check if RGMII communication works?

You already found out ;)

Have you checked the iomux settings are correct?

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
