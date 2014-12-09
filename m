Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00086I-5c
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:31 +0100
Message-Id: <1418151816-24593-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] ARM: Add get_sp() and get_lr() functions
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

In case it's needed for some early code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/common.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index 133bb8e..9ff3b19 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -16,6 +16,32 @@ static inline unsigned long get_pc(void)
 	return pc;
 }
 
+static inline unsigned long get_lr(void)
+{
+	unsigned long lr;
+
+	__asm__ __volatile__(
+                "mov    %0, lr\n"
+                : "=r" (lr)
+                :
+                : "memory");
+
+	return lr;
+}
+
+static inline unsigned long get_sp(void)
+{
+	unsigned long sp;
+
+	__asm__ __volatile__(
+                "mov    %0, sp\n"
+                : "=r" (sp)
+                :
+                : "memory");
+
+	return sp;
+}
+
 static inline void arm_setup_stack(unsigned long top)
 {
 	__asm__ __volatile__("mov sp, %0" : : "r"(top));
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
