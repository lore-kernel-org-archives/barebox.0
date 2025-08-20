Delivery-date: Wed, 20 Aug 2025 12:30:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5E-002aOm-1v
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5D-0007Ts-08
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=miHlZL6HFswbM2CSEMhb9YbodTpL9nQ8JCWJVutZ0Og=; b=3lnAdDcG6Z2f6/ZDYCEgOYsv4S
	zw6XFwRwbmGTSc6+h5u0C9UfNfTW2jQP0s3gIEhfZEh5/qcaH43AZ6Cxo68l1xfwQYQBjgfiD+Uvz
	oxi0QcCBcY5UduaExenTvl3n44F7IWvDSM692v33d6+A6Gj4DrZEPT7ghBolUoiEIidUvLUwK48pt
	nMLM4/My9usmMeatz+LuNwD2UAjXRyWMs59PMQA2G7JILEM/7eIZTd5Y4tEFnvoI7N5zuMUEguEsC
	ONfAzN6k39RooU7yIbx+sy1S4+UBY2dp9fQZWwBquZy6HXCrwiFjKyWnEyRC23i8vx+Xer5I3idrq
	DQz0ACPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4f-0000000D9FC-2xQQ;
	Wed, 20 Aug 2025 10:29:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQu-0000000D0pA-32KE
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=miHlZL6HFswbM2CSEMhb9YbodTpL9nQ8JCWJVutZ0Og=; b=LoxxrjLyjJ87ndAJvoiaKYfPHX
	lbRKuAzkVh0Q90tbWVWTx+llWkvbPGcEOnAPWmrHG0EBkIIz2lzBMFw3uJlrL/XnDQF6nDu+kxY66
	iQeqMuoRT5sIAxN92gxE6M8EW/sOTtokgZm+F8p9WiSNt0pOsQPIKxU+8UU3U3NzC3Bg5CIU6N37r
	ryGc5TB+5Iing6F/3KSs47e5z42JcaF2dM2jCYVR1LsAad3dqCzYvGb3/SngDXwFi9EjaxYGObfVz
	ZKySAHILaHHWXUFtMKYJKg9D5BvbQYcLiOy+gEf4cDBscAY+LGFZmaM/r3/fOtogmyMWA7uh/qqoc
	yZ10NWCA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQr-00000000HWa-4AjO
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-Gc; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-6-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104838_128581_59371C6D 
X-CRM114-Status: UNSURE (   9.41  )
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
Subject: [PATCH v6 06/12] FIT: make fit_config_verify_signature public
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming FIT overlay support requires this helper, so make it public
available.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 2 +-
 include/image-fit.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0fc3b2e4aa7217a47710ef613426456420e81324..0067f46e60bc954b418aef3398e2c10856b41c02 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -694,7 +694,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	return 0;
 }
 
-static int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
+int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
 {
 	struct device_node *sig_node;
 	int ret = -EINVAL;
diff --git a/include/image-fit.h b/include/image-fit.h
index 416f1f2c1896949d2bcb7ab1a31f1aa6b5682edf..f8321aa87e11fcea642593e790a37df72a2e93b1 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -37,6 +37,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 int fit_get_image_address(struct fit_handle *handle, void *configuration,
 			  const char *name, const char *property,
 			  unsigned long *address);
+int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node);
 
 void fit_close(struct fit_handle *handle);
 

-- 
2.39.5



