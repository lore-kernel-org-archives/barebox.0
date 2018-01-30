Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egQMk-0008CU-JV
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 07:30:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 08:29:47 +0100
Message-Id: <20180130072947.5377-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] imd: Make all pointers into image const
To: Barebox List <barebox@lists.infradead.org>

The IMD code should be readonly and never modify any pointers. Make
all pointers const so that const pointers can be passed in to IMD.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c             |  4 ++--
 common/imd.c             | 27 ++++++++++++++-------------
 include/bbu.h            |  2 +-
 include/image-metadata.h | 21 +++++++++++----------
 4 files changed, 28 insertions(+), 26 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 3b372263b1..11e44f4a7d 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -159,7 +159,7 @@ static int bbu_check_of_compat(struct bbu_data *data)
 	struct device_node *root_node;
 	const char *machine, *str;
 	int ret;
-	struct imd_header *of_compat;
+	const struct imd_header *of_compat;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_IMD))
 		return 0;
@@ -191,7 +191,7 @@ static int bbu_check_of_compat(struct bbu_data *data)
 
 static int bbu_check_metadata(struct bbu_data *data)
 {
-	struct imd_header *imd;
+	const struct imd_header *imd;
 	int ret;
 	char *str;
 
diff --git a/common/imd.c b/common/imd.c
index a8a10fc9bb..05e118e773 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -35,7 +35,7 @@ int imd_command_setenv(const char *variable_name, const char *value)
  * imd_next - return a pointer to the next metadata field.
  * @imd		The current metadata field
  */
-struct imd_header *imd_next(struct imd_header *imd)
+const struct imd_header *imd_next(const struct imd_header *imd)
 {
 	int length;
 
@@ -43,10 +43,11 @@ struct imd_header *imd_next(struct imd_header *imd)
 	length = ALIGN(length, 4);
 	length += 8;
 
-	return (void *)imd + length;
+	return (const void *)imd + length;
 }
 
-struct imd_header *imd_find_type(struct imd_header *imd, uint32_t type)
+const struct imd_header *imd_find_type(const struct imd_header *imd,
+				       uint32_t type)
 {
 	imd_for_each(imd, imd)
 		if (imd_read_type(imd) == type)
@@ -55,10 +56,10 @@ struct imd_header *imd_find_type(struct imd_header *imd, uint32_t type)
 	return NULL;
 }
 
-static int imd_next_validate(void *buf, int bufsize, int start_ofs)
+static int imd_next_validate(const void *buf, int bufsize, int start_ofs)
 {
 	int length, size;
-	struct imd_header *imd = buf + start_ofs;
+	const struct imd_header *imd = buf + start_ofs;
 
 	size = bufsize - start_ofs;
 
@@ -82,10 +83,10 @@ static int imd_next_validate(void *buf, int bufsize, int start_ofs)
 	return length;
 }
 
-static int imd_validate_tags(void *buf, int bufsize, int start_ofs)
+static int imd_validate_tags(const void *buf, int bufsize, int start_ofs)
 {
 	int ret;
-	struct imd_header *imd = buf + start_ofs;
+	const struct imd_header *imd = buf + start_ofs;
 
 	while (1) {
 		uint32_t type;
@@ -122,7 +123,7 @@ static int imd_validate_tags(void *buf, int bufsize, int start_ofs)
  *
  * Return: a pointer to the image metadata or a ERR_PTR
  */
-struct imd_header *imd_get(void *buf, int size)
+const struct imd_header *imd_get(const void *buf, int size)
 {
 	int start_ofs = 0;
 	int i, ret;
@@ -206,7 +207,7 @@ static uint32_t imd_name_to_type(const char *name)
  *
  * Return: A pointer to the string or NULL if the string is not found
  */
-const char *imd_string_data(struct imd_header *imd, int index)
+const char *imd_string_data(const struct imd_header *imd, int index)
 {
 	int i, total = 0, l = 0;
 	int len = imd_read_length(imd);
@@ -233,7 +234,7 @@ const char *imd_string_data(struct imd_header *imd, int index)
  *
  * Return: A pointer to the string or NULL if the string is not found
  */
-char *imd_concat_strings(struct imd_header *imd)
+char *imd_concat_strings(const struct imd_header *imd)
 {
 	int i, len = imd_read_length(imd);
 	char *str;
@@ -266,9 +267,9 @@ char *imd_concat_strings(struct imd_header *imd)
  *
  * Return: A pointer to the value or NULL if the string is not found
  */
-const char *imd_get_param(struct imd_header *imd, const char *name)
+const char *imd_get_param(const struct imd_header *imd, const char *name)
 {
-	struct imd_header *cur;
+	const struct imd_header *cur;
 	int namelen = strlen(name);
 
 	imd_for_each(imd, cur) {
@@ -294,7 +295,7 @@ int imd_command(int argc, char *argv[])
 	void *buf;
 	size_t size;
 	uint32_t type = IMD_TYPE_INVALID;
-	struct imd_header *imd_start, *imd;
+	const struct imd_header *imd_start, *imd;
 	const char *filename;
 	const char *variable_name = NULL;
 	char *str;
diff --git a/include/bbu.h b/include/bbu.h
index 54434b03e0..a3824e11cf 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -16,7 +16,7 @@ struct bbu_data {
 	const char *devicefile;
 	size_t len;
 	const char *handler_name;
-	struct imd_header *imd_data;
+	const struct imd_header *imd_data;
 };
 
 struct bbu_handler {
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 0ba92469a4..8739bffb92 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -56,35 +56,36 @@ static inline int imd_type_valid(uint32_t type)
 	return (type & 0xffff0000) == 0x640c0000;
 }
 
-struct imd_header *imd_next(struct imd_header *imd);
+const struct imd_header *imd_next(const struct imd_header *imd);
 
 #define imd_for_each(start, imd) \
 	for (imd = imd_next(start); imd_read_type(imd) != IMD_TYPE_END; imd = imd_next(imd))
 
-static inline uint32_t imd_read_le32(void *_ptr)
+static inline uint32_t imd_read_le32(const void *_ptr)
 {
-	uint8_t *ptr = _ptr;
+	const uint8_t *ptr = _ptr;
 
 	return ptr[0] | (ptr[1] << 8) | (ptr[2] << 16) | (ptr[3] << 24);
 }
 
-static inline uint32_t imd_read_type(struct imd_header *imd)
+static inline uint32_t imd_read_type(const struct imd_header *imd)
 {
 	return imd_read_le32(&imd->type);
 }
 
-static inline uint32_t imd_read_length(struct imd_header *imd)
+static inline uint32_t imd_read_length(const struct imd_header *imd)
 {
 	return imd_read_le32(&imd->datalength);
 }
 
-struct imd_header *imd_find_type(struct imd_header *imd, uint32_t type);
+const struct imd_header *imd_find_type(const struct imd_header *imd,
+				       uint32_t type);
 
-struct imd_header *imd_get(void *buf, int size);
-const char *imd_string_data(struct imd_header *imd, int index);
+const struct imd_header *imd_get(const void *buf, int size);
+const char *imd_string_data(const struct imd_header *imd, int index);
 const char *imd_type_to_name(uint32_t type);
-char *imd_concat_strings(struct imd_header *imd);
-const char *imd_get_param(struct imd_header *imd, const char *name);
+char *imd_concat_strings(const struct imd_header *imd);
+const char *imd_get_param(const struct imd_header *imd, const char *name);
 
 extern int imd_command_verbose;
 int imd_command_setenv(const char *variable_name, const char *value);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
