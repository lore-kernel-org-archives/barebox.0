Delivery-date: Thu, 12 Jun 2025 12:07:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqi-006TYg-0N
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqh-00079A-FR
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1CdnUNrx1z3tRGtDBo75KZwN1kXsCqjrEPyfofLGfIc=; b=Ky1RzLYtzZ/HSC67WKa7/Nbo/T
	Kv/Hzc66nb0+tx5rITXH19oFfTScRAW7sjdo9enYG8p8ci6u/5rrm2UjhLJ0lxRwOJTkphVIYhTc6
	NnPBzCkbFbvDuuVDYZCcy/aysFWcVAWmJ2oCKQ57bQ7iikLUHeaupnEMENQtNvWPgo0cCfbR9siAB
	oLtMksxqs0fRKjo3Xq42qdSystBCRqgUC1XNEP2BMZgZPlNGiYpiUF4PwuHuIss9lE809FewJu3vO
	n5wP1JAd9WZsjdEBp8hCbwEP2z8biYeA8S3hRlFXmQaPCLGua6eE0Vtwnoy6AHnNw8XFvoCx/M3Q5
	FGnZ1ygw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPeqF-0000000Cv4A-0fr7;
	Thu, 12 Jun 2025 10:07:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdjD-0000000Cjsq-0UNS
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:56:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPdjB-0001k5-EM; Thu, 12 Jun 2025 10:56:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 10:56:03 +0200
Message-Id: <20250612085603.4190573-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612085603.4190573-1-a.fatoum@barebox.org>
References: <20250612085603.4190573-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015607_157007_F7861B0A 
X-CRM114-Status: UNSURE (   6.65  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ci: container: add device-tree-compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use with mkimage, we need dtc in the container image as well.
This allows us to avoid having to change PATH to point at our vendored
version.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index 2da786c69925..644dc63ad292 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -51,6 +51,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	python3-yaml \
 	virtualenv \
 	sudo \
+	device-tree-compiler \
 	u-boot-tools \
 	yamllint \
 	yq \
-- 
2.39.5



