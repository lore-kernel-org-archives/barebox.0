Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7ikG-0007Nc-2o
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 09:44:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Jan 2014 10:44:21 +0100
Message-Id: <1390815861-30321-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390815861-30321-1-git-send-email-s.hauer@pengutronix.de>
References: <1390815861-30321-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] reset_source: add reset_source_get
To: barebox@lists.infradead.org

To get reset_source from C code, not only from shell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/reset_source.c  | 10 ++++++++++
 include/reset_source.h |  6 ++++++
 2 files changed, 16 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index 3a11d26..6026af1 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -27,8 +27,18 @@ static const char * const reset_src_names[] = {
 	[RESET_JTAG] = "JTAG",
 };
 
+static enum reset_src_type reset_source;
+
+enum reset_src_type reset_source_get(void)
+{
+	return reset_source;
+}
+EXPORT_SYMBOL(reset_source_get);
+
 void reset_source_set(enum reset_src_type st)
 {
+	reset_source = st;
+
 	setenv("global.system.reset", reset_src_names[st]);
 }
 EXPORT_SYMBOL(reset_source_set);
diff --git a/include/reset_source.h b/include/reset_source.h
index f3a203a..bff7f97 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -24,10 +24,16 @@ enum reset_src_type {
 
 #ifdef CONFIG_RESET_SOURCE
 void reset_source_set(enum reset_src_type);
+enum reset_src_type reset_source_get(void);
 #else
 static inline void reset_source_set(enum reset_src_type unused)
 {
 }
+
+static inline enum reset_src_type reset_source_get(void)
+{
+	return RESET_UKWN;
+}
 #endif
 
 #endif /* __INCLUDE_RESET_SOURCE_H */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
