Delivery-date: Fri, 22 Mar 2024 17:50:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6E-0007M7-2U
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6E-0002O2-6L
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ygGeLKqkB7RhDcQ+ngLmb70626nyZLIw6/if87vcpkI=; b=mISyTTaBciWvvxokpZ35l7h6KA
	1WccBWDZPA/wid98Zs4Y1GtHF05O3MzYGp0RFQsyGPgtzG5v8tcCpsFn1CvS42lgz8C6ff9fmzfUe
	1LmtZQTNBQrdekn2wZnqvjN38GlbVk+DWtyxgwJ+rDxhavpLFEtd0I/oYLF1/qVujxpkZ0W3d0JuM
	tVhlsU6E4WmTT2HR8UTw/ROlLLUmCjBt+MnoFvJXX/C/gVjV5E32oNCp50GyPdrNmtI6Az1U3rgZI
	qgHXxEeBlOjp6NRmItIWJIaeM0UateNYLEBjxZiKvsf+mc9dk2o8rK1TyqW0oWjuKDQ77Xm1+SpBf
	EXvbveng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5m-000000081Dd-2rYY;
	Fri, 22 Mar 2024 16:50:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5c-0000000816z-3qDK
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:49:59 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Qk
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:50 +0100
Message-Id: <20240322164953.1772129-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164953.1772129-1-m.felsch@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094957_091919_1AF68238 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] FIT: expose useful helpers
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
index bf1562315b40..1e5d70caaaae 100644
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



