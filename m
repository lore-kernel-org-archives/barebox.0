Delivery-date: Mon, 05 Aug 2024 14:23:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sawkj-006UKJ-1a
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 14:23:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sawki-0002gb-QC
	for lore@pengutronix.de; Mon, 05 Aug 2024 14:23:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B+uDt0OSeOYCm5IH/d4Kc9H3ochbApR+dhDTYL+Ii6Y=; b=IADz5gn5ol1b13rgxQ+W5DYqGh
	HhHHxN/cNeGJeqSLSUxKODl3KO/0FQeEfKoh3vom4w9hmsKQBwFiRnyf9yEt9Hub7+XhF8r9UlpEU
	TEjmxx1ZbCV0P7gZ3OPgagkOocYcbOS82Hv34QGmu1AAtI4jOnb/8X1/Fl/w7tXnij9ssaWpFlhUu
	yMKUW9sd0/pbpNb9Q+8hnJ6ZmOl2SqvC86rO2yZJS7f5EwtLeQNjyM+1eRwYWwQoMaYHORCtmwy6/
	mfBJYmkywa+aV1LcAxcaROBBVCO4V29wR6mnChB0R7B4WaNzuwxYktRqGO5I0xWYnXk/wve+/bVam
	V5OPKizw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawkG-0000000FnUk-1Syi;
	Mon, 05 Aug 2024 12:23:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawkD-0000000FnTm-2LvG
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 12:23:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sawkC-0002aa-1H; Mon, 05 Aug 2024 14:23:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sawkB-004i2M-KK; Mon, 05 Aug 2024 14:23:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sawkB-00FJIm-1k;
	Mon, 05 Aug 2024 14:23:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Aug 2024 14:23:17 +0200
Message-Id: <20240805122317.3649096-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_052321_621988_A0B3A84E 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: [PATCH] parameter: fix parameter name to reflect usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Everywhere the max parameter is used, it's assumed it has the value of
the highest index into the names array + 1. As counting begins from
zero, rename it to num_names in the prototypes for clarity.

This is already the name used internally in struct param_d.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/param.h | 16 ++++++++--------
 lib/parameter.c |  4 ++--
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/param.h b/include/param.h
index 5d4f7f3db52f..1ccb6a26eb78 100644
--- a/include/param.h
+++ b/include/param.h
@@ -68,7 +68,7 @@ struct param_d *dev_add_param_enum(struct device *dev, const char *name,
 				   int (*set)(struct param_d *p, void *priv),
 				   int (*get)(struct param_d *p, void *priv),
 				   int *value, const char * const *names,
-				   int max, void *priv);
+				   int num_names, void *priv);
 
 struct param_d *dev_add_param_tristate(struct device *dev, const char *name,
 				       int (*set)(struct param_d *p, void *priv),
@@ -83,7 +83,7 @@ struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
 				      int (*set)(struct param_d *p, void *priv),
 				      int (*get)(struct param_d *p, void *priv),
 				      unsigned long *value,
-				      const char * const *names, int max,
+				      const char * const *names, int num_names,
 				      void *priv);
 
 struct param_d *dev_add_param_ip(struct device *dev, const char *name,
@@ -164,7 +164,7 @@ static inline struct param_d *dev_add_param_enum(struct device *dev,
 						 int (*get)(struct param_d *p, void *priv),
 						 int *value,
 						 const char * const *names,
-						 int max, void *priv)
+						 int num_names, void *priv)
 
 {
 	return NULL;
@@ -176,7 +176,7 @@ static inline struct param_d *dev_add_param_bitmask(struct device *dev,
 						    int (*get)(struct param_d *p, void *priv),
 						    unsigned long *value,
 						    const char * const *names,
-						    int max, void *priv)
+						    int num_names, void *priv)
 {
 	return NULL;
 }
@@ -350,20 +350,20 @@ static inline struct param_d *dev_add_param_enum_ro(struct device *dev,
 						    const char *name,
 						    int *value,
 						    const char * const *names,
-						    int max)
+						    int num_names)
 {
 	return dev_add_param_enum(dev, name, param_set_readonly, NULL,
-				  value, names, max, NULL);
+				  value, names, num_names, NULL);
 }
 
 static inline struct param_d *dev_add_param_bitmask_ro(struct device *dev,
 						       const char *name,
 						       unsigned long *value,
 						       const char * const *names,
-						       int max)
+						       int num_names)
 {
 	return dev_add_param_bitmask(dev, name, param_set_readonly, NULL,
-				     value, names, max, NULL);
+				     value, names, num_names, NULL);
 }
 
 /*
diff --git a/lib/parameter.c b/lib/parameter.c
index c587d10eabcc..bf9e83152b77 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -718,7 +718,7 @@ struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
 				      int (*set)(struct param_d *p, void *priv),
 				      int (*get)(struct param_d *p, void *priv),
 				      unsigned long *value,
-				      const char * const *names, int max,
+				      const char * const *names, int num_names,
 				      void *priv)
 {
 	struct param_bitmask *pb;
@@ -731,7 +731,7 @@ struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
 	pb->set = set;
 	pb->get = get;
 	pb->names = names;
-	pb->num_names = max;
+	pb->num_names = num_names;
 	p = &pb->param;
 	p->driver_priv = priv;
 	p->type = PARAM_TYPE_BITMASK;
-- 
2.39.2



