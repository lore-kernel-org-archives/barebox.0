Delivery-date: Thu, 13 Jun 2024 14:59:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2u-005NNX-1i
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 14:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2t-0004Tz-6N
	for lore@pengutronix.de; Thu, 13 Jun 2024 14:59:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wEJ1+04ldqub6N4dl6qmDD2Suhs9pQQU6oYeObJHGuA=; b=pD6laNA2clCYVo0v6yhA1dKEVF
	K6SnrRZSLQypCoPRbtFrPdiZfGqmi2wEhqeAsL+IFT/IriAlUMcxK5ShFHvjQi6HdTpzGtFOIdZEn
	SOtboyrXlYgmOTA5hQkTSBNQ3QmEMzPsYf679gxqXo2GQvr3mK3eI2Fy8iGQO9+hqcPvXFrfTGZNV
	yfKw4+FoSy2ETRbN6EBZBdMOdvoiRpIAMqd1hNDv+7dCv5MzWLR/eHOyL5mdm08svNLQ+XnrUSKN8
	QgvXgtzz9HAJJzNaqlNTag4Qye8gYMchnOIUfwKGD1Q2MGBYwm0MwI/Ad0NSdsOzXm+gZFDqc6HzP
	W/fdcPtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk2F-0000000GbAl-3YVS;
	Thu, 13 Jun 2024 12:58:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk27-0000000Gb4x-0a0B
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:31 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-9A
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:13 +0200
Message-Id: <20240613125818.30499-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_339851_176283C4 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/11] FIT: expose useful helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming FIT overlay support requires these helpers for performing
check on a fit image.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 4 ++--
 include/image-fit.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 7133309fbcb8..e93946a0615e 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -677,7 +677,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	return 0;
 }
 
-static int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
+int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
 {
 	struct device_node *sig_node;
 	int ret = -EINVAL;
@@ -717,7 +717,7 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	return ret;
 }
 
-static bool fit_config_is_overlay(struct device_node *conf_node)
+bool fit_config_is_overlay(struct device_node *conf_node)
 {
 	const char *overlay_pattern;
 	int no_match;
diff --git a/include/image-fit.h b/include/image-fit.h
index 0b8e94bf4635..7e0cd38fea53 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -35,6 +35,8 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 int fit_get_image_address(struct fit_handle *handle, void *configuration,
 			  const char *name, const char *property,
 			  unsigned long *address);
+int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node);
+bool fit_config_is_overlay(struct device_node *conf_node);
 
 void fit_close(struct fit_handle *handle);
 
-- 
2.39.2



