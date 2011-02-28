Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-00085u-7j
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:43:59 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Ptze0-00077z-9r
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 10:43:56 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Ptze0-0001S7-8j
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 10:43:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:48 +0100
Message-Id: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mmc: i.MX23/28 patches
To: barebox@lists.infradead.org

The following series cleans up the i.MX23/28 mmc driver.

Sascha Hauer (7):
      mci i.MX23/28: rename driver to mxs.c
      mci mxs: put only once used function inline
      mci mxs: give functions a uniq mxs_mci_ namespace
      mci mxs: rename mci_pdata to host
      mci mxs: make the mci_host a member of mxs_mci_host
      mci mxs: no need to call mxs_mci_setup_clock_speed in init
      ARM tx28stk5: limit mmc max frequency to 25MHz

 arch/arm/boards/chumby_falconwing/falconwing.c |    4 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c          |    7 +-
 arch/arm/mach-mxs/include/mach/mci.h           |    2 +-
 drivers/mci/Kconfig                            |    2 +-
 drivers/mci/Makefile                           |    2 +-
 drivers/mci/{stm378x.c => mxs.c}               |  266 +++++++++++-------------
 6 files changed, 135 insertions(+), 148 deletions(-)
 rename drivers/mci/{stm378x.c => mxs.c} (71%)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
