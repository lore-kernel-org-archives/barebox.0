Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c41T4-0002uv-TU
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 08:09:19 +0000
Date: Tue, 8 Nov 2016 09:08:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161108080856.qyorpnvj4serg6ym@pengutronix.de>
References: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
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
Subject: Re: Designware MAC reset timeout after Linux reboot
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi Ian,

On Mon, Nov 07, 2016 at 05:56:51PM +0000, Ian Abbott wrote:
> Hi everyone,
> 
> I'm using barebox 2016.10.0 with some custom BSP patches for my Cyclone V
> socfpga based board.  I've noticed that after issuing a reboot in Linux,
> followed by an 'ifup eth0' command in barebox, I get a "eth0: MAC reset
> timeout" error, which causes dwc_ether_init() to bail out early. My Linux
> kernel is Linux 4.1.17, plus LTSI-4.1.17 patches, plus Altera patches from
> linux-socfpga kernel branch socfpga-4.1.22-ltsi, in that order (git rebase
> is a wonderful thing!).
> 
> Socfpga has two Ethernet MAC controllers.  Like several other Cyclone V
> boards, my board's device tree disables the first one (&gmac0) and aliases
> ethernet0 to the second one (&gmac1).
> 
> I don't need the ethernet to work to boot Linux, and Linux manages to
> reinitialize the ethernet okay, so it's more of a inconvenience to me than a
> show-stopper - I just need to power-cycle the board if I want ethernet
> access in barebox.

Have you searched in the Linux code what it does differently so that it
can successfully reset the MAC?

> 
> I am aware of Trent Piepho's patch (commit
> f0ae0c33f52ced89da080673ca89a3c5f2ea70e6) which brings the PHY out of
> power-down mode before resetting the MAC DMA controller.  In fact, the PHY
> doesn't seem to be in power-down mode in my case, as the value read from the
> MII_BMCR in phy_resume() is 0x1140 (BMCR_ANENABLE | BMCR_FULLDPLX |
> BMCR_SPEED1000).
> 
> There must be something else stopping the software reset of the MAC
> completing successfully, but I'm not sure what.  The Cyclone V Hard
> Processor System Technical Reference Manual says this about the MAC DMA
> software reset bit:
> 
> | Note: * The Software reset system is driven only by this bit. *
> | The reset operation is completed only when all resets in all
> | active clock domains are de-asserted. Therefore, it is
> | essential that all the PHY inputs clocks (applicable for the
> | selected PHY interface) are present for the software reset
> | completion.
> 
> Perhaps the timeout isn't waiting long enough.  If I interrupt the 'ifup
> eth0' command and display the approriate 'Bus_Mode' register (0xff703000)
> with the 'md' command, the DMAMAC_SRST bit (bit 0) is no longer set:
> 
> barebox@xxxx:/ md -l 0xff703000+4
> ff703000: 00020100

The timeout is 10ms, this should be way enough. The return value of
dwc_ether_init() is not checked, so the driver happily continues with
further register writes, I assume there must be something that clears
this bit afterwards, either directly or indirectly.

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
