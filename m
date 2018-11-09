Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hT-Bq
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:28 +0100
Message-Id: <20181109095246.15068-3-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 02/20] ARM: psci: Avoid missing prototypes warning
To: Barebox List <barebox@lists.infradead.org>

Avoid missing prototypes warning by adding prototypes. Since these
functions are called from assembly add the prototypes to the C file
directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/psci.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 1c8197aa3f..c4c8c64cbe 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -156,6 +156,10 @@ static unsigned long psci_system_reset(void)
 	restart_machine();
 }
 
+/* Avoid missing prototype warning, called from assembly */
+void psci_entry(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 r5, u32 r6,
+		struct arm_smccc_res *res);
+
 void psci_entry(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 r5, u32 r6,
 		struct arm_smccc_res *res)
 {
@@ -209,6 +213,9 @@ static int of_psci_fixup(struct device_node *root, void *unused)
 	return 0;
 }
 
+/* Avoid missing prototype warning, called from assembly */
+int psci_cpu_entry_c(void);
+
 int psci_cpu_entry_c(void)
 {
 	void (*entry)(u32 context);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
