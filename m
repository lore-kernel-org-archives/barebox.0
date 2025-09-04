Delivery-date: Thu, 04 Sep 2025 07:54:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu2vF-007vFE-3A
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 07:54:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu2vE-0000kr-QT
	for lore@pengutronix.de; Thu, 04 Sep 2025 07:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Kw5v6bzNLils/IGqoX1Ev25ayEXX56nauuOGxckPKU=; b=FEOo1WMBug0URu
	+qNUsR3mgVuy7YlabzhFYkskg4RZmqIYD6twDOxbFIveqsVNVU6MGIxK3fL4/K7veWnyQG73H5alD
	7oQhTQmv7tz7IPxvLflEWKF6DDsDA1CHFBmaIlj+XSamO2xL/5ek26xYz71OEfAj+CAhAzp/BwjwB
	vH7Spk5J16TusaIxcbLH4gdrCOc+cA4n78xdB0H3cNH/MO9Rt65l111CwolMI/vM2FqtirTYAlQA8
	wRdLt828f7wuGJjoG9/XM9lKRe/xDZ8D7LfOGcyF5kpl26u5+j4Mgo4HS3PmvwB4Edj0P2lJMmRKF
	yruEqGLau/BdSye7XIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu2uj-00000009Lus-0yGo;
	Thu, 04 Sep 2025 05:53:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu2uh-00000009Lu2-1wrW
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 05:53:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu2ug-0000aX-81; Thu, 04 Sep 2025 07:53:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu2uf-003g5u-30;
	Thu, 04 Sep 2025 07:53:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu2uf-0000000DA0C-3TJr;
	Thu, 04 Sep 2025 07:53:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Sep 2025 07:53:36 +0200
Message-ID: <20250904055336.3136705-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_225339_505728_3972A1A6 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: anis chali <chalianis1@gmail.com>
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
Subject: [PATCH] FIT: let fit_has_image() return bool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The return value of fit_has_image() is treated as bool by most callers.
It could return an error code though which by the callers would be
evaluated to true. Change the return type to bool and return false
instead of an error code to meet the callers expectations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c  | 10 +++++-----
 include/image-fit.h |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6d241338e4..6b44a79e9d 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -491,19 +491,19 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 	return ret;
 }
 
-int fit_has_image(struct fit_handle *handle, void *configuration,
-		  const char *name)
+bool fit_has_image(struct fit_handle *handle, void *configuration,
+		   const char *name)
 {
 	const char *unit;
 	struct device_node *conf_node = configuration;
 
 	if (!conf_node)
-		return -EINVAL;
+		return false;
 
 	if (of_property_read_string(conf_node, name, &unit))
-		return 0;
+		return false;
 
-	return 1;
+	return true;
 }
 
 static int fit_get_address(struct device_node *image, const char *property,
diff --git a/include/image-fit.h b/include/image-fit.h
index f9791ff251..c332f77bd3 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -34,8 +34,8 @@ struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
 void *fit_open_configuration(struct fit_handle *handle, const char *name,
 			     bool (*match_valid)(struct fit_handle *handle,
 						 struct device_node *config));
-int fit_has_image(struct fit_handle *handle, void *configuration,
-		  const char *name);
+bool fit_has_image(struct fit_handle *handle, void *configuration,
+		   const char *name);
 int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
 		   unsigned long *outsize);
-- 
2.47.2



