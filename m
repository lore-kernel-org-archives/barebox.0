Delivery-date: Wed, 05 Jul 2023 16:43:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jY-00GKR1-4a
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:43:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jV-0001SA-Hu
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:43:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vLF9a4JhP2QlNqZ16mJMLJcj8UJyXDIeiaqKP4dk0v0=; b=AOPRPmuPklJdM2ZJg6dbm/T2GC
	pIXK0rur+LCBnjK+UpoWl2wLtDN8pTYrQkDvHySeBuj8P2Bg/Hqqm4hZpYznOptbnCDd8I+2g6UY5
	h4hM8eQIiuW18jNB81w92VhTlMBSHSwBT2vP80oKsr3cAjFZjiORsiS1CV84WZbcrxpGVDIAQkXZ+
	gwRsfkxuEgX48qkgLODsspKreRo3oLjbS31s57i52VKydAtEKLb3XRYCVR1FAIjJBh2zM74fCJnHX
	008LUXKXe8Z40DB+ySvvXqXe2x8T0eH8BwVvKF0Wl3Owg39hvmm2aeW3BQs+6OqNU01CdBM+CtXqR
	OVzQm49A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iF-00GAq2-2T;
	Wed, 05 Jul 2023 14:42:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iB-00GAnT-1p
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:42:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH3iA-00012s-8u; Wed, 05 Jul 2023 16:42:30 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jul 2023 16:42:18 +0200
Message-ID: <20230705144219.504194-5-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074231_602890_CE9F67FF 
X-CRM114-Status: UNSURE (   7.66  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] ARM: i.MX: introduce build_imx8m_habv4img
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Similar to the helper for i.MX6, this allows us to build HAB enabled
images by selecting KConfig symbols. So far I have only tested signed
images, so there is no support for usb-signed or encrypted images yet.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 images/Makefile.imx | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 65512e0e07..5691f2d70f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -21,6 +21,19 @@ endif
 )
 endef
 
+define build_imx8m_habv4img =
+$(eval
+ifeq ($($(strip $(1))), y)
+	pblb-y += $(strip $(2))
+	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
+	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.pimximg
+	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.psimximg
+	image-y += barebox-$(strip $(4)).img
+	image-$(CONFIG_HABV4_IMAGE_SIGNED) += barebox-$(strip $(4))-s.img
+endif
+)
+endef
+
 # %.imximg - convert into i.MX image
 # ----------------------------------------------------------------
 
-- 
2.41.0



