Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7E-0003gm-00
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:39:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:47 +0100
Message-Id: <1363282729-18545-9-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 08/10] bootsource: add support for bootsource instance
 information
To: barebox@lists.infradead.org

Add a C interface to set and get the bootsource instance:

    int bootsource_get_instance(void);
    void bootsource_set_instance(int instance);

Also export the shell variable "barebox_loc_instance".

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/bootsource.c  | 20 ++++++++++++++++++++
 include/bootsource.h |  2 ++
 2 files changed, 22 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index ebe4407..fae554d 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -34,6 +34,7 @@ static const char *bootsource_str[] = {
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
+static int bootsource_instance = 0;
 
 void bootsource_set(enum bootsource src)
 {
@@ -45,6 +46,16 @@ void bootsource_set(enum bootsource src)
 	setenv("barebox_loc", bootsource_str[src]);
 }
 
+void bootsource_set_instance(int instance)
+{
+	char buf[32];
+
+	bootsource_instance = instance;
+	snprintf(buf, sizeof(buf), "%d", instance);
+
+	setenv("barebox_loc_instance", buf);
+}
+
 enum bootsource bootsource_get(void)
 {
 	return bootsource;
@@ -52,10 +63,19 @@ enum bootsource bootsource_get(void)
 
 BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
 
+int bootsource_get_instance(void)
+{
+	return bootsource_instance;
+}
+
+BAREBOX_MAGICVAR(barebox_loc_instance, "The instance of the source barebox has been booted from");
+
 static int bootsource_init(void)
 {
 	bootsource_set(bootsource);
+	bootsource_set_instance(bootsource_instance);
 	export("barebox_loc");
+	export("barebox_loc_instance");
 
 	return 0;
 }
diff --git a/include/bootsource.h b/include/bootsource.h
index ecd5938..dfcad49 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -14,6 +14,8 @@ enum bootsource {
 };
 
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
