Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRp7w-0003pP-Eh
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 21:40:55 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 28 Feb 2015 22:40:09 +0100
Message-Id: <1425159621-22805-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 04/16] of: make first argument of several of_property_*_string
 functions const
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/of/base.c |  8 ++++----
 include/of.h      | 16 ++++++++--------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index af10fd1da32c..4b5d4d75f19c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -799,7 +799,7 @@ EXPORT_SYMBOL_GPL(of_property_read_u64);
  *
  * The out_string pointer is modified only if a valid string can be decoded.
  */
-int of_property_read_string(struct device_node *np, const char *propname,
+int of_property_read_string(const struct device_node *np, const char *propname,
 				const char **out_string)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
@@ -832,7 +832,7 @@ EXPORT_SYMBOL_GPL(of_property_read_string);
  *
  * The out_string pointer is modified only if a valid string can be decoded.
  */
-int of_property_read_string_index(struct device_node *np, const char *propname,
+int of_property_read_string_index(const struct device_node *np, const char *propname,
 				  int index, const char **output)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
@@ -869,7 +869,7 @@ EXPORT_SYMBOL_GPL(of_property_read_string_index);
  * This function searches a string list property and returns the index
  * of a specific string value.
  */
-int of_property_match_string(struct device_node *np, const char *propname,
+int of_property_match_string(const struct device_node *np, const char *propname,
 			     const char *string)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
@@ -909,7 +909,7 @@ EXPORT_SYMBOL_GPL(of_property_match_string);
  * does not have a value, and -EILSEQ if the string is not null-terminated
  * within the length of the property data.
  */
-int of_property_count_strings(struct device_node *np, const char *propname)
+int of_property_count_strings(const struct device_node *np, const char *propname)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
 	int i = 0;
diff --git a/include/of.h b/include/of.h
index 2ad941864f5d..4019b927aa98 100644
--- a/include/of.h
+++ b/include/of.h
@@ -171,16 +171,16 @@ extern int of_property_read_u32_array(const struct device_node *np,
 extern int of_property_read_u64(const struct device_node *np,
 				const char *propname, u64 *out_value);
 
-extern int of_property_read_string(struct device_node *np,
+extern int of_property_read_string(const struct device_node *np,
 				   const char *propname,
 				   const char **out_string);
-extern int of_property_read_string_index(struct device_node *np,
+extern int of_property_read_string_index(const struct device_node *np,
 					 const char *propname,
 					 int index, const char **output);
-extern int of_property_match_string(struct device_node *np,
+extern int of_property_match_string(const struct device_node *np,
 				    const char *propname,
 				    const char *string);
-extern int of_property_count_strings(struct device_node *np,
+extern int of_property_count_strings(const struct device_node *np,
 				     const char *propname);
 
 extern const __be32 *of_prop_next_u32(struct property *prop,
@@ -373,25 +373,25 @@ static inline int of_property_read_u64(const struct device_node *np,
 	return -ENOSYS;
 }
 
-static inline int of_property_read_string(struct device_node *np,
+static inline int of_property_read_string(const struct device_node *np,
 				const char *propname, const char **out_string)
 {
 	return -ENOSYS;
 }
 
-static inline int of_property_read_string_index(struct device_node *np,
+static inline int of_property_read_string_index(const struct device_node *np,
 			 const char *propname, int index, const char **output)
 {
 	return -ENOSYS;
 }
 
-static inline int of_property_match_string(struct device_node *np,
+static inline int of_property_match_string(const struct device_node *np,
 				const char *propname, const char *string)
 {
 	return -ENOSYS;
 }
 
-static inline int of_property_count_strings(struct device_node *np,
+static inline int of_property_count_strings(const struct device_node *np,
 					const char *propname)
 {
 	return -ENOSYS;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
