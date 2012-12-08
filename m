Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThNjO-0002O8-LK
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 16:58:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  8 Dec 2012 17:58:19 +0100
Message-Id: <1354985902-11317-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
References: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM startup: Ensure CR_A flag is cleared on architectures
 >= ARMv6
To: barebox@lists.infradead.org

We allow unaligned accesses on ARMv6 onwards, make sure the CR_A
flag is cleared so that unaligned accesses do not trap.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index eafad4e..bf00ff0 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -22,6 +22,7 @@ static inline void common_reset(void)
 
 #if __LINUX_ARM_ARCH__ >= 6
 	r |= CR_U;
+	r &= CR_A;
 #else
 	r |= CR_A;
 #endif
@@ -91,6 +92,7 @@ static inline void barebox_arm_head(void)
 
 #if __LINUX_ARM_ARCH__ >= 6
 	orr	\scratch, \scratch, #CR_U
+	bic	\scratch, \scratch, #CR_A
 #else
 	orr	\scratch, \scratch, #CR_A
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
