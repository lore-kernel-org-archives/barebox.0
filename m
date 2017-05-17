Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAw1B-0002ph-KV
 for barebox@lists.infradead.org; Wed, 17 May 2017 10:17:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dAw0n-0004oV-KM
 for barebox@lists.infradead.org; Wed, 17 May 2017 12:16:57 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 17 May 2017 12:16:55 +0200
Message-Id: <20170517101656.31717-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] globalvar: fix build without CONFIG_GLOBALVAR
To: barebox@lists.infradead.org

Don't reference global_device if there is no globalvar support build in.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/globalvar.h | 186 ++++++++++++++++++++++++++++++++++------------------
 1 file changed, 122 insertions(+), 64 deletions(-)

diff --git a/include/globalvar.h b/include/globalvar.h
index aea43b193dd1..afe390a96afb 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -32,6 +32,80 @@ void globalvar_print(void);
 
 void dev_param_init_from_nv(struct device_d *dev, const char *name);
 
+static inline int globalvar_add_simple_bool(const char *name, uint32_t *value)
+{
+	return __globalvar_add_simple_int(name, value, PARAM_TYPE_BOOL, "%u");
+}
+
+static inline int globalvar_add_simple_string(const char *name, char **value)
+{
+	return __globalvar_add_simple_string(name, value);
+}
+
+static inline int globalvar_add_simple_bool_ro(const char *name, uint32_t *value)
+{
+	return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,
+						   param_set_readonly, NULL,
+						   value, PARAM_TYPE_BOOL, "%u",
+						   NULL));
+}
+
+static inline int globalvar_add_simple_string_ro(const char *name, char **value)
+{
+	return __globalvar_add_simple_string(name, value);
+}
+
+static inline int globalvar_add_simple_bool_fixed(const char *name, uint32_t value)
+{
+	return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name, ERR_PTR(-EROFS),
+						   NULL, &value, PARAM_TYPE_BOOL, "%u",
+						   NULL));
+}
+
+static inline int globalvar_add_simple_string_fixed(const char *name, char *value)
+{
+	return PTR_ERR_OR_ZERO(dev_add_param_string_fixed(&global_device, name, value));
+}
+
+static inline int globalvar_add_simple_enum_ro(const char *name, int *value,
+					       const char * const *names, int max)
+{
+	return PTR_ERR_OR_ZERO(dev_add_param_enum_ro(&global_device, name, value, names,
+						     max));
+}
+
+#define DECLARE_GLOBALVAR_INT(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname(const char *name,	\
+						      inttype *value,		\
+						      const char *format)	\
+	{									\
+		return __globalvar_add_simple_int(name, value,			\
+						  paramtype,			\
+						  format);			\
+	}
+
+#define DECLARE_GLOBALVAR_INT_RO(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname##_ro(const char *name,	\
+						      inttype *value,		\
+						      const char *format)	\
+	{									\
+		return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,\
+							   param_set_readonly,	\
+							   NULL, value,		\
+							   paramtype,		\
+							   format, NULL));	\
+	}
+
+#define DECLARE_GLOBALVAR_INT_FIXED(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname##_fixed(const char *name,	\
+								 inttype value,		\
+								 const char *format)	\
+	{										\
+		return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,	\
+							   ERR_PTR(-EROFS), NULL,	\
+							   &value, paramtype,		\
+							   format, NULL));		\
+	}
 #else
 static inline int globalvar_add_simple(const char *name, const char *value)
 {
@@ -102,102 +176,86 @@ static inline int nvvar_save(void)
 	return 0;
 }
 
+static inline int globalvar_add_simple_bool(const char *name, uint32_t *value)
+{
+	return 0;
+}
+
+static inline int globalvar_add_simple_string(const char *name, char **value)
+{
+	return 0;
+}
+
 static inline void dev_param_init_from_nv(struct device_d *dev, const char *name)
 {
 }
 
-#endif
+static inline int globalvar_add_simple_bool_ro(const char *name, uint32_t *value)
+{
+	return 0;
+}
 
-#define DECLARE_GLOBALVAR_INT(intname, inttype, paramtype) \
-	static inline int globalvar_add_simple_##intname(const char *name,	\
-						      inttype *value,		\
-						      const char *format)	\
-	{									\
-		return __globalvar_add_simple_int(name, value,			\
-						  paramtype,			\
-						  format);			\
-	}
+static inline int globalvar_add_simple_string_ro(const char *name, char **value)
+{
+	return 0;
+}
 
-DECLARE_GLOBALVAR_INT(uint32, uint32_t, PARAM_TYPE_UINT32)
-DECLARE_GLOBALVAR_INT(int32, int32_t, PARAM_TYPE_INT32)
-DECLARE_GLOBALVAR_INT(uint64, uint64_t, PARAM_TYPE_UINT64)
-DECLARE_GLOBALVAR_INT(int64, int64_t, PARAM_TYPE_INT64)
+static inline int globalvar_add_simple_bool_fixed(const char *name, uint32_t value)
+{
+	return 0;
+}
 
