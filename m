Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgdFn-0007hI-82
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 14:48:32 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SgdFL-0008C0-K1
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:06 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SgdFK-0002fM-W3
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:03 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Mon, 18 Jun 2012 16:47:54 +0200
Message-Id: <1340030880-10062-1-git-send-email-js@sig21.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6] misc ethernet fixes and new driver
To: barebox@lists.infradead.org

Hi,

I ported the designware ethernet driver from u-boot, it
only required minor changes and worked right away.
Since my hw has 1G ethernet I added support for this,
although speed is not so important in a boot loader it seemed
easier than to reconfigure the PHY for 100Mbit.

Patches 4 and 5 may be a bit controversial.  The motivation
for patch 4 is that took me some head scratching to get
debug read/write on PHY regs correct since md and mw worked
against my intuition on /dev/phy0.
The string in eth_set_ethaddr() confused me to think a string
would be passed to ->set_ethaddr().  Changing "unsigned char *adr"
to "u8 adr[6]" does not change the generated code but is IMHO
harder to misunderstand.


Johannes

 drivers/net/Kconfig      |   11 ++
 drivers/net/Makefile     |    1 +
 drivers/net/designware.c |  433 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/designware.h |  230 ++++++++++++++++++++++++
 drivers/net/miidev.c     |   72 ++++++--
 include/miidev.h         |    4 +
 include/net.h            |    8 +-
 include/net/designware.h |    9 +
 net/eth.c                |    2 +-
 net/net.c                |    4 +-
 10 files changed, 752 insertions(+), 22 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
