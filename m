Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMp-00065Z-Ud
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:48 +0200
Message-Id: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] imd: use struct imd_header * as argument
To: Barebox List <barebox@lists.infradead.org>

imd_concat_strings() and imd_string_data() are easier to handle when
they take a struct imd_header * instead of a struct imd_entry_string *.
Change this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index f84e344..acaa23f 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -193,11 +193,14 @@ static uint32_t imd_name_to_type(const char *name)
 	return IMD_TYPE_INVALID;
 }
 
-static char *imd_string_data(struct imd_entry_string *imd_string, int index)
+static char *imd_string_data(struct imd_header *imd, int index)
 {
 	int i, total = 0, l = 0;
-	int len = imd_read_length(&imd_string->header);
-	char *p = imd_string->data;
+	int len = imd_read_length(imd);
+	char *p = (char *)(imd + 1);
+
+	if (!imd_is_string(imd->type))
+		return NULL;
 
 	for (i = 0; total < len; total += l, p += l) {
 		l = strlen(p) + 1;
@@ -208,16 +211,20 @@ static char *imd_string_data(struct imd_entry_string *imd_string, int index)
 	return NULL;
 }
 
-static char *imd_concat_strings(struct imd_entry_string *imd_string)
+static char *imd_concat_strings(struct imd_header *imd)
 {
-	int i, len = imd_read_length(&imd_string->header);
+	int i, len = imd_read_length(imd);
 	char *str;
+	char *data = (char *)(imd + 1);
+
+	if (!imd_is_string(imd->type))
+		return NULL;
 
 	str = malloc(len);
 	if (!str)
 		return NULL;
 
-	memcpy(str, imd_string->data, len);
+	memcpy(str, data, len);
 
 	for (i = 0; i < len - 1; i++)
 		if (str[i] == 0)
@@ -284,10 +291,7 @@ int imd_command(int argc, char *argv[])
 			uint32_t type = imd_read_type(imd);
 
 			if (imd_is_string(type)) {
-				struct imd_entry_string *imd_string =
-					(struct imd_entry_string *)imd;
-
-				str = imd_concat_strings(imd_string);
+				str = imd_concat_strings(imd);
 
 				printf("%s: %s\n", imd_type_to_name(type), str);
 			} else {
@@ -302,13 +306,10 @@ int imd_command(int argc, char *argv[])
 		}
 
 		if (imd_is_string(type)) {
-			struct imd_entry_string *imd_string =
-				(struct imd_entry_string *)imd;
-
 			if (strno >= 0)
-				str = imd_string_data(imd_string, strno);
+				str = imd_string_data(imd, strno);
 			else
-				str = imd_concat_strings(imd_string);
+				str = imd_concat_strings(imd);
 
 			if (!str)
 				return -ENODATA;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
