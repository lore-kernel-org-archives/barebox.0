Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.ord1c.emailsrvr.com ([108.166.43.77])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3oAX-00057y-DU
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 17:57:19 +0000
Received: from smtp26.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp26.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 6FDB9E0387
 for <barebox@lists.infradead.org>; Mon,  7 Nov 2016 12:56:53 -0500 (EST)
Received: by smtp26.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 11AE5E01AD
 for <barebox@lists.infradead.org>; Mon,  7 Nov 2016 12:56:52 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
Date: Mon, 7 Nov 2016 17:56:51 +0000
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Designware MAC reset timeout after Linux reboot
To: barebox@lists.infradead.org

Hi everyone,

I'm using barebox 2016.10.0 with some custom BSP patches for my Cyclone 
V socfpga based board.  I've noticed that after issuing a reboot in 
Linux, followed by an 'ifup eth0' command in barebox, I get a "eth0: MAC 
reset timeout" error, which causes dwc_ether_init() to bail out early. 
My Linux kernel is Linux 4.1.17, plus LTSI-4.1.17 patches, plus Altera 
patches from linux-socfpga kernel branch socfpga-4.1.22-ltsi, in that 
order (git rebase is a wonderful thing!).

Socfpga has two Ethernet MAC controllers.  Like several other Cyclone V 
boards, my board's device tree disables the first one (&gmac0) and 
aliases ethernet0 to the second one (&gmac1).

I don't need the ethernet to work to boot Linux, and Linux manages to 
reinitialize the ethernet okay, so it's more of a inconvenience to me 
than a show-stopper - I just need to power-cycle the board if I want 
ethernet access in barebox.

I am aware of Trent Piepho's patch (commit 
f0ae0c33f52ced89da080673ca89a3c5f2ea70e6) which brings the PHY out of 
power-down mode before resetting the MAC DMA controller.  In fact, the 
PHY doesn't seem to be in power-down mode in my case, as the value read 
from the MII_BMCR in phy_resume() is 0x1140 (BMCR_ANENABLE | 
BMCR_FULLDPLX | BMCR_SPEED1000).

There must be something else stopping the software reset of the MAC 
completing successfully, but I'm not sure what.  The Cyclone V Hard 
Processor System Technical Reference Manual says this about the MAC DMA 
software reset bit:

| Note: * The Software reset system is driven only by this bit. *
| The reset operation is completed only when all resets in all
| active clock domains are de-asserted. Therefore, it is
| essential that all the PHY inputs clocks (applicable for the
| selected PHY interface) are present for the software reset
| completion.

Perhaps the timeout isn't waiting long enough.  If I interrupt the 'ifup 
eth0' command and display the approriate 'Bus_Mode' register 
(0xff703000) with the 'md' command, the DMAMAC_SRST bit (bit 0) is no 
longer set:

barebox@xxxx:/ md -l 0xff703000+4
ff703000: 00020100

I tried porting over a few old patches from the U-Boot version of the 
driver, in particular these two patches for the mac_reset() function:

http://git.denx.de/?p=u-boot.git;a=patch;h=7091915ad7a58d7884b7353b87373847ae943e1c

http://git.denx.de/?p=u-boot.git;a=patch;h=227ad7b2b6fab024fff6f60613b0e90c9e3a6724

They didn't solve my problem, but I'll send those two patches and a 
couple of others adapted from the U-Boot version of the driver to the 
list separately.

Sorry for waffling on for so long.  Thanks for your time, and any 
helpful hints you can offer!  On the whole, hacking PTXdist and barebox 
is a much more pleasant experience than hacking U-Boot and Yocto!

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
