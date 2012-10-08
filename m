Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLB8d-0008Jg-9H
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 11:04:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 13:04:39 +0200
Message-Id: <1349694280-31594-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] reset_source: provide static inline function if disabled
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/reset_source.h |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/reset_source.h b/include/reset_source.h
index 6734fbde..75e7ba8 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -22,6 +22,12 @@ enum reset_src_type {
 	RESET_JTAG,	/* JTAG reset */
 };
 
+#ifdef CONFIG_RESET_SOURCE
 void set_reset_source(enum reset_src_type);
+#else
+static inline void set_reset_source(enum reset_src_type unused)
+{
+}
+#endif
 
 #endif /* __INCLUDE_RESET_SOURCE_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
