Delivery-date: Mon, 11 Aug 2025 14:30:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfo-009Knc-2m
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfP-0006UB-Hr
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1tuLg+EL1eVVSu4WJcjEKNSB7COWMngW8xN8SikSe7A=; b=MpeYl/yRDl/mbLrTjMXF31xNnE
	Z4F2eZ6aTA7DVN3eCImeWycB/bfVarafODX7ImUeP4krV2OXpeD9laMIyTutoPfCaDpBooF4C2hdp
	KUNv4fWwfAIOYj5QQ/+9CA83ZbPw6p/oyh/sY/2CZz/BTifJRcOTwkq4y4N8QUQhFKrxRBQuyqxMv
	EP10u0MqBdmFfHsF05sir2LDB+j10IPOvz2OKz6EVgn3r0uQYmtYSFhW0pDteJWUfZ5d/K+hjmhtM
	L0BYR4UStIm06wYopwqNleXfMyZfGpl2IEKbcWO7f0dydPox7c2vsp4NN4iFeWOebHvcxl5fTTB0E
	k6kHZClA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe1-00000007e3V-2R7e;
	Mon, 11 Aug 2025 12:28:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVx-3zYv
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdc-0004WP-9N; Mon, 11 Aug 2025 14:28:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:47 +0200
Message-Id: <20250811122824.1667791-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_456550_25C7CF8B 
X-CRM114-Status: GOOD (  16.49  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/44] param: operate on bobjects instead of full devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Previous commit associated the parameters with the bobject inside the
device. Double down and provide bobject API for creation and use of
parameters and use them to implement the device parameter API.

As each device starts with a bobject, let's make use of GCC's
transparent union feature (typedeffed as bobject_t) to have the compiler
automatically convert pointers.
This way the dev_ param functions become simple aliases to the bobject_
API, but the main upside is that we do not need to adjust callbacks
across the tree as they will just continue to work without type errors.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/bobject.h |   2 +
 include/device.h  |   2 +
 include/param.h   | 187 ++++++++++++++++++++++++++++------------------
 lib/parameter.c   | 161 +++++++++++++++++++++------------------
 4 files changed, 207 insertions(+), 145 deletions(-)

diff --git a/include/bobject.h b/include/bobject.h
index b159ac875f0c..34cf9d62bc6e 100644
--- a/include/bobject.h
+++ b/include/bobject.h
@@ -10,10 +10,12 @@
  * struct bobject - barebox object
  * @name: name of object (must be first member)
  * @parameters: list of struct param_d parameters
+ * @local: name of bobject is not unique across the system
  */
 struct bobject {
 	char			*name;
 	struct list_head	parameters;
+	u32			local:1;
 };
 
 struct device;
diff --git a/include/device.h b/include/device.h
index 5bb5a28619a2..7abeed9c460f 100644
--- a/include/device.h
+++ b/include/device.h
@@ -124,6 +124,8 @@ struct device {
 	char *deferred_probe_reason;
 };
 
