Delivery-date: Tue, 02 Sep 2025 01:12:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utDhm-0074lf-30
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 01:12:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utDhl-0006Tz-Ki
	for lore@pengutronix.de; Tue, 02 Sep 2025 01:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LLQvZM1L7NwrB6NG04i5U/tqZwZ38JsGcjkZoqBYJQI=; b=b756Njow1Wxh7TeiQP1xS5GO6V
	+rrAdEjknz4Id8021ZoYkaY7i/SV6ap70KP7bYf79AVyhJmj0bnF+Euvgdq4pjGXSzPq8FG+7veO3
	2FfMHUhpPsAqkkALwkqP5SU1bxz8jcLJo5BY/+w8p8UMrH3TV3hVf3Qd5yaqEkOUgaBlb0zzWNMA9
	iyRizTDgV6Kjclg+qupL9iBF9kojnIkgrVfuuux4LAheiH5O0hKlKd4ysjVzgQPVP4hWDUa3Tnt1s
	BszUcL0+dCVR0+cH7ELCa3I4iFqeEanIAVlyS8Bs9i62vN9QEfxjNJKMF23ccep+EPZchvR2/hkMZ
	RJrAwoPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDgz-0000000EDt2-0zyZ;
	Mon, 01 Sep 2025 23:12:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut6TX-0000000D6EE-1ce7
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 15:29:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6TV-00025Q-Of; Mon, 01 Sep 2025 17:29:41 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6TV-003FIE-1m;
	Mon, 01 Sep 2025 17:29:41 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6TV-0000000ANMF-1uBV;
	Mon, 01 Sep 2025 17:29:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 17:29:36 +0200
Message-ID: <20250901152940.2472959-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_082943_426098_C2BBDFDA 
X-CRM114-Status: GOOD (  13.79  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] param: don't use bobject_t in function pointer signatures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

UndefinedBehaviorSanitizier for clang-21 complains about calling
functions through function pointers with bobject_t in their signatures
when the original arguments use struct device * or struct bobject *.

Let's migrate all function pointers to use struct bobject * instead to
fix this.

Fixes: feef2e053ea4 ("param: operate on bobjects instead of full devices")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/globalvar.c | 15 +++++++--------
 include/param.h    |  4 ++--
 lib/parameter.c    |  8 ++++----
 3 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index cca1ac9b39f5..77af6733a6a0 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -177,8 +177,7 @@ static int nvvar_device_dispatch(const char *name, struct device **dev,
 	return 1;
 }
 
-static int nv_set(struct device *dev, struct param_d *p, const char *name,
-		  const char *val)
+static int nv_set(struct param_d *p, const char *name, const char *val)
 {
 	int ret;
 
@@ -196,17 +195,17 @@ static int nv_set(struct device *dev, struct param_d *p, const char *name,
 	return 0;
 }
 
-static const char *nv_param_get(struct device *dev, struct param_d *p)
+static const char *nv_param_get(struct bobject *bobj, struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
 
-static int nv_param_set(struct device *dev, struct param_d *p,
+static int nv_param_set(struct bobject *bobj, struct param_d *p,
 			const char *val)
 {
 	int ret;
 
-	ret = nv_set(dev, p, p->name, val);
+	ret = nv_set(p, p->name, val);
 	if (ret)
 		return ret;
 
@@ -237,7 +236,7 @@ static int __nvvar_add(const char *name, const char *value)
 		return ret;
 
 	if (value)
-		return nv_set(&nv_device, p, name, value);
+		return nv_set(p, name, value);
 
 	ret = nvvar_device_dispatch(name, &dev, &pname);
 	if (ret > 0)
@@ -455,7 +454,7 @@ void globalvar_set(const char *name, const char *val)
 	dev_set_param(&global_device, name, val);
 }
 
-static int globalvar_simple_set(struct device *dev, struct param_d *p,
+static int globalvar_simple_set(struct bobject *bobj, struct param_d *p,
 				const char *val)
 {
 	struct device *rdev;
@@ -474,7 +473,7 @@ static int globalvar_simple_set(struct device *dev, struct param_d *p,
 	}
 
 	/* Pass to the generic function we have overwritten */
-	return dev_param_set_generic(dev, p, val);
+	return dev_param_set_generic(bobj, p, val);
 }
 
 /*
diff --git a/include/param.h b/include/param.h
index c12151134752..a15e064ddec2 100644
--- a/include/param.h
+++ b/include/param.h
@@ -30,8 +30,8 @@ enum param_type {
 };
 
 struct param_d {
-	const char* (*get)(bobject_t, struct param_d *param);
-	int (*set)(bobject_t, struct param_d *param, const char *val);
+	const char* (*get)(struct bobject *, struct param_d *param);
+	int (*set)(struct bobject *, struct param_d *param, const char *val);
 	void (*info)(struct param_d *param);
 	unsigned int flags;
 	const char *name;
diff --git a/lib/parameter.c b/lib/parameter.c
index 0f9164386c6d..274e6fcb8376 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -155,8 +155,8 @@ static int compare(struct list_head *a, struct list_head *b)
 
 static int __bobject_add_param(struct param_d *param, struct bobject *bobj,
 			   const char *name,
-			   int (*set)(bobject_t _bobj, struct param_d *p, const char *val),
-			   const char *(*get)(bobject_t _bobj, struct param_d *p),
+			   int (*set)(struct bobject *, struct param_d *p, const char *val),
+			   const char *(*get)(struct bobject *, struct param_d *p),
 			   unsigned long flags)
 {
 	if (get_param_by_name(bobj, name))
@@ -199,8 +199,8 @@ static int __bobject_add_param(struct param_d *param, struct bobject *bobj,
  * not use static arrays when using the generic functions.
  */
 struct param_d *bobject_add_param(bobject_t _bobj, const char *name,
-			      int (*set)(bobject_t _bobj, struct param_d *p, const char *val),
-			      const char *(*get)(bobject_t _bobj, struct param_d *param),
+			      int (*set)(struct bobject *, struct param_d *p, const char *val),
+			      const char *(*get)(struct bobject *, struct param_d *param),
 			      unsigned long flags)
 {
 	struct bobject *bobj = _bobj.bobj;
-- 
2.47.2



