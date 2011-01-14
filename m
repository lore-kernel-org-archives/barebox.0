Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgW-0006G2-Qa
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:46 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PdpgV-0005Z9-17
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 20:51:43 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PdpgU-000512-WA
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 20:51:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:32 +0100
Message-Id: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: some i.MX28 related patches
To: barebox@lists.infradead.org

The following patches make the MMU usable on the tx28 board and allow
to pass in framebuffer addresses from platform data on i.MX28.

The following changes since commit 0327e12f068471dc03577407b8f8915914c2be32:

  fb: update cdev map_base (2011-01-14 20:42:17 +0100)

are available in the git repository at:
  none ..BRANCH.NOT.VERIFIED..

Sascha Hauer (7):
      fec i.MX28: Make it work with MMU on
      ARM tx28: Add mmu support
      video stm/mx2x: simplify memory allocation
      video stm/mx2x: allow to pass in fb memory from platform data
      provide real barebox end variable
      ARM i.MX28 tx28: use a fixed framebuffer address
      ARM i.MX28 tx28 defconfig: enable MMU

 arch/arm/boards/karo-tx28/tx28-stk5.c |   12 ++++++++++++
 arch/arm/boards/karo-tx28/tx28.c      |   23 +++++++++++++++++++++++
 arch/arm/configs/tx28stk5_defconfig   |    1 +
 arch/arm/mach-stm/Kconfig             |    1 +
 arch/arm/mach-stm/include/mach/fb.h   |    3 +++
 drivers/net/fec_imx.c                 |    2 +-
 drivers/video/stm.c                   |   31 ++++++++-----------------------
 include/reloc.h                       |    2 +-
 8 files changed, 50 insertions(+), 25 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
