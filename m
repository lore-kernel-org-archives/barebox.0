Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKB1Z-0001gy-1B
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 16:45:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 18:45:03 +0200
Message-Id: <1349455505-31731-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] introduce region_overlap() function
To: barebox@lists.infradead.org

To check if two regions overlap

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/common.h b/include/common.h
index c1f44b4..e30774a 100644
--- a/include/common.h
+++ b/include/common.h
@@ -256,4 +256,17 @@ static inline void barebox_banner(void) {}
 		(__x < 0) ? -__x : __x;         \
 	})
 
+/*
+ * Check if two regions overlap. returns true if they do, false otherwise
+ */
+static inline bool region_overlap(unsigned long starta, unsigned long lena,
+		unsigned long startb, unsigned long lenb)
+{
+	if (starta + lena <= startb)
+		return 0;
+	if (startb + lenb <= starta)
+		return 0;
+	return 1;
+}
+
 #endif	/* __COMMON_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
