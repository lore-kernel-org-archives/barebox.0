Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2LfL-0006HB-5c
 for barebox@lists.infradead.org; Mon, 16 May 2016 16:46:47 +0000
Received: by mail-pf0-x242.google.com with SMTP id g132so16217269pfb.3
 for <barebox@lists.infradead.org>; Mon, 16 May 2016 09:46:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 May 2016 09:45:58 -0700
Message-Id: <1463417161-28634-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
References: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 3/6] syscon: Do not return NULL when driver is not selected
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both syscon_base_lookup_by_pdevname() and
syscon_base_lookup_by_phandle(), when implemented, do not return NULL,
so none of the code using those function is written to check for that.

Change returns to ERR_PTR(-ENOSYS), to avoid having that problem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/mfd/syscon.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index 2044520..651d4c2 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -21,13 +21,13 @@ void __iomem *syscon_base_lookup_by_phandle
 #else
 static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 #endif
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