+#define bobj_to_dev(__bobj)	container_of_const(__bobj, struct device, bobject)
+
 struct class {
 	const char *name;
 	struct list_head devices;
diff --git a/include/param.h b/include/param.h
index bb90d0240828..5f4f87f67c73 100644
--- a/include/param.h
+++ b/include/param.h
@@ -5,6 +5,7 @@
 #include <linux/err.h>
 #include <linux/types.h>
 #include <linux/list.h>
+#include <bobject.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
 #define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
@@ -28,13 +29,13 @@ enum param_type {
 };
 
 struct param_d {
-	const char* (*get)(struct device *, struct param_d *param);
-	int (*set)(struct device *, struct param_d *param, const char *val);
+	const char* (*get)(bobject_t, struct param_d *param);
+	int (*set)(bobject_t, struct param_d *param, const char *val);
 	void (*info)(struct param_d *param);
 	unsigned int flags;
 	const char *name;
 	char *value;
-	struct device *dev;
+	struct bobject *bobj;
 	void *driver_priv;
 	struct list_head list;
 	enum param_type type;
@@ -44,98 +45,98 @@ enum param_tristate { PARAM_TRISTATE_UNKNOWN, PARAM_TRISTATE_TRUE, PARAM_TRISTAT
 
 #ifdef CONFIG_PARAMETER
 const char *get_param_type(struct param_d *param);
-const char *dev_get_param(struct device *dev, const char *name);
-int dev_set_param(struct device *dev, const char *name, const char *val);
-struct param_d *get_param_by_name(struct device *dev, const char *name);
+const char *bobject_get_param(bobject_t bobj, const char *name);
+int bobject_set_param(bobject_t bobj, const char *name, const char *val);
+struct param_d *get_param_by_name(bobject_t bobj, const char *name);
 
-struct param_d *dev_add_param(struct device *dev, const char *name,
-			      int (*set)(struct device *dev, struct param_d *p, const char *val),
-			      const char *(*get)(struct device *, struct param_d *p),
+struct param_d *bobject_add_param(bobject_t bobj, const char *name,
+			      int (*set)(bobject_t bobj, struct param_d *p, const char *val),
+			      const char *(*get)(bobject_t, struct param_d *p),
 			      unsigned long flags);
 
-struct param_d *dev_add_param_string(struct device *dev, const char *name,
+struct param_d *bobject_add_param_string(bobject_t bobj, const char *name,
 				     int (*set)(struct param_d *p, void *priv),
 				     int (*get)(struct param_d *p, void *priv),
 				     char **value, void *priv);
 
-struct param_d *__dev_add_param_int(struct device *dev, const char *name,
+struct param_d *__bobject_add_param_int(bobject_t bobj, const char *name,
 				    int (*set)(struct param_d *p, void *priv),
 				    int (*get)(struct param_d *p, void *priv),
 				    void *value, enum param_type type,
 				    const char *format, void *priv);
 
-struct param_d *dev_add_param_enum(struct device *dev, const char *name,
+struct param_d *bobject_add_param_enum(bobject_t bobj, const char *name,
 				   int (*set)(struct param_d *p, void *priv),
 				   int (*get)(struct param_d *p, void *priv),
 				   int *value, const char * const *names,
 				   int num_names, void *priv);
 
-struct param_d *dev_add_param_tristate(struct device *dev, const char *name,
+struct param_d *bobject_add_param_tristate(bobject_t bobj, const char *name,
 				       int (*set)(struct param_d *p, void *priv),
 				       int (*get)(struct param_d *p, void *priv),
 				       int *value, void *priv);
 
-struct param_d *dev_add_param_tristate_ro(struct device *dev,
+struct param_d *bobject_add_param_tristate_ro(bobject_t bobj,
 					  const char *name,
 					  int *value);
 
-struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
+struct param_d *bobject_add_param_bitmask(bobject_t bobj, const char *name,
 				      int (*set)(struct param_d *p, void *priv),
 				      int (*get)(struct param_d *p, void *priv),
 				      unsigned long *value,
 				      const char * const *names, int num_names,
 				      void *priv);
 
-struct param_d *dev_add_param_ip(struct device *dev, const char *name,
+struct param_d *bobject_add_param_ip(bobject_t bobj, const char *name,
 				 int (*set)(struct param_d *p, void *priv),
 				 int (*get)(struct param_d *p, void *priv),
 				 IPaddr_t *ip, void *priv);
 
-struct param_d *dev_add_param_mac(struct device *dev, const char *name,
+struct param_d *bobject_add_param_mac(bobject_t bobj, const char *name,
 				  int (*set)(struct param_d *p, void *priv),
 				  int (*get)(struct param_d *p, void *priv),
 				  u8 *mac, void *priv);
 
-struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
+struct param_d *bobject_add_param_file_list(bobject_t bobj, const char *name,
 					int (*set)(struct param_d *p, void *priv),
 					int (*get)(struct param_d *p, void *priv),
 					struct file_list **file_list,
 					void *priv);
 
-struct param_d *dev_add_param_fixed(struct device *dev, const char *name,
+struct param_d *bobject_add_param_fixed(bobject_t bobj, const char *name,
 				    const char *value);
 
 void param_remove(struct param_d *p);
 
-int dev_param_set_generic(struct device *dev, struct param_d *p,
+int bobject_param_set_generic(bobject_t bobj, struct param_d *p,
 			  const char *val);
 
 #else
-static inline const char *dev_get_param(struct device *dev, const char *name)
+static inline const char *bobject_get_param(bobject_t bobj, const char *name)
 {
 	return NULL;
 }
-static inline int dev_set_param(struct device *dev, const char *name,
+static inline int bobject_set_param(bobject_t bobj, const char *name,
 				const char *val)
 {
 	return 0;
 }
-static inline struct param_d *get_param_by_name(struct device *dev,
+static inline struct param_d *get_param_by_name(bobject_t bobj,
 						const char *name)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param(struct device *dev,
+static inline struct param_d *bobject_add_param(bobject_t bobj,
 					    const char *name,
-					    int (*set)(struct device *dev, struct param_d *p, const char *val),
-					    const char *(*get)(struct device *, struct param_d *p),
+					    int (*set)(bobject_t bobj, struct param_d *p, const char *val),
+					    const char *(*get)(bobject_t, struct param_d *p),
 					    unsigned long flags)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_string(struct device *dev,
+static inline struct param_d *bobject_add_param_string(bobject_t bobj,
 						   const char *name,
 						   int (*set)(struct param_d *p, void *priv),
 						   int (*get)(struct param_d *p, void *priv),
@@ -144,7 +145,7 @@ static inline struct param_d *dev_add_param_string(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *__dev_add_param_int(struct device *dev,
+static inline struct param_d *__bobject_add_param_int(bobject_t bobj,
 						  const char *name,
 						  int (*set)(struct param_d *p, void *priv),
 						  int (*get)(struct param_d *p, void *priv),
@@ -156,7 +157,7 @@ static inline struct param_d *__dev_add_param_int(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_enum(struct device *dev,
+static inline struct param_d *bobject_add_param_enum(bobject_t bobj,
 						 const char *name,
 						 int (*set)(struct param_d *p, void *priv),
 						 int (*get)(struct param_d *p, void *priv),
@@ -168,7 +169,7 @@ static inline struct param_d *dev_add_param_enum(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_bitmask(struct device *dev,
+static inline struct param_d *bobject_add_param_bitmask(bobject_t bobj,
 						    const char *name,
 						    int (*set)(struct param_d *p, void *priv),
 						    int (*get)(struct param_d *p, void *priv),
@@ -179,7 +180,7 @@ static inline struct param_d *dev_add_param_bitmask(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_tristate(struct device *dev,
+static inline struct param_d *bobject_add_param_tristate(bobject_t bobj,
 						     const char *name,
 						     int (*set)(struct param_d *p, void *priv),
 						     int (*get)(struct param_d *p, void *priv),
@@ -188,14 +189,14 @@ static inline struct param_d *dev_add_param_tristate(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_tristate_ro(struct device *dev,
+static inline struct param_d *bobject_add_param_tristate_ro(bobject_t bobj,
 							const char *name,
 							int *value)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_ip(struct device *dev,
+static inline struct param_d *bobject_add_param_ip(bobject_t bobj,
 					       const char *name,
 					       int (*set)(struct param_d *p, void *priv),
 					       int (*get)(struct param_d *p, void *priv),
@@ -204,7 +205,7 @@ static inline struct param_d *dev_add_param_ip(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_mac(struct device *dev,
+static inline struct param_d *bobject_add_param_mac(bobject_t bobj,
 						const char *name,
 						int (*set)(struct param_d *p, void *priv),
 						int (*get)(struct param_d *p, void *priv),
@@ -213,7 +214,7 @@ static inline struct param_d *dev_add_param_mac(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_file_list(struct device *dev,
+static inline struct param_d *bobject_add_param_file_list(bobject_t bobj,
 						      const char *name,
 						      int (*set)(struct param_d *p, void *priv),
 						      int (*get)(struct param_d *p, void *priv),
@@ -223,7 +224,7 @@ static inline struct param_d *dev_add_param_file_list(struct device *dev,
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_fixed(struct device *dev,
+static inline struct param_d *bobject_add_param_fixed(bobject_t bobj,
 						  const char *name,
 						  const char *value)
 {
@@ -232,7 +233,7 @@ static inline struct param_d *dev_add_param_fixed(struct device *dev,
 
 static inline void param_remove(struct param_d *p) {}
 
-static inline int dev_param_set_generic(struct device *dev, struct param_d *p,
+static inline int bobject_param_set_generic(bobject_t bobj, struct param_d *p,
 					const char *val)
 {
 	return 0;
@@ -242,19 +243,19 @@ static inline int dev_param_set_generic(struct device *dev, struct param_d *p,
 int param_set_readonly(struct param_d *p, void *priv);
 
 /*
- * dev_add_param_int
- * dev_add_param_int32
- * dev_add_param_uint32
- * dev_add_param_int64
- * dev_add_param_uint64
+ * bobject_add_param_int
+ * bobject_add_param_int32
+ * bobject_add_param_uint32
+ * bobject_add_param_int64
+ * bobject_add_param_uint64
  */
 #define DECLARE_PARAM_INT(intname, inttype, paramtype) \
-	static inline struct param_d *dev_add_param_##intname(struct device *dev, const char *name,	\
+	static inline struct param_d *bobject_add_param_##intname(bobject_t bobj, const char *name,	\
 			int (*set)(struct param_d *p, void *priv),					\
 			int (*get)(struct param_d *p, void *priv),					\
 			inttype *value, const char *format, void *priv)					\
 	{												\
-		return __dev_add_param_int(dev, name, set, get, value, paramtype, format, priv);	\
+		return __bobject_add_param_int(bobj, name, set, get, value, paramtype, format, priv);	\
 	}
 
 DECLARE_PARAM_INT(int, int, PARAM_TYPE_INT32)
@@ -264,17 +265,17 @@ DECLARE_PARAM_INT(int64, int64_t, PARAM_TYPE_INT64)
 DECLARE_PARAM_INT(uint64, uint64_t, PARAM_TYPE_UINT64)
 
 /*
- * dev_add_param_int_fixed
- * dev_add_param_int32_fixed
- * dev_add_param_uint32_fixed
- * dev_add_param_int64_fixed
- * dev_add_param_uint64_fixed
+ * bobject_add_param_int_fixed
+ * bobject_add_param_int32_fixed
+ * bobject_add_param_uint32_fixed
+ * bobject_add_param_int64_fixed
+ * bobject_add_param_uint64_fixed
  */
 #define DECLARE_PARAM_INT_FIXED(intname, inttype, paramtype) \
-	static inline struct param_d *dev_add_param_##intname##_fixed(struct device *dev, const char *name,	\
+	static inline struct param_d *bobject_add_param_##intname##_fixed(bobject_t bobj, const char *name,	\
 			inttype value, const char *format)							\
 	{													\
-		return __dev_add_param_int(dev, name, ERR_PTR(-EROFS), NULL, &value, paramtype, format, NULL);	\
+		return __bobject_add_param_int(bobj, name, ERR_PTR(-EROFS), NULL, &value, paramtype, format, NULL);	\
 	}
 
 DECLARE_PARAM_INT_FIXED(int, int, PARAM_TYPE_INT32)
@@ -284,17 +285,17 @@ DECLARE_PARAM_INT_FIXED(int64, int64_t, PARAM_TYPE_INT64)
 DECLARE_PARAM_INT_FIXED(uint64, uint64_t, PARAM_TYPE_UINT64)
 
 /*
- * dev_add_param_int_ro
- * dev_add_param_int32_ro
- * dev_add_param_uint32_ro
- * dev_add_param_int64_ro
- * dev_add_param_uint64_ro
+ * bobject_add_param_int_ro
+ * bobject_add_param_int32_ro
+ * bobject_add_param_uint32_ro
+ * bobject_add_param_int64_ro
+ * bobject_add_param_uint64_ro
  */
 #define DECLARE_PARAM_INT_RO(intname, inttype, paramtype) \
-	static inline struct param_d *dev_add_param_##intname##_ro(struct device *dev, const char *name,		\
+	static inline struct param_d *bobject_add_param_##intname##_ro(bobject_t bobj, const char *name,		\
 			inttype *value, const char *format)								\
 	{														\
-		return __dev_add_param_int(dev, name, param_set_readonly, NULL, value, paramtype, format, NULL);	\
+		return __bobject_add_param_int(bobj, name, param_set_readonly, NULL, value, paramtype, format, NULL);	\
 	}
 
 DECLARE_PARAM_INT_RO(int, int, PARAM_TYPE_INT32)
@@ -303,65 +304,107 @@ DECLARE_PARAM_INT_RO(uint32, uint32_t, PARAM_TYPE_UINT32)
 DECLARE_PARAM_INT_RO(int64, int64_t, PARAM_TYPE_INT64)
 DECLARE_PARAM_INT_RO(uint64, uint64_t, PARAM_TYPE_UINT64)
 
-static inline struct param_d *dev_add_param_bool(struct device *dev,
+static inline struct param_d *bobject_add_param_bool(bobject_t bobj,
 						 const char *name,
 						 int (*set)(struct param_d *p, void *priv),
 						 int (*get)(struct param_d *p, void *priv),
 						 uint32_t *value, void *priv)
 {
-	return __dev_add_param_int(dev, name, set, get, value, PARAM_TYPE_BOOL, "%u", priv);
+	return __bobject_add_param_int(bobj, name, set, get, value, PARAM_TYPE_BOOL, "%u", priv);
 }
 
-static inline struct param_d *dev_add_param_bool_fixed(struct device *dev,
+static inline struct param_d *bobject_add_param_bool_fixed(bobject_t bobj,
 						       const char *name,
 						       uint32_t value)
 {
-	return __dev_add_param_int(dev, name, ERR_PTR(-EROFS), NULL, &value, PARAM_TYPE_BOOL,
+	return __bobject_add_param_int(bobj, name, ERR_PTR(-EROFS), NULL, &value, PARAM_TYPE_BOOL,
 				   "%u", NULL);
 }
 
-static inline struct param_d *dev_add_param_bool_ro(struct device *dev,
+static inline struct param_d *bobject_add_param_bool_ro(bobject_t bobj,
 						    const char *name,
 						    uint32_t *value)
 {
-	return __dev_add_param_int(dev, name, param_set_readonly, NULL, value, PARAM_TYPE_BOOL,
+	return __bobject_add_param_int(bobj, name, param_set_readonly, NULL, value, PARAM_TYPE_BOOL,
 				   "%u", NULL);
 }
 
-static inline struct param_d *dev_add_param_string_ro(struct device *dev,
+static inline struct param_d *bobject_add_param_string_ro(bobject_t bobj,
 						      const char *name,
 						      char **value)
 {
-	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
+	return bobject_add_param_string(bobj, name, param_set_readonly, NULL, value, NULL);
 }
 
-static inline struct param_d *dev_add_param_string_fixed(struct device *dev,
+static inline struct param_d *bobject_add_param_string_fixed(bobject_t bobj,
 							 const char *name,
 							 const char *value)
 {
-	return dev_add_param_fixed(dev, name, value);
+	return bobject_add_param_fixed(bobj, name, value);
 }
 
-static inline struct param_d *dev_add_param_enum_ro(struct device *dev,
+static inline struct param_d *bobject_add_param_enum_ro(bobject_t bobj,
 						    const char *name,
 						    int *value,
 						    const char * const *names,
 						    int num_names)
 {
-	return dev_add_param_enum(dev, name, param_set_readonly, NULL,
+	return bobject_add_param_enum(bobj, name, param_set_readonly, NULL,
 				  value, names, num_names, NULL);
 }
 
-static inline struct param_d *dev_add_param_bitmask_ro(struct device *dev,
+static inline struct param_d *bobject_add_param_bitmask_ro(bobject_t bobj,
 						       const char *name,
 						       unsigned long *value,
 						       const char * const *names,
 						       int num_names)
 {
-	return dev_add_param_bitmask(dev, name, param_set_readonly, NULL,
+	return bobject_add_param_bitmask(bobj, name, param_set_readonly, NULL,
 				     value, names, num_names, NULL);
 }
 
+#define dev_get_param			bobject_get_param
+#define dev_set_param			bobject_set_param
+#define dev_add_param			bobject_add_param
+#define dev_add_param_string		bobject_add_param_string
+#define __dev_add_param_int		__bobject_add_param_int
+#define dev_add_param_enum		bobject_add_param_enum
+#define dev_add_param_tristate		bobject_add_param_tristate
+#define dev_add_param_tristate_ro	bobject_add_param_tristate_ro
+#define dev_add_param_bitmask		bobject_add_param_bitmask
+#define dev_add_param_ip		bobject_add_param_ip
+#define dev_add_param_mac		bobject_add_param_mac
+#define dev_add_param_file_list		bobject_add_param_file_list
+#define dev_add_param_fixed		bobject_add_param_fixed
+#define dev_param_set_generic		bobject_param_set_generic
+
+#define dev_add_param_int		bobject_add_param_int
+#define dev_add_param_int32		bobject_add_param_int32
+#define dev_add_param_uint32		bobject_add_param_uint32
+#define dev_add_param_int64		bobject_add_param_int64
+#define dev_add_param_uint64		bobject_add_param_uint64
+
+#define dev_add_param_int_fixed		bobject_add_param_int_fixed
+#define dev_add_param_int32_fixed	bobject_add_param_int32_fixed
+#define dev_add_param_uint32_fixed	bobject_add_param_uint32_fixed
+#define dev_add_param_int64_fixed	bobject_add_param_int64_fixed
+#define dev_add_param_uint64_fixed	bobject_add_param_uint64_fixed
+
+
+#define dev_add_param_int_ro		bobject_add_param_int_ro
+#define dev_add_param_int32_ro		bobject_add_param_int32_ro
+#define dev_add_param_uint32_ro		bobject_add_param_uint32_ro
+#define dev_add_param_int64_ro		bobject_add_param_int64_ro
+#define dev_add_param_uint64_ro		bobject_add_param_uint64_ro
+
+#define dev_add_param_bool		bobject_add_param_bool
+#define dev_add_param_bool_fixed	bobject_add_param_bool_fixed
+#define dev_add_param_bool_ro		bobject_add_param_bool_ro
+#define dev_add_param_string_ro		bobject_add_param_string_ro
+#define dev_add_param_string_fixed	bobject_add_param_string_fixed
+#define dev_add_param_enum_ro		bobject_add_param_enum_ro
+#define dev_add_param_bitmask_ro	bobject_add_param_bitmask_ro
+
 /*
  * unimplemented:
  * dev_add_param_enum_fixed
diff --git a/lib/parameter.c b/lib/parameter.c
index 7f89ac53e0d2..ef578d790856 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -1,5 +1,5 @@
 /*
- * parameter.c - device parameters
+ * parameter.c - barebox object parameters
  *
  * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
@@ -16,7 +16,7 @@
 
 /**
  * @file
- * @brief Handling device specific parameters
+ * @brief Handling barebox-object specific parameters
  */
 #include <common.h>
 #include <param.h>
@@ -49,11 +49,12 @@ const char *get_param_type(struct param_d *param)
 	return param_type_string[param->type];
 }
 
-struct param_d *get_param_by_name(struct device *dev, const char *name)
+struct param_d *get_param_by_name(bobject_t _bobj, const char *name)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_d *p;
 
-	list_for_each_entry(p, &dev->bobject.parameters, list) {
+	list_for_each_entry(p, &bobj->parameters, list) {
 		if (!strcmp(p->name, name))
 			return p;
 	}
@@ -62,38 +63,40 @@ struct param_d *get_param_by_name(struct device *dev, const char *name)
 }
 
 /**
- * dev_get_param - get the value of a parameter
- * @param dev	The device
+ * bobject_get_param - get the value of a parameter
+ * @param bobj	The barebox object
  * @param name	The name of the parameter
  * @return	The value
  */
-const char *dev_get_param(struct device *dev, const char *name)
+const char *bobject_get_param(bobject_t _bobj, const char *name)
 {
-	struct param_d *param = get_param_by_name(dev, name);
+	struct bobject *bobj = _bobj.bobj;
+	struct param_d *param = get_param_by_name(bobj, name);
 
 	if (!param) {
 		errno = EINVAL;
 		return NULL;
 	}
 
-	return param->get(dev, param);
+	return param->get(bobj, param);
 }
 
 /**
- * dev_set_param - set a parameter of a device to a new value
- * @param dev	The device
+ * bobject_set_param - set a parameter of a barebox object to a new value
+ * @param bobj	The barebox object
  * @param name	The name of the parameter
  * @param val	The new value of the parameter
  */
-int dev_set_param(struct device *dev, const char *name, const char *val)
+int bobject_set_param(bobject_t _bobj, const char *name, const char *val)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_d *param;
 	int ret;
 
-	if (!dev)
+	if (!bobj)
 		return errno_set(-ENODEV);
 
-	param = get_param_by_name(dev, name);
+	param = get_param_by_name(bobj, name);
 
 	if (!param)
 		return errno_set(-EINVAL);
@@ -101,7 +104,7 @@ int dev_set_param(struct device *dev, const char *name, const char *val)
 	if (param->flags & PARAM_FLAG_RO)
 		return errno_set(-EACCES);
 
-	ret = param->set(dev, param, val);
+	ret = param->set(bobj, param, val);
 	if (ret)
 		return errno_set(ret);
 
@@ -109,8 +112,8 @@ int dev_set_param(struct device *dev, const char *name, const char *val)
 }
 
 /**
- * dev_param_set_generic - generic setter function for a parameter
- * @param dev	The device
+ * bobject_param_set_generic - generic setter function for a parameter
+ * @param bobj	The barebox object
  * @param p	the parameter
  * @param val	The new value
  *
@@ -119,7 +122,7 @@ int dev_set_param(struct device *dev, const char *name, const char *val)
  * used during deregistration of the parameter to free the alloctated
  * memory.
  */
-int dev_param_set_generic(struct device *dev, struct param_d *p,
+int bobject_param_set_generic(bobject_t _bobj, struct param_d *p,
 			  const char *val)
 {
 	free(p->value);
@@ -131,7 +134,7 @@ int dev_param_set_generic(struct device *dev, struct param_d *p,
 	return p->value ? 0 : -ENOMEM;
 }
 
-static const char *param_get_generic(struct device *dev, struct param_d *p)
+static const char *param_get_generic(struct bobject *bobj, struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
@@ -144,13 +147,13 @@ static int compare(struct list_head *a, struct list_head *b)
 	return strcmp(na, nb);
 }
 
-static int __dev_add_param(struct param_d *param, struct device *dev,
+static int __bobject_add_param(struct param_d *param, struct bobject *bobj,
 			   const char *name,
-			   int (*set)(struct device *dev, struct param_d *p, const char *val),
-			   const char *(*get)(struct device *dev, struct param_d *p),
+			   int (*set)(bobject_t _bobj, struct param_d *p, const char *val),
+			   const char *(*get)(bobject_t _bobj, struct param_d *p),
 			   unsigned long flags)
 {
-	if (get_param_by_name(dev, name))
+	if (get_param_by_name(bobj, name))
 		return -EEXIST;
 
 	param->name = strdup_const(name);
@@ -160,45 +163,47 @@ static int __dev_add_param(struct param_d *param, struct device *dev,
 	if (set)
 		param->set = set;
 	else
-		param->set = dev_param_set_generic;
+		param->set = bobject_param_set_generic;
 	if (get)
 		param->get = get;
 	else
 		param->get = param_get_generic;
 
 	param->flags = flags;
-	param->dev = dev;
-	list_add_sort(&param->list, &dev->bobject.parameters, compare);
+	param->bobj = bobj;
+	list_add_sort(&param->list, &bobj->parameters, compare);
 
-	dev_param_init_from_nv(dev, name);
+	if (!bobj->local)
+		dev_param_init_from_nv(bobj_to_dev(bobj), name);
 
 	return 0;
 }
 
 /**
- * dev_add_param - add a parameter to a device
- * @param dev	The device
+ * bobject_add_param - add a parameter to a barebox object
+ * @param bobj	The barebox object
  * @param name	The name of the parameter
  * @param set	setter function for the parameter
  * @param get	getter function for the parameter
  * @param flags
  *
- * This function adds a new parameter to a device. The get/set functions can
+ * This function adds a new parameter to a barebox object. The get/set functions can
  * be zero in which case the generic functions are used. The generic functions
  * expect the parameter value to be a string which can be freed with free(). Do
  * not use static arrays when using the generic functions.
  */
-struct param_d *dev_add_param(struct device *dev, const char *name,
-			      int (*set)(struct device *dev, struct param_d *p, const char *val),
-			      const char *(*get)(struct device *dev, struct param_d *param),
+struct param_d *bobject_add_param(bobject_t _bobj, const char *name,
+			      int (*set)(bobject_t _bobj, struct param_d *p, const char *val),
+			      const char *(*get)(bobject_t _bobj, struct param_d *param),
 			      unsigned long flags)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_d *param;
 	int ret;
 
 	param = xzalloc(sizeof(*param));
 
-	ret = __dev_add_param(param, dev, name, set, get, flags);
+	ret = __bobject_add_param(param, bobj, name, set, get, flags);
 	if (ret) {
 		free(param);
 		return ERR_PTR(ret);
@@ -208,20 +213,21 @@ struct param_d *dev_add_param(struct device *dev, const char *name,
 }
 
 /**
- * dev_add_param_fixed - add a readonly parameter to a device
- * @param dev	The device
+ * bobject_add_param_fixed - add a readonly parameter to a barebox object
+ * @param bobj	The barebox object
  * @param name	The name of the parameter
  * @param value	The value of the parameter
  */
-struct param_d *dev_add_param_fixed(struct device *dev, const char *name,
+struct param_d *bobject_add_param_fixed(bobject_t _bobj, const char *name,
 				    const char *value)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_d *param;
 	int ret;
 
 	param = xzalloc(sizeof(*param));
 
-	ret = __dev_add_param(param, dev, name, NULL, NULL, PARAM_FLAG_RO);
+	ret = __bobject_add_param(param, bobj, name, NULL, NULL, PARAM_FLAG_RO);
 	if (ret) {
 		free(param);
 		return ERR_PTR(ret);
@@ -244,7 +250,7 @@ static inline struct param_string *to_param_string(struct param_d *p)
 	return container_of(p, struct param_string, param);
 }
 
-static int param_string_set(struct device *dev, struct param_d *p,
+static int param_string_set(struct bobject *bobj, struct param_d *p,
 			    const char *val)
 {
 	struct param_string *ps = to_param_string(p);
@@ -275,7 +281,7 @@ static int param_string_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_string_get(struct device *dev, struct param_d *p)
+static const char *param_string_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_string *ps = to_param_string(p);
 	int ret;
@@ -289,11 +295,12 @@ static const char *param_string_get(struct device *dev, struct param_d *p)
 	return *ps->value;
 }
 
-struct param_d *dev_add_param_string(struct device *dev, const char *name,
+struct param_d *bobject_add_param_string(bobject_t _bobj, const char *name,
 				     int (*set)(struct param_d *p, void *priv),
 				     int (*get)(struct param_d *p, void *priv),
 				     char **value, void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_string *ps;
 	struct param_d *p;
 	int ret;
@@ -306,7 +313,7 @@ struct param_d *dev_add_param_string(struct device *dev, const char *name,
 	p->driver_priv = priv;
 	p->type = PARAM_TYPE_STRING;
 
-	ret = __dev_add_param(p, dev, name, param_string_set, param_string_get, 0);
+	ret = __bobject_add_param(p, bobj, name, param_string_set, param_string_get, 0);
 	if (ret) {
 		free(ps);
 		return ERR_PTR(ret);
@@ -329,7 +336,7 @@ static inline struct param_int *to_param_int(struct param_d *p)
 	return container_of(p, struct param_int, param);
 }
 
-static int param_int_set(struct device *dev, struct param_d *p,
+static int param_int_set(struct bobject *bobj, struct param_d *p,
 			 const char *val)
 {
 	struct param_int *pi = to_param_int(p);
@@ -371,7 +378,7 @@ static int param_int_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_int_get(struct device *dev, struct param_d *p)
+static const char *param_int_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_int *pi = to_param_int(p);
 	int ret;
@@ -406,8 +413,8 @@ int param_set_readonly(struct param_d *p, void *priv)
 }
 
 /**
- * dev_add_param_int - add an integer parameter to a device
- * @param dev	The device
+ * bobject_add_param_int - add an integer parameter to a barebox object
+ * @param bobj	The barebox object
  * @param name	The name of the parameter
  * @param set	set function
  * @param get	get function
@@ -421,12 +428,13 @@ int param_set_readonly(struct param_d *p, void *priv)
  * The set function can be used as a notifer when the variable is about
  * to be written. Can also be used to limit the value.
  */
-struct param_d *__dev_add_param_int(struct device *dev, const char *name,
+struct param_d *__bobject_add_param_int(bobject_t _bobj, const char *name,
 				    int (*set)(struct param_d *p, void *priv),
 				    int (*get)(struct param_d *p, void *priv),
 				    void *value, enum param_type type,
 				    const char *format, void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_int *pi;
 	struct param_d *p;
 	int ret, dsize;
@@ -468,7 +476,7 @@ struct param_d *__dev_add_param_int(struct device *dev, const char *name,
 	p->driver_priv = priv;
 	p->type = type;
 
-	ret = __dev_add_param(p, dev, name, param_int_set, param_int_get, 0);
+	ret = __bobject_add_param(p, bobj, name, param_int_set, param_int_get, 0);
 	if (ret) {
 		free(pi);
 		return ERR_PTR(ret);
@@ -491,7 +499,7 @@ static inline struct param_enum *to_param_enum(struct param_d *p)
 	return container_of(p, struct param_enum, param);
 }
 
-static int param_enum_set(struct device *dev, struct param_d *p,
+static int param_enum_set(struct bobject *bobj, struct param_d *p,
 			  const char *val)
 {
 	struct param_enum *pe = to_param_enum(p);
@@ -520,7 +528,7 @@ static int param_enum_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_enum_get(struct device *dev, struct param_d *p)
+static const char *param_enum_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_enum *pe = to_param_enum(p);
 	int ret;
@@ -559,12 +567,13 @@ static void param_enum_info(struct param_d *p)
 	}
 }
 
-struct param_d *dev_add_param_enum(struct device *dev, const char *name,
+struct param_d *bobject_add_param_enum(bobject_t _bobj, const char *name,
 				   int (*set)(struct param_d *p, void *priv),
 				   int (*get)(struct param_d *p, void *priv),
 				   int *value, const char * const *names,
 				   int num_names, void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_enum *pe;
 	struct param_d *p;
 	int ret;
@@ -580,7 +589,7 @@ struct param_d *dev_add_param_enum(struct device *dev, const char *name,
 	p->driver_priv = priv;
 	p->type = PARAM_TYPE_ENUM;
 
-	ret = __dev_add_param(p, dev, name, param_enum_set, param_enum_get, 0);
+	ret = __bobject_add_param(p, bobj, name, param_enum_set, param_enum_get, 0);
 	if (ret) {
 		free(pe);
 		return ERR_PTR(ret);
@@ -597,20 +606,22 @@ static const char *const tristate_names[] = {
 	[PARAM_TRISTATE_FALSE] = "0",
 };
 
-struct param_d *dev_add_param_tristate(struct device *dev, const char *name,
+struct param_d *bobject_add_param_tristate(bobject_t _bobj, const char *name,
 				       int (*set)(struct param_d *p, void *priv),
 				       int (*get)(struct param_d *p, void *priv),
 				       int *value, void *priv)
 {
-	return dev_add_param_enum(dev, name, set, get, value, tristate_names,
+	struct bobject *bobj = _bobj.bobj;
+	return bobject_add_param_enum(bobj, name, set, get, value, tristate_names,
 				  ARRAY_SIZE(tristate_names), priv);
 }
 
-struct param_d *dev_add_param_tristate_ro(struct device *dev,
+struct param_d *bobject_add_param_tristate_ro(bobject_t _bobj,
 					  const char *name,
 					  int *value)
 {
-	return dev_add_param_enum_ro(dev, name, value, tristate_names,
+	struct bobject *bobj = _bobj.bobj;
+	return bobject_add_param_enum_ro(bobj, name, value, tristate_names,
 				     ARRAY_SIZE(tristate_names));
 }
 
@@ -628,7 +639,7 @@ static inline struct param_bitmask *to_param_bitmask(struct param_d *p)
 	return container_of(p, struct param_bitmask, param);
 }
 
-static int param_bitmask_set(struct device *dev, struct param_d *p,
+static int param_bitmask_set(struct bobject *bobj, struct param_d *p,
 			     const char *val)
 {
 	struct param_bitmask *pb = to_param_bitmask(p);
@@ -675,7 +686,7 @@ static int param_bitmask_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_bitmask_get(struct device *dev, struct param_d *p)
+static const char *param_bitmask_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_bitmask *pb = to_param_bitmask(p);
 	int ret, bit;
@@ -714,13 +725,14 @@ static void param_bitmask_info(struct param_d *p)
 	}
 }
 
-struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
+struct param_d *bobject_add_param_bitmask(bobject_t _bobj, const char *name,
 				      int (*set)(struct param_d *p, void *priv),
 				      int (*get)(struct param_d *p, void *priv),
 				      unsigned long *value,
 				      const char * const *names, int num_names,
 				      void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_bitmask *pb;
 	struct param_d *p;
 	int ret, i, len = 0;
@@ -742,7 +754,7 @@ struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
 
 	p->value = xzalloc(len);
 
-	ret = __dev_add_param(p, dev, name, param_bitmask_set, param_bitmask_get, 0);
+	ret = __bobject_add_param(p, bobj, name, param_bitmask_set, param_bitmask_get, 0);
 	if (ret) {
 		free(pb);
 		return ERR_PTR(ret);
@@ -765,7 +777,7 @@ static inline struct param_ip *to_param_ip(struct param_d *p)
 	return container_of(p, struct param_ip, param);
 }
 
-static int param_ip_set(struct device *dev, struct param_d *p,
+static int param_ip_set(struct bobject *bobj, struct param_d *p,
 			const char *val)
 {
 	struct param_ip *pi = to_param_ip(p);
@@ -789,7 +801,7 @@ static int param_ip_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_ip_get(struct device *dev, struct param_d *p)
+static const char *param_ip_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_ip *pi = to_param_ip(p);
 	int ret;
@@ -806,11 +818,12 @@ static const char *param_ip_get(struct device *dev, struct param_d *p)
 	return p->value;
 }
 
-struct param_d *dev_add_param_ip(struct device *dev, const char *name,
+struct param_d *bobject_add_param_ip(bobject_t _bobj, const char *name,
 				 int (*set)(struct param_d *p, void *priv),
 				 int (*get)(struct param_d *p, void *priv),
 				 IPaddr_t *ip, void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_ip *pi;
 	int ret;
 
@@ -821,7 +834,7 @@ struct param_d *dev_add_param_ip(struct device *dev, const char *name,
 	pi->param.driver_priv = priv;
 	pi->param.type = PARAM_TYPE_IPV4;
 
-	ret = __dev_add_param(&pi->param, dev, name,
+	ret = __bobject_add_param(&pi->param, bobj, name,
 			param_ip_set, param_ip_get, 0);
 	if (ret) {
 		free(pi);
@@ -846,7 +859,7 @@ static inline struct param_mac *to_param_mac(struct param_d *p)
 	return container_of(p, struct param_mac, param);
 }
 
-static int param_mac_set(struct device *dev, struct param_d *p,
+static int param_mac_set(struct bobject *bobj, struct param_d *p,
 			 const char *val)
 {
 	struct param_mac *pm = to_param_mac(p);
@@ -876,7 +889,7 @@ static int param_mac_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_mac_get(struct device *dev, struct param_d *p)
+static const char *param_mac_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_mac *pm = to_param_mac(p);
 	int ret;
@@ -892,11 +905,12 @@ static const char *param_mac_get(struct device *dev, struct param_d *p)
 	return p->value;
 }
 
-struct param_d *dev_add_param_mac(struct device *dev, const char *name,
+struct param_d *bobject_add_param_mac(bobject_t _bobj, const char *name,
 				  int (*set)(struct param_d *p, void *priv),
 				  int (*get)(struct param_d *p, void *priv),
 				  u8 *mac, void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_mac *pm;
 	int ret;
 
@@ -908,7 +922,7 @@ struct param_d *dev_add_param_mac(struct device *dev, const char *name,
 	pm->param.value = pm->mac_str;
 	pm->param.type = PARAM_TYPE_MAC;
 
-	ret = __dev_add_param(&pm->param, dev, name,
+	ret = __bobject_add_param(&pm->param, bobj, name,
 			param_mac_set, param_mac_get, 0);
 	if (ret) {
 		free(pm);
@@ -931,7 +945,7 @@ static inline struct param_file_list *to_param_file_list(struct param_d *p)
 	return container_of(p, struct param_file_list, param);
 }
 
-static int param_file_list_set(struct device *dev, struct param_d *p,
+static int param_file_list_set(struct bobject *bobj, struct param_d *p,
 			       const char *val)
 {
 	struct param_file_list *pfl = to_param_file_list(p);
@@ -962,7 +976,7 @@ static int param_file_list_set(struct device *dev, struct param_d *p,
 	return ret;
 }
 
-static const char *param_file_list_get(struct device *dev, struct param_d *p)
+static const char *param_file_list_get(struct bobject *bobj, struct param_d *p)
 {
 	struct param_file_list *pfl = to_param_file_list(p);
 	int ret;
@@ -978,12 +992,13 @@ static const char *param_file_list_get(struct device *dev, struct param_d *p)
 	return p->value;
 }
 
-struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
+struct param_d *bobject_add_param_file_list(bobject_t _bobj, const char *name,
 					int (*set)(struct param_d *p, void *priv),
 					int (*get)(struct param_d *p, void *priv),
 					struct file_list **file_list,
 					void *priv)
 {
+	struct bobject *bobj = _bobj.bobj;
 	struct param_file_list *pfl;
 	int ret;
 
@@ -994,7 +1009,7 @@ struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
 	pfl->param.driver_priv = priv;
 	pfl->param.type = PARAM_TYPE_FILE_LIST;
 
-	ret = __dev_add_param(&pfl->param, dev, name,
+	ret = __bobject_add_param(&pfl->param, bobj, name,
 			param_file_list_set, param_file_list_get, 0);
 	if (ret) {
 		free(pfl);
@@ -1011,7 +1026,7 @@ struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
  */
 void param_remove(struct param_d *p)
 {
-	p->set(p->dev, p, NULL);
+	p->set(p->bobj, p, NULL);
 	list_del(&p->list);
 	free_const(p->name);
 	free(p);
-- 
2.39.5



