Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCc8I-0002hH-Ic
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 21:09:31 +0000
Date: Thu, 22 Aug 2013 23:09:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130822210908.GD31036@pengutronix.de>
References: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
 <20130822065552.GU31036@pengutronix.de>
 <CAJyuEedyP-VXLieP5hZgTv5Tiihq9h8fecEpuGV4YdYur=Kq8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEedyP-VXLieP5hZgTv5Tiihq9h8fecEpuGV4YdYur=Kq8g@mail.gmail.com>
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
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 22, 2013 at 03:18:13PM -0400, Michael Burkey wrote:
> Sascha,
> 
> Based on a fairly thorough perusal of the current HEAD from the git, I
> am thinking I will implement the Variscite SOM in the following file
> structure:
> 
> (FYI - the Variscite development kit includes their own carrier board
> which is simply referred to in their published schematics as
> "MX6CustomBoard", so I am thinking of segmenting things by SOM and
> carrier board, much as you have the PhyFlex and its carrier board.)
> 
> /arch/arm/configs/variscite_mx6_custom_defconfig
> /arch/arm/boards/variscite-mx6-custom/board.c
> /arch/arm/boards/variscite-mx6-custom/flash-header.imxcfg
> /arch/arm/boards/variscite-mx6-custom/lowlevel.c
> /arch/arm/boards/variscite-mx6-custom/Makefile
> /arch/arm/boards/variscite-mx6-custom/env/(To Be Determined)
> /arch/arm/dts/imx6q-var-custom.dts
> /arch/arm/dts/imx6q-var-som.dtsi
> 
> Does this fit into your current methodology pretty well?

Yes, this looks good.

Note that i.MX6 boards often come in different quad/dual variants with
slightly different devicetrees. Just to explain the mess we have with
the i.MX6 devicetrees...

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
