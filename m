Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l0-0008RE-4G
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:36 +0200
Message-Id: <20200511072140.29610-20-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 19/23] include: bitops: fix dead increment in fls() and ffs()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Static analyzers trip over this and a comment is as descriptive,
thus replace the dead code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bitops/ffs.h | 2 +-
 include/asm-generic/bitops/fls.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/bitops/ffs.h b/include/asm-generic/bitops/ffs.h
index fbbb43af7dc0..afc2d7b2d19f 100644
--- a/include/asm-generic/bitops/ffs.h
+++ b/include/asm-generic/bitops/ffs.h
@@ -32,7 +32,7 @@ static inline int ffs(int x)
 		r += 2;
 	}
 	if (!(x & 1)) {
-		x >>= 1;
+		/* x >>= 1; */
 		r += 1;
 	}
 	return r;
diff --git a/include/asm-generic/bitops/fls.h b/include/asm-generic/bitops/fls.h
index 850859bc5069..9d5d26a3bbdf 100644
--- a/include/asm-generic/bitops/fls.h
+++ b/include/asm-generic/bitops/fls.h
@@ -32,7 +32,7 @@ static inline int fls(int x)
 		r -= 2;
 	}
 	if (!(x & 0x80000000u)) {
-		x <<= 1;
+		/* x <<= 1; */
 		r -= 1;
 	}
 	return r;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
