Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIns-0007kF-Al
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:12:22 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  3 Apr 2013 10:12:13 +0200
Message-Id: <1364976736-23869-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
References: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 4/7] bootsource: add support for bootsource instance
 information
To: barebox@lists.infradead.org

Add a C interface to set and get the bootsource instance:

    int bootsource_get_instance(void);
    void bootsource_set_instance(int instance);

Also export the shell variable "bootsource_instance".

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootsource.c  | 24 ++++++++++++++++++++++++
 include/bootsource.h |  4 ++++
 2 files changed, 28 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 5f1d40c..7367215 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -34,6 +34,7 @@ static const char *bootsource_str[] = {
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
+static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 
 void bootsource_set(enum bootsource src)
 {
@@ -45,6 +46,20 @@ void bootsource_set(enum bootsource src)
 	setenv("bootsource", bootsource_str[src]);
 }
 
+void bootsource_set_instance(int instance)
+{
+	char buf[32];
+
+	bootsource_instance = instance;
+
+	if (instance < 0)
+		sprintf(buf, "unknown");
+	else
+		snprintf(buf, sizeof(buf), "%d", instance);
+
+	setenv("bootsource_instance", buf);
+}
+
 enum bootsource bootsource_get(void)
 {
 	return bootsource;
@@ -52,10 +67,19 @@ enum bootsource bootsource_get(void)
 
 BAREBOX_MAGICVAR(bootsource, "The source barebox has been booted from");
 
+int bootsource_get_instance(void)
+{
+	return bootsource_instance;
+}
+
+BAREBOX_MAGICVAR(bootsource_instance, "The instance of the source barebox has been booted from");
+
 static int bootsource_init(void)
 {
 	bootsource_set(bootsource);
+	bootsource_set_instance(bootsource_instance);
 	export("bootsource");
+	export("bootsource_instance");
 
 	return 0;
 }
diff --git a/include/bootsource.h b/include/bootsource.h
index ecd5938..44b69b1 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -13,7 +13,11 @@ enum bootsource {
 	BOOTSOURCE_HD,
 };
 
+#define BOOTSOURCE_INSTANCE_UNKNOWN	-1
+
 enum bootsource bootsource_get(void);
+int bootsource_get_instance(void);
 void bootsource_set(enum bootsource src);
+void bootsource_set_instance(int instance);
 
 #endif	/* __BOOTSOURCE_H__ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
