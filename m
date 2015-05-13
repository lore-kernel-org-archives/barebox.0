Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsWDd-0003NL-Pt
 for barebox@lists.infradead.org; Wed, 13 May 2015 12:57:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 13 May 2015 14:56:22 +0200
Message-Id: <1431521784-27413-1-git-send-email-s.trumtrar@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] Socfpga: Sequencer updates
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This updates the socfpga_get_sequencer script to handle the new
Quartus 15.0 generated sources.
Luckily the real changes in the code are very minor, so the patch
mostly just removes TCL/ALTERA macros that are useless for barebox.

(Boot)Tested on Sockit/Socrates.

Regards,
Steffen

Steffen Trumtrar (2):
  scripts: update socfpga_sequencer importer for Quartus 15.0
  ARM: socfpga: update sdram calibration to 15.0

 arch/arm/mach-socfpga/include/mach/sequencer.c | 293 +++++--------------------
 arch/arm/mach-socfpga/include/mach/sequencer.h |   2 +
 scripts/coccinelle/misc/altera_sequencer.cocci |   3 +-
 scripts/socfpga_get_sequencer                  |   8 +
 scripts/socfpga_sequencer_defines_defaults     |   4 +
 5 files changed, 75 insertions(+), 235 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
