Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkU-0002cL-W9
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:48 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:05 +0200
Message-Id: <1287765924-1856-14-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 13/32] doc: fix typo
To: barebox@lists.infradead.org

Remove a # which leads to this warning:
arch/arm/mach-s3c24xx/lowlevel-init.S:307: Warning: explicit link request to 'CALC_NFCONF_TIMING' could not be resolved

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/mach-s3c24xx/lowlevel-init.S |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/lowlevel-init.S b/arch/arm/mach-s3c24xx/lowlevel-init.S
index e8004e5..27f3a32 100644
--- a/arch/arm/mach-s3c24xx/lowlevel-init.S
+++ b/arch/arm/mach-s3c24xx/lowlevel-init.S
@@ -304,7 +304,7 @@ minimalistic. Setup the NAND access timing is done in a safe manner, what
 means: Slowest possible values are used. If you want to increase the speed you
 should define the BOARD_DEFAULT_NAND_TIMING to a valid setting into the
 NFCONF register and add it to your board specific config.h. Refer S3C24x0's
-datasheet for further details. The macro #CALC_NFCONF_TIMING could help to
+datasheet for further details. The macro CALC_NFCONF_TIMING could help to
 calculate the register setting in a hardware independent manner.
 
 @note The regular NAND driver uses a platform data structure to define the
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
