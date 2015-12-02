Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a47me-0001Qp-O6
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 13:49:26 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  2 Dec 2015 14:48:44 +0100
Message-Id: <1449064131-12659-3-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 2/9] log2: Add missing __rounddown_pow_of_two()
To: barebox@lists.infradead.org

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/linux/log2.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index d9913f06bd09..36519e3aa38b 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -63,6 +63,15 @@ unsigned long __roundup_pow_of_two(unsigned long n)
 	return 1UL << fls(n - 1);
 }
 
+/*
+ * round down to nearest power of two
+ */
+static inline __attribute__((const))
+unsigned long __rounddown_pow_of_two(unsigned long n)
+{
+	return 1UL << (fls_long(n) - 1);
+}
+
 /**
  * ilog2 - log of base 2 of 32-bit or a 64-bit unsigned value
  * @n - parameter
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
