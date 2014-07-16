Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7KjA-0000m2-NJ
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:38:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Jul 2014 10:37:53 +0200
Message-Id: <1405499873-6385-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
References: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ppc: Add missing __ffs implementation
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/bitops.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index 74f7f6d..c4ed2de 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -153,6 +153,11 @@ extern __inline__ int ffz(unsigned int x)
 	return __ilog2(x & -x);
 }
 
+static __inline__ int __ffs(unsigned long x)
+{
+	return __ilog2(x & -x);
+}
+
 /*
  * fls: find last (most-significant) bit set.
  * Note fls(0) = 0, fls(1) = 1, fls(0x80000000) = 32.
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
