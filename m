Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmLA8-0000Sr-SF
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 11:23:38 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XmL9l-0008A1-FX
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 12:23:13 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Nov 2014 12:23:12 +0100
Message-Id: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: implement recommended WAR for errata 709718
To: barebox@lists.infradead.org

ARM Cortex A8 errata 709718:
"Load and store operations to shared device memory
regions may not complete in program order"

We implement the recommended workaround in the bootloader
as it must be applied before enabling the MMU for the
first time.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/errata.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
index e2ffd87360c0..9525823e4ca8 100644
--- a/arch/arm/include/asm/errata.h
+++ b/arch/arm/include/asm/errata.h
@@ -12,6 +12,18 @@
  * GNU General Public License for more details.
  */
 
+static inline void enable_arm_errata_709718_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c10, c2, 0\n"
+		"bic	r0, #3 << 16\n"
+		"mcr	p15, 0, r0, c10, c2, 0\n"
+		"mrc	p15, 0, r0, c1, c0, 0\n"
+		"orr	r0, r0, #1 << 28\n"
+		"mcr	p15, 0, r0, c1, c0, 0\n"
+	);
+}
+
 static inline void enable_arm_errata_716044_war(void)
 {
 	__asm__ __volatile__ (
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
