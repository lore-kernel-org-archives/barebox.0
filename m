Delivery-date: Tue, 17 Oct 2023 16:55:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTJ-00BsdG-Mm
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTI-0003VO-8S
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBkZNs1RjYdbydCDBLiJWEhqNgw0hoHlt/fQ6zyfKPc=; b=zbXWy22Tk95SRUehxks/nw5NIu
	GWUlxdxZdoHs0oQ5wI84eLfx9uJmtKJctTbco2rFIg4VVVKGGTXOnsMWimQWUk40dz0m1MERpCC/h
	HNrS1pH8NcwgZathKDuXwnnjX+ptobi+wH5Jy8DgSTzjUyfpSt35OG8/52tw9KwW+DVlcUCTE6hIA
	g0WtqSJ9pjR3BXVkHQedbsO31wuhW0RYvW7qLdzHwUAiNoy/b05IRybhfRqeiluAKccsetD/ejYgk
	EOAIZu7YlShlIYp3nhN2h0VXweOiNQtOf56nA2NKcdrBdXtq78f1Z8RMi7UJVyEq3N+Z5qoDpST/r
	IJ89w6Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslS1-00Ced4-0R;
	Tue, 17 Oct 2023 14:53:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ2-00CcMG-0I
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-Is
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:10 +0200
Message-Id: <20231017145131.3069283-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075138_186473_62D17E12 
X-CRM114-Status: UNSURE (   7.27  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/29] ARM: i.MX: introduce build_imx8m_habv4img
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Similar to the helper for i.MX6, this allows us to build HAB enabled
images by selecting KConfig symbols. So far I have only tested signed
images, so there is no support for usb-signed or encrypted images yet.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 images/Makefile.imx | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 8f6e8740d165..76a0f606fe35 100644
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
2.39.2



