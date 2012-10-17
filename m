Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOa6X-0007uq-Pz
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 20:20:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 22:20:32 +0200
Message-Id: <1350505234-29464-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
References: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mips: remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/include/asm/mipsregs.h |    3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 87c48ed..608f19b 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -566,7 +566,6 @@ do {									\
 #define __read_64bit_c0_split(source, sel)				\
 ({									\
 	unsigned long long __val;					\
-	unsigned long __flags;						\
 									\
 	if (sel == 0)							\
 		__asm__ __volatile__(					\
@@ -592,8 +591,6 @@ do {									\
 
 #define __write_64bit_c0_split(source, sel, val)			\
 do {									\
-	unsigned long __flags;						\
-									\
 	if (sel == 0)							\
 		__asm__ __volatile__(					\
 			".set\tmips64\n\t"				\
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
