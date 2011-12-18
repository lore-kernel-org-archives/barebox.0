Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from svenfoo.org ([82.94.215.22] helo=mail.zonque.de)
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcO6D-0006Fn-Cm
 for barebox@lists.infradead.org; Sun, 18 Dec 2011 21:16:50 +0000
From: Daniel Mack <zonque@gmail.com>
Date: Sun, 18 Dec 2011 22:16:22 +0100
Message-Id: <1324242982-29919-1-git-send-email-zonque@gmail.com>
In-Reply-To: <1324235162-25587-1-git-send-email-zonque@gmail.com>
References: <1324235162-25587-1-git-send-email-zonque@gmail.com>
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
Subject: [PATCH v2] omap3: add register definitions for chip die ID
To: barebox@lists.infradead.org

Signed-off-by: Daniel Mack <zonque@gmail.com>
---

the previous version had a copy'n paste error. sorry.

 arch/arm/mach-omap/include/mach/omap3-silicon.h |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 67f7747..361d25e 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -115,6 +115,10 @@
 /** Gives the silicon revision */
 #define OMAP_TAP_BASE		(OMAP_L4_WKUP_BASE + 0xA000)
 #define IDCODE_REG		(OMAP_TAP_BASE + 0x204)
+#define DIE_ID_0		(OMAP_TAP_BASE + 0x218)
+#define DIE_ID_1		(OMAP_TAP_BASE + 0x21c)
+#define DIE_ID_2		(OMAP_TAP_BASE + 0x220)
+#define DIE_ID_3		(OMAP_TAP_BASE + 0x224)
 
 /** Masks to extract information from ID code register */
 #define IDCODE_HAWKEYE_MASK	0x0FFFF000
-- 
1.7.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
