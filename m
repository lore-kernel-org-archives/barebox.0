Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrlCp-0001x0-6s
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:36:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:35:14 +0200
Message-Id: <1372235714-5568-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mfd: mc34708: provide static inline wrapper
To: barebox@lists.infradead.org

If the driver is disabled provide a static inline wrapper for
mc34708_get() to prevent linker errors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mfd/mc34708.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/include/mfd/mc34708.h b/include/mfd/mc34708.h
index f384c62..541c47f 100644
--- a/include/mfd/mc34708.h
+++ b/include/mfd/mc34708.h
@@ -93,7 +93,14 @@ struct mc34708 {
 	unsigned int		revision;
 };
 
-extern struct mc34708 *mc34708_get(void);
+#ifdef CONFIG_MFD_MC34708
+struct mc34708 *mc34708_get(void);
+#else
+static inline struct mc34708 *mc34708_get(void)
+{
+	return NULL;
+}
+#endif
 
 extern int mc34708_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val);
 extern int mc34708_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
