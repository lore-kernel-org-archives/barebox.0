Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMp-00065b-Un
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:52 +0200
Message-Id: <1459241454-21155-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] imd: export functions
To: Barebox List <barebox@lists.infradead.org>

To make the image metadata API usable for external users export
some functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c             | 30 +++++++++++++++++++++++++++---
 include/image-metadata.h |  5 +++++
 2 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index 318980b..06822bb 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -169,7 +169,13 @@ static struct imd_type_names imd_types[] = {
 	},
 };
 
-static const char *imd_type_to_name(uint32_t type)
+/**
+ * imd_type_to_name - convert a imd type to a name
+ * @type: The imd type
+ *
+ * This function returns a string representation of the imd type
+ */
+const char *imd_type_to_name(uint32_t type)
 {
 	int i;
 
@@ -191,7 +197,16 @@ static uint32_t imd_name_to_type(const char *name)
 	return IMD_TYPE_INVALID;
 }
 
-static const char *imd_string_data(struct imd_header *imd, int index)
+/**
+ * imd_string_data - get string data
+ * @imd: The IMD entry
+ * @index: The index of the string
+ *
+ * This function returns the string in @imd indexed by @index.
+ *
+ * Return: A pointer to the string or NULL if the string is not found
+ */
+const char *imd_string_data(struct imd_header *imd, int index)
 {
 	int i, total = 0, l = 0;
 	int len = imd_read_length(imd);
@@ -209,7 +224,16 @@ static const char *imd_string_data(struct imd_header *imd, int index)
 	return NULL;
 }
 
-static char *imd_concat_strings(struct imd_header *imd)
+/**
+ * imd_concat_strings - get string data
+ * @imd: The IMD entry
+ *
+ * This function returns the concatenated strings in @imd. The string
+ * returned is allocated with malloc() and the caller has to free() it.
+ *
+ * Return: A pointer to the string or NULL if the string is not found
+ */
+char *imd_concat_strings(struct imd_header *imd)
 {
 	int i, len = imd_read_length(imd);
 	char *str;
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 34dae5c..33ca9c6 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -80,6 +80,11 @@ static inline uint32_t imd_read_length(struct imd_header *imd)
 
 struct imd_header *imd_find_type(struct imd_header *imd, uint32_t type);
 
+struct imd_header *imd_get(void *buf, int size);
+const char *imd_string_data(struct imd_header *imd, int index);
+const char *imd_type_to_name(uint32_t type);
+char *imd_concat_strings(struct imd_header *imd);
+
 extern int imd_command_verbose;
 int imd_command_setenv(const char *variable_name, const char *value);
 int imd_command(int argc, char *argv[]);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
