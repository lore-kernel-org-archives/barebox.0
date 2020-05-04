Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc2N-0003Lh-Ou
 for barebox@lists.infradead.org; Mon, 04 May 2020 14:25:48 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  4 May 2020 23:24:53 +0900
Message-Id: <20200504142455.404658-2-masahiroy@kernel.org>
In-Reply-To: <20200504142455.404658-1-masahiroy@kernel.org>
References: <20200504142455.404658-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/4] common.h: move and rename lregion_overlap()
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

lregion_overlap() is only used by common/startup.c

There is no need to define it in include/common.h

While I was here, I also renamed it to region_overlap(), and got rid
of the 'inline' keyword.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 common/startup.c | 14 ++++++++++++--
 include/common.h | 14 --------------
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 2c3a999e1..511675ed5 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -74,6 +74,16 @@ fs_initcall(mount_root);
 #endif
 
 #ifdef CONFIG_ENV_HANDLING
+static bool region_overlap(loff_t starta, loff_t lena,
+			   loff_t startb, loff_t lenb)
+{
+	if (starta + lena <= startb)
+		return 0;
+	if (startb + lenb <= starta)
+		return 0;
+	return 1;
+}
+
 static int check_overlap(const char *path)
 {
 	struct cdev *cenv, *cdisk, *cpart;
@@ -104,8 +114,8 @@ static int check_overlap(const char *path)
 		if (cpart == cenv)
 			continue;
 
-		if (lregion_overlap(cpart->offset, cpart->size,
-				    cenv->offset, cenv->size))
+		if (region_overlap(cpart->offset, cpart->size,
+				   cenv->offset, cenv->size))
 			goto conflict;
 	}
 
diff --git a/include/common.h b/include/common.h
index 3570e6aba..0bf819a6f 100644
--- a/include/common.h
+++ b/include/common.h
@@ -139,18 +139,4 @@ void barebox_set_hostname_no_overwrite(const char *);
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
 
-/*
- * Check if two regions overlap. returns true if they do, false otherwise
- */
-
-static inline bool lregion_overlap(loff_t starta, loff_t lena,
-				   loff_t startb, loff_t lenb)
-{
-	if (starta + lena <= startb)
-		return 0;
-	if (startb + lenb <= starta)
-		return 0;
-	return 1;
-}
-
 #endif	/* __COMMON_H_ */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
