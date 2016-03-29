Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMu-00065z-Uc
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:53 +0200
Message-Id: <1459241454-21155-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
References: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] imd: Add function to read parameters
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c             | 31 +++++++++++++++++++++++++++++++
 include/image-metadata.h |  1 +
 2 files changed, 32 insertions(+)

diff --git a/common/imd.c b/common/imd.c
index 06822bb..4b22f41 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -255,6 +255,37 @@ char *imd_concat_strings(struct imd_header *imd)
 	return str;
 }
 
+/**
+ * imd_get_param - get a parameter
+ * @imd: The IMD entry
+ * @name: The name of the parameter.
+ *
+ * Parameters have the IMD type IMD_TYPE_PARAMETER and the form
+ * "key=value". This function iterates over the IMD entries and when
+ * it finds a parameter with name "key" it returns the value found.
+ *
+ * Return: A pointer to the value or NULL if the string is not found
+ */
+const char *imd_get_param(struct imd_header *imd, const char *name)
+{
+	struct imd_header *cur;
+	int namelen = strlen(name);
+
+	imd_for_each(imd, cur) {
+		char *data = (char *)(cur + 1);
+
+		if (cur->type != IMD_TYPE_PARAMETER)
+			continue;
+		if (strncmp(name, data, namelen))
+			continue;
+		if (data[namelen] != '=')
+			continue;
+		return data + namelen + 1;
+	}
+
+	return NULL;
+}
+
 int imd_command_verbose;
 
 int imd_command(int argc, char *argv[])
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 33ca9c6..0ba9246 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -84,6 +84,7 @@ struct imd_header *imd_get(void *buf, int size);
 const char *imd_string_data(struct imd_header *imd, int index);
 const char *imd_type_to_name(uint32_t type);
 char *imd_concat_strings(struct imd_header *imd);
+const char *imd_get_param(struct imd_header *imd, const char *name);
 
 extern int imd_command_verbose;
 int imd_command_setenv(const char *variable_name, const char *value);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