-static inline int globalvar_add_simple_bool(const char *name, uint32_t *value)
+static inline int globalvar_add_simple_string_fixed(const char *name, char *value)
 {
-	return __globalvar_add_simple_int(name, value, PARAM_TYPE_BOOL, "%u");
+	return 0;
 }
 
-static inline int globalvar_add_simple_string(const char *name, char **value)
+static inline int globalvar_add_simple_enum_ro(const char *name, int *value,
+					       const char * const *names, int max)
 {
-	return __globalvar_add_simple_string(name, value);
+	return 0;
 }
 
+#define DECLARE_GLOBALVAR_INT(intname, inttype, paramtype) \
+	static inline int globalvar_add_simple_##intname(const char *name,	\
+						      inttype *value,		\
+						      const char *format)	\
+	{									\
+		return 0;							\
+	}
+
 #define DECLARE_GLOBALVAR_INT_RO(intname, inttype, paramtype) \
 	static inline int globalvar_add_simple_##intname##_ro(const char *name,	\
 						      inttype *value,		\
 						      const char *format)	\
 	{									\
-		return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,\
-							   param_set_readonly,	\
-							   NULL, value,		\
-							   paramtype,		\
-							   format, NULL));	\
+		return 0;							\
 	}
 
-DECLARE_GLOBALVAR_INT_RO(uint32, uint32_t, PARAM_TYPE_UINT32)
-DECLARE_GLOBALVAR_INT_RO(int32, int32_t, PARAM_TYPE_INT32)
-DECLARE_GLOBALVAR_INT_RO(uint64, uint64_t, PARAM_TYPE_UINT64)
-DECLARE_GLOBALVAR_INT_RO(int64, int64_t, PARAM_TYPE_INT64)
-
-static inline int globalvar_add_simple_bool_ro(const char *name, uint32_t *value)
-{
-	return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,
-						   param_set_readonly, NULL,
-						   value, PARAM_TYPE_BOOL, "%u",
-						   NULL));
-}
-
-static inline int globalvar_add_simple_string_ro(const char *name, char **value)
-{
-	return __globalvar_add_simple_string(name, value);
-}
-
 #define DECLARE_GLOBALVAR_INT_FIXED(intname, inttype, paramtype) \
 	static inline int globalvar_add_simple_##intname##_fixed(const char *name,	\
 								 inttype value,		\
 								 const char *format)	\
 	{										\
-		return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name,	\
-							   ERR_PTR(-EROFS), NULL,	\
-							   &value, paramtype,		\
-							   format, NULL));		\
+		return 0;								\
 	}
+#endif
+
+DECLARE_GLOBALVAR_INT(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_GLOBALVAR_INT(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_GLOBALVAR_INT(uint64, uint64_t, PARAM_TYPE_UINT64)
+DECLARE_GLOBALVAR_INT(int64, int64_t, PARAM_TYPE_INT64)
+
+DECLARE_GLOBALVAR_INT_RO(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_GLOBALVAR_INT_RO(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_GLOBALVAR_INT_RO(uint64, uint64_t, PARAM_TYPE_UINT64)
+DECLARE_GLOBALVAR_INT_RO(int64, int64_t, PARAM_TYPE_INT64)
 
 DECLARE_GLOBALVAR_INT_FIXED(uint32, uint32_t, PARAM_TYPE_UINT32)
 DECLARE_GLOBALVAR_INT_FIXED(int32, int32_t, PARAM_TYPE_INT32)
 DECLARE_GLOBALVAR_INT_FIXED(uint64, uint64_t, PARAM_TYPE_UINT64)
 DECLARE_GLOBALVAR_INT_FIXED(int64, int64_t, PARAM_TYPE_INT64)
 
-static inline int globalvar_add_simple_bool_fixed(const char *name, uint32_t value)
-{
-	return PTR_ERR_OR_ZERO(__dev_add_param_int(&global_device, name, ERR_PTR(-EROFS),
-						   NULL, &value, PARAM_TYPE_BOOL, "%u",
-						   NULL));
-}
-
-static inline int globalvar_add_simple_string_fixed(const char *name, char *value)
-{
-	return PTR_ERR_OR_ZERO(dev_add_param_string_fixed(&global_device, name, value));
-}
-
-static inline int globalvar_add_simple_enum_ro(const char *name, int *value,
-					       const char * const *names, int max)
-{
-	return PTR_ERR_OR_ZERO(dev_add_param_enum_ro(&global_device, name, value, names,
-						     max));
-}
-
 void nv_var_set_clean(void);
 int nvvar_save(void);
 int nv_global_complete(struct string_list *sl, char *instr);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
