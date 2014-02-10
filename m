Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCmuU-0004QY-EX
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 09:12:15 +0000
Date: Mon, 10 Feb 2014 10:11:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210091152.GM17250@pengutronix.de>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
 <1391869601.90335932@f192.i.mail.ru>
 <20140210083358.GH17250@pengutronix.de>
 <1392021644.417588038@f387.i.mail.ru>
 <20140210094819.5a1a2d28@e6520eb>
 <20140210085235.GJ17250@pengutronix.de>
 <20140210095418.1b36b791@e6520eb>
 <20140210090347.GK17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140210090347.GK17250@pengutronix.de>
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
Subject: Re: [PATCH 2/7] ARM: i.MX53: Add sata to devicetree
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 10, 2014 at 10:03:47AM +0100, Sascha Hauer wrote:
> > > > > I suggest just sync imx53.dtsi from the linux-next, as a result we will have
> > > > > non-modified version of kernel templates.
> > > > > Change as above, makes imx53.dtsi different for kernel and barebox.
> > > > > This is part of sata node from the kernel:
> > > > > 		sata: sata@10000000 {
> > > > > 			compatible = "fsl,imx53-ahci";
> > > > > 			reg = <0x10000000 0x1000>;
> > > > > 			interrupts = <28>;
> > > > > 			clocks = <&clks IMX5_CLK_SATA_GATE>,
> > > > > 				 <&clks IMX5_CLK_SATA_REF>,
> > > > > 				 <&clks IMX5_CLK_AHB>;
> > > > > 			clock-names = "sata_gate", "sata_ref", "ahb";
> > > > > 			status = "disabled";
> > > > > 		};
> > > > > 
> > > > that's possible, I don't know why the clock are changed in barebox vs
> > > > linux and don't know if that's needed (I got inspiration from other
> > > > nodes)
> > > 
> > > They are identical, it's only that Alexander introduced defines for the
> > > clocks in Linux whereas in barebox we have the older versions with
> > > plain numbers.
> > > 
> > clock-names are also changed as well as the order (taken from other
> > nodes).
> 
> Oh, you are right. The order doesn't matter, but the names should be
> identical. We should use the same names in barebox as in the kernel, be
> it with defines or with numbers.

So, Eric, to sort that out for now:

- Please update the SATA entry to be compatible with the kernel, but do
  not use the Linux-next dts. This means use plain numbers, but the
  correct clock names.
- Remove the dr_mode = "host" line

With these changes this series should be fine for merging.

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
