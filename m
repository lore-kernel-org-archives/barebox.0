Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eikam-0005so-Kt
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 17:30:10 +0000
Received: by mail-pg0-x244.google.com with SMTP id x25so6516344pge.3
 for <barebox@lists.infradead.org>; Mon, 05 Feb 2018 09:29:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Feb 2018 09:29:34 -0800
Message-Id: <20180205172935.25232-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180205172935.25232-1-andrew.smirnov@gmail.com>
References: <20180205172935.25232-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] linux/font.h: Stub out font functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Stub out font-related funtions functions so as to avoid having to
ifdef the code using them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/font.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/include/linux/font.h b/include/linux/font.h
index feeab9719..9b3699ba8 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -30,6 +30,8 @@ struct font_desc {
 /* Max. length for the name of a predefined font */
 #define MAX_FONT_NAME	32
 
+#ifdef CONFIG_FONTS
+
 extern int find_font_index(const struct font_desc *font, int ch);
 extern const struct font_desc *find_font_enum(int n);
 extern struct param_d *add_param_font(struct device_d *dev,
@@ -39,4 +41,32 @@ extern struct param_d *add_param_font(struct device_d *dev,
 
 int font_register(struct font_desc *font);
 
+#else
+
+static inline int find_font_index(const struct font_desc *font, int ch)
+{
+	return -ENOTSUPP;
+}
+
+static inline const struct font_desc *find_font_enum(int n)
+{
+	return NULL;
+}
+
+static inline struct param_d *
+add_param_font(struct device_d *dev,
+	       int (*set)(struct param_d *p, void *priv),
+	       int (*get)(struct param_d *p, void *priv),
+	       int *value, void *priv)
+{
+	return NULL;
+}
+
+static inline int font_register(struct font_desc *font)
+{
+	return -ENOTSUPP;
+}
+
+#endif
+
 #endif /* _VIDEO_FONT_H */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
