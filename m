Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gi-0006zo-4e
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:28 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:08 +0200
Message-Id: <20200602085412.16554-22-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 21/25] include: bitops: fix dead increment in fls() and
 ffs()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Static analyzers trip over this dead increment. It arguably
doesn't improve readability, so just drop the dead code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bitops/ffs.h | 4 +---
 include/asm-generic/bitops/fls.h | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/include/asm-generic/bitops/ffs.h b/include/asm-generic/bitops/ffs.h
index fbbb43af7dc0..0ff1b8b7c79a 100644
--- a/include/asm-generic/bitops/ffs.h
+++ b/include/asm-generic/bitops/ffs.h
@@ -31,10 +31,8 @@ static inline int ffs(int x)
 		x >>= 2;
 		r += 2;
 	}
-	if (!(x & 1)) {
-		x >>= 1;
+	if (!(x & 1))
 		r += 1;
-	}
 	return r;
 }
 
diff --git a/include/asm-generic/bitops/fls.h b/include/asm-generic/bitops/fls.h
index 850859bc5069..cc0d3ca95aaa 100644
--- a/include/asm-generic/bitops/fls.h
+++ b/include/asm-generic/bitops/fls.h
@@ -31,10 +31,8 @@ static inline int fls(int x)
 		x <<= 2;
 		r -= 2;
 	}
-	if (!(x & 0x80000000u)) {
-		x <<= 1;
+	if (!(x & 0x80000000u))
 		r -= 1;
-	}
 	return r;
 }
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
