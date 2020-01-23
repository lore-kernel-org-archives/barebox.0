Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout07.rmx.de ([94.199.90.95])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubUi-000129-SI
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 12:21:58 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout07.rmx.de (Postfix) with ESMTPS id 483LxF3FTFzBxNZ
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:53 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 483Lx44bf0z2yvV
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:44 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 23 Jan 2020 13:20:45 +0100
Message-ID: <20200123122045.25507-5-ceggers@arri.de>
In-Reply-To: <20200123122045.25507-1-ceggers@arri.de>
References: <20200123122045.25507-1-ceggers@arri.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] parameter: Return NULL instead of ENOSYS if
 CONFIG_PARAMETER is disabled
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

This reverts 03b59bdb64 ("paramter: The dev_add_param_*() return
ERR_PTR(), change no-ops to return ERR_PTR(-ENOSYS) instead of NULL").

Most callers of dev_add_param_*() don't care about whether
CONFIG_PARAMETER is enabled or not. The remaining ones have already been
prepared for getting a NULL pointer. As a result, these callers will not
fail itself, only because CONFIG_PARAMETER (which is always optional) is
disabled.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 include/param.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/param.h b/include/param.h
index f1166eb28..c79b908b1 100644
--- a/include/param.h
+++ b/include/param.h
@@ -118,7 +118,7 @@ static inline struct param_d *dev_add_param(struct device_d *dev, const char *na
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
@@ -126,7 +126,7 @@ static inline struct param_d *dev_add_param_string(struct device_d *dev, const c
 		int (*get)(struct param_d *p, void *priv),
 		char **value, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
@@ -134,7 +134,7 @@ static inline struct param_d *__dev_add_param_int(struct device_d *dev, const ch
 		int (*get)(struct param_d *p, void *priv),
 		void *value, enum param_type type, const char *format, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
@@ -143,7 +143,7 @@ static inline struct param_d *dev_add_param_enum(struct device_d *dev, const cha
 		int *value, const char * const *names, int max, void *priv)
 
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
@@ -151,7 +151,7 @@ static inline struct param_d *dev_add_param_bitmask(struct device_d *dev, const
                 int (*get)(struct param_d *p, void *priv),
                 unsigned long *value, const char * const *names, int max, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
@@ -159,13 +159,13 @@ static inline struct param_d *dev_add_param_tristate(struct device_d *dev, const
 		int (*get)(struct param_d *p, void *priv),
 		int *value, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
 		int *value)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
@@ -173,7 +173,7 @@ static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char
 		int (*get)(struct param_d *p, void *priv),
 		IPaddr_t *ip, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
@@ -181,13 +181,13 @@ static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char
 		int (*get)(struct param_d *p, void *priv),
 		u8 *mac, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name,
 						  const char *value)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline void dev_remove_param(struct param_d *p) {}
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
