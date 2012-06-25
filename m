Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002O0-Qk
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:21 +0200
Message-Id: <1340645910-15668-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] qsort: declare strcmp_compar publically
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/qsort.h |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/qsort.h b/include/qsort.h
index bbb2359..d279dc2 100644
--- a/include/qsort.h
+++ b/include/qsort.h
@@ -4,4 +4,6 @@
 void qsort(void  *base, size_t nel, size_t width,
 	   int (*comp)(const void *, const void *));
 
+int strcmp_compar(const void *p1, const void *p2);
+
 #endif /* __QSORT_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
