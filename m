Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFAc-00059Z-GT
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:15:20 +0000
Date: Fri, 16 May 2014 12:14:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140516101453.GV5858@pengutronix.de>
References: <1400158031-16391-1-git-send-email-holgerschurig@gmail.com>
 <20140516061744.GT5858@pengutronix.de>
 <CAOpc7mEiYP9y0neVuG_H3FN0CXK2kXyxtX684NAj59Kr9h2H9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEiYP9y0neVuG_H3FN0CXK2kXyxtX684NAj59Kr9h2H9g@mail.gmail.com>
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
Subject: Re: [PATCH v2] ahs2: initial support
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Holger Schurig <schurig@dlog.com>

On Fri, May 16, 2014 at 09:47:45AM +0200, Holger Schurig wrote:
> > This file is currently not compiled in.
> 
> I know, because I current environment have my own _defconfig still as
> a quilt-patch. It's local, because it contains hardcoded the IP
> address of my development box for TFTP, for example. I thought that I
> put up the real environment once I'm able to decide about the final
> environment.
> 
> > You can either remove it in case
> > you don't need it, or move the env/ directory in your board file to
> > defaultenv-ahs2/, add to the make rules:
> >
> > bbenv-y += defaultenv-ahs2
> >
> > And in some initcall do:
> >
> > defaultenv_append_directory(defaultenv_ahs2);
> >
> > This way the ahs2 specific files will be in the environment exactly when
> > the binary is started on your board.
> 
> Good to know. But, as said, currently I cannot do this. After all,
> this is an "initial support" patch.
> 
> 
> >> +static inline void early_uart1_init(void)
> >> +{
> >> +     // 2681: IOMUXC_UART1_UART_RX_DATA_SELECT_INPUT to ALT1 (CSI0_DATA10_ALT3 )
> >> +     // 2621: IOMUXC_ECSPI2_MISO_SELECT_INPUT to ALT2 (CSI0_DATA10_ALT2)
> >> +     // 2092: IOMUXC_SW_MUX_CTL_PAD_CSI0_DATA10 to ALT3 (UART1_TX_DATA)
> >
> > What are these numbers?
> 
> The page numbers in the i.MX6 reference manual :-)
> 
> 
> 
> > Please replace with /* C comments */
> 
> Sigh, we still aren't in the year 2014 ?!?!?   Somehow this  "no //"
> reminds me that the other day a collegue of me asked me to set the
> baudrate to 38400 :-)

I also use // comments: To indicate places I have revisit.

> 
> And while at it: may I suggest that barebox switches to C99?   Thould
> would also liberate the placement of variable definitions ...

We use Kernel coding style in barebox which makes it very easy for us to
get consistent looking code (and to integrate kernel code). Also it
makes for code which is easy to read and understand for people coming
from the kernel area which I assume most of the barebox people do.
I may change my mind some day, but that requires much more nagging from
more people ;)

> >> +     aliases {
> >> +             ethernet0 = &fec;
> >> +     };
> >
> > Could you add this to the imx6qdl.dtsi file instead?
> 
> Sure, I actually don't even know if it is needed. I took it via cut-and-paste.

Looking at it you shouldn't need it. barebox eventually uses this to find
the device_node corresponding to eth0 and fills in the MAC address into
this node so that Linux finds it.
This is only needed when barebox probes from platform_devices, but
passes a devicetree to the kernel. This happens on PowerPC, but not on
your hardware.

> 
> > Normally this should be in the upstream dtsi file, but as long as it
> > isn't we can keep it in barebox.
> 
> I'll look if it is needed, and if yes, I'll put it in the dtsi file.
> 
> 
> >> +     phy: ethernet-phy@0 {
> >> +             speed = <10>;
> >> +             duplex = <1>;
> >> +     };
> >
> > speed 10? really?
> 
> Now, there are two reasons why I tried this:
> 
> * our hardware guys had an error on our layout (wrong resistors). I
> should have removed that, my board is now fixed.
> 
> * currently, the most time consuming operation in in my
> barebox-loads-linux-via-TFTP is the autonegotiation of the PHY. After
> "ifup eth0" a "time ping 10.1.2.3" reports 4580ms. Transfers after
> that are fast enought. My attempt was a try to use some fixes speed,
> even a slow one.
> 
> But I now grepped for "of_" below drivers/net, I actually think that
> neiher fec_imx.c nor phy/smsc.c cares for device tree settings.
> 
> Do you have any idea on how to speed up auto-negotiation?

No idea. It takes around 4s here aswell.

You could support Thomas Petazzonis dt-support-for-fixed-phys series:

http://www.spinics.net/lists/arm-kernel/msg312758.html

Then at least we would have a binding to describe phys via dt.

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
