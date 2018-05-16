Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2tB-0008Cq-52
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:19:11 +0000
Received: by mail-pf0-x231.google.com with SMTP id a20-v6so914026pfo.0
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:18:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:18:25 -0700
Message-Id: <20180516201827.6430-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180516201827.6430-1-andrew.smirnov@gmail.com>
References: <20180516201827.6430-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/4] bootsource: Add bootsource alias name API
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add API allowing to query and override the name of the alias pointing
at DTB node representing current bootsource.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bootsource.c  | 74 ++++++++++++++++++++++++++++++++++++++++++++
 include/bootsource.h |  2 ++
 2 files changed, 76 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 78ecd8267..ed435c051 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -41,6 +41,80 @@ static const char *bootsource_str[] = {
 
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
+	int instance = bootsource_instance;
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
+	if (bootsource >= ARRAY_SIZE(bootsource_str) ||
+	    bootsource == BOOTSOURCE_UNKNOWN)
+		return NULL;
+
+	switch (bootsource) {
+	case BOOTSOURCE_I2C_EEPROM: /* FALLTHROUGH */
+	case BOOTSOURCE_SPI_EEPROM:
+		/*
+		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
+		 * and 'spi' correspondingly. The resulting alias will
+		 * be pointing at the controller said EEPROM is
+		 * attached to.
+		 *
+		 * NOTE: This code assumes single bootable EEPROM per
+		 * controller
+		 */
+		BUILD_BUG_ON(BOOTSOURCE_SPI != BOOTSOURCE_SPI_EEPROM - 1);
+		BUILD_BUG_ON(BOOTSOURCE_I2C != BOOTSOURCE_I2C_EEPROM - 1);
+
+		stem = bootsource_str[bootsource - 1];
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
+	 * Assume 0 if instance was not specified by bootsource
+	 * detection code.
+	 */
+	if (instance == BOOTSOURCE_INSTANCE_UNKNOWN)
+		instance = 0;
+
+	return basprintf("%s%d", stem, instance);
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
