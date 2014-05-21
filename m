Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnE89-0001PV-GN
 for barebox@lists.infradead.org; Wed, 21 May 2014 21:32:57 +0000
Received: by mail-we0-f170.google.com with SMTP id u57so2655864wes.29
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 14:32:35 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 21 May 2014 23:32:27 +0200
Message-Id: <1400707949-16521-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/3] openrisc: update SPR registers definition
To: barebox@lists.infradead.org

The OpenRISC architecture specification v1.0 defines
new SPR registers. This patch adds registers definition
for group 0 and update bit definitions for the CPU
configuration register.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/include/asm/spr-defs.h |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/arch/openrisc/include/asm/spr-defs.h b/arch/openrisc/include/asm/spr-defs.h
index cb0cdfa..b3b08db 100644
--- a/arch/openrisc/include/asm/spr-defs.h
+++ b/arch/openrisc/include/asm/spr-defs.h
@@ -49,6 +49,11 @@
 #define SPR_ICCFGR	(SPRGROUP_SYS + 6)
 #define SPR_DCFGR	(SPRGROUP_SYS + 7)
 #define SPR_PCCFGR	(SPRGROUP_SYS + 8)
+#define SPR_VR2		(SPRGROUP_SYS + 9)
+#define SPR_AVR		(SPRGROUP_SYS + 10)
+#define SPR_EVBAR	(SPRGROUP_SYS + 11)
+#define SPR_AECR	(SPRGROUP_SYS + 12)
+#define SPR_AESR	(SPRGROUP_SYS + 13)
 #define SPR_NPC		(SPRGROUP_SYS + 16)
 #define SPR_SR		(SPRGROUP_SYS + 17)
 #define SPR_PPC		(SPRGROUP_SYS + 18)
@@ -164,7 +169,13 @@
 #define SPR_CPUCFGR_OF32S	0x00000080 /* ORFPX32 supported */
 #define SPR_CPUCFGR_OF64S	0x00000100 /* ORFPX64 supported */
 #define SPR_CPUCFGR_OV64S	0x00000200 /* ORVDX64 supported */
-#define SPR_CPUCFGR_RES		0xfffffc00 /* Reserved */
+#define SPR_CPUCFGR_ND		0x00000400 /* No delay slot */
+#define SPR_CPUCFGR_AVRP	0x00000800 /* Arch. Version Register present */
+#define SPR_CPUCFGR_EVBARP	0x00001000 /* Exception Vector Base Address Register (EVBAR) present */
+#define SPR_CPUCFGR_ISRP	0x00002000 /* Implementation-Specific Registers (ISR0-7) present */
+#define SPR_CPUCFGR_AECSRP	0x00004000 /* Arithmetic Exception Control Register (AECR) and */
+					   /* Arithmetic Exception Status Register (AESR) presents */
+#define SPR_CPUCFGR_RES		0xffffc000 /* Reserved */
 
 /*
  * Bit definitions for the Debug configuration register and other
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
