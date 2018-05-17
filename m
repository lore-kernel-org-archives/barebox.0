Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x235.google.com ([2607:f8b0:400e:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJQSs-00059A-Dl
 for barebox@lists.infradead.org; Thu, 17 May 2018 21:29:36 +0000
Received: by mail-pl0-x235.google.com with SMTP id bi12-v6so3276202plb.12
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 14:29:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 14:29:15 -0700
Message-Id: <20180517212917.3628-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180517212917.3628-1-andrew.smirnov@gmail.com>
References: <20180517212917.3628-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 2/4] bootsource: Add bootsource alias name API
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add API allowing to query and override the name of the alias pointing
at DTB node representing current bootsource.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bootsource.c  | 68 ++++++++++++++++++++++++++++++++++++++++++++
 include/bootsource.h |  2 ++
 2 files changed, 70 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 78ecd8267..e68338faa 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -41,6 +41,74 @@ static const char *bootsource_str[] = {
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
 static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+const char *bootsource_alias_name = NULL;
+
+/**
+ * bootsource_get_alias_name() - Get the name of the bootsource alias
+ *
+ * This function will return newly allocated string containing name of
+ * the alias that is expected to point to DTB node corresponding to
+ * detected bootsource
+ *
+ * NOTE: Caller is expected to free() the string allocated by this
+ * function
+ */
+char *bootsource_get_alias_name(void)
+{
+	const char *stem;
+
+	/*
+	 * If alias name was overridden via
+	 * bootsource_set_alias_name() return that value without
+	 * asking any questions.
+	 *
+	 * Note that we have to strdup() the result to make it
+	 * free-able.
+	 */
+	if (bootsource_alias_name)
+		return strdup(bootsource_alias_name);
+
+	switch (bootsource) {
+		/*
+		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
+		 * and 'spi' correspondingly. The resulting alias will
+		 * be pointing at the controller said EEPROM is
+		 * attached to.
+		 *
+		 * NOTE: This code assumes single bootable EEPROM per
+		 * controller
+		 */
+	case BOOTSOURCE_I2C_EEPROM:
+		stem = bootsource_str[BOOTSOURCE_I2C];
+		break;
+	case BOOTSOURCE_SPI_EEPROM:
+		stem = bootsource_str[BOOTSOURCE_SPI];
+		break;
+	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
+	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
+	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
+	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
+	case BOOTSOURCE_CAN:
+		stem = bootsource_str[bootsource];
+		break;
+	default:
+		return NULL;
+	}
+
+	/*
+	 * We expect SoC specific bootsource detction code to properly
+	 * initalize bootsource_instance, so we bail out if it didn't
+	 */
+	if (bootsource_instance == BOOTSOURCE_INSTANCE_UNKNOWN)
+		return NULL;
+
+	return basprintf("%s%d", stem, bootsource_instance);
+}
+
+void bootsource_set_alias_name(const char *name)
+{
+	bootsource_alias_name = name;
+}
 
 void bootsource_set(enum bootsource src)
 {
diff --git a/include/bootsource.h b/include/bootsource.h
index 064f6b9a2..29347aaeb 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -25,5 +25,7 @@ enum bootsource bootsource_get(void);
 int bootsource_get_instance(void);
 void bootsource_set(enum bootsource src);
 void bootsource_set_instance(int instance);
+void bootsource_set_alias_name(const char *name);
+char *bootsource_get_alias_name(void);
 
 #endif	/* __BOOTSOURCE_H__ */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
