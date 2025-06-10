Delivery-date: Tue, 10 Jun 2025 20:49:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP42g-005tMU-0B
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 20:49:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP42f-0002zT-Fv
	for lore@pengutronix.de; Tue, 10 Jun 2025 20:49:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hbfn47DmivIQPgZ6aIYE20bxQJVog1BfFbVJ4fqH63M=; b=FMdAdzc/c4G40zqCxlV4w276ck
	7zuERqxY5gJ3E4aAU8FCGdMo9Wdj7alrL1FBbal9ZxyJOzkCxFyyLClDfu9nPC6+TxOIBOAVGTaLj
	D+41/irelkRdoZgxZFsRAYwWXN2YSVKGKN/pEh2jisXBxlZKQnvxnUAr1SwIrNGgnYqyNQ4JN8n7r
	+4raNOdvTl4yDSCblZ8H7NBHbLQC54LigfOYqh0uRxMHmYgimKMkhjMIZo1a2xTgVtKGVBDoLS3hG
	p8G6NEVyDGMmcH3ZvOC6ewqHQpIcwSCb8LCMfxcv/StDctan0hL/5L+MMY/E5aaBXVuFbbXnJl6Kq
	IIRlmbMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP428-00000007qSW-2lU7;
	Tue, 10 Jun 2025 18:49:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0wZ-00000007K72-1ZjE
	for barebox@bombadil.infradead.org;
	Tue, 10 Jun 2025 15:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=hbfn47DmivIQPgZ6aIYE20bxQJVog1BfFbVJ4fqH63M=; b=lXT2z0fuYwxLiVc9Z8c0SmKuPS
	nsM0fSPV6a8ZrNhdLzmdoFeaLOXGcsk+tHS3DDNoJoduzSLG8zpYvmgzGA7C9qwzDWWrenCn+5/ra
	6u8Kt/PrEqzXWGB02+II4SYXb09GKuE9A0+JObjtyy2U1JWCFwi6lYcPzoELvOnELv8jQekLZf+VM
	QN2eagW4me3kLUz0SGLCNzMTF+0kAq2Mj2+V8ZRi8UxbmLaeVGZPNK+qdVDZfapSdS/577Jjg6eK0
	1Y5a778u4wpxqpomGGh3aChjmSNyFGIvJuYmWi3+h1pzBYJgf+pzpSWz26VQdpMyAB3KGJLDYtdg+
	1f6WYzLA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0wX-00000001u6H-0z1a
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:31:19 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uP0wU-0005tF-Jk; Tue, 10 Jun 2025 17:31:14 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 10 Jun 2025 17:30:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-imx8mp_ecspi-v1-2-d14d1e9d65f3@pengutronix.de>
References: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
In-Reply-To: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1833; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=V2Ti0y/Msck165vXkYCKn6liN05KxIYGKpoGDzGn1M4=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYsjw8D+05Vn79oi9Fqfmme/arn3Gjpep51r+4TVrfh95u
 MGm/5ZBVkcpC4MYB4OsmCJLrJqcgpCx/3WzSrtYmDmsTCBDGLg4BWAiKjcY/qdvYt3JyWig/+e+
 Y/rmvxaPerK3sZ/dMSv1wP0TERXcPGkM/zPskmUfMV6eEqrb9df+0Oe/EkvnLFBUU/6vdj/x9kc
 GYVYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_163117_423238_ABC772F5 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: Add bbu support for eCSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adds a barebox-update handler for i.MX8M eCSPI NOR flash

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 9 +++++++++
 include/mach/imx/bbu.h               | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 66a8ae10e507b601429526afc0122adca31ce4d6..8ed447f68808eb4ab923328318d814363f906e32 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -627,6 +627,15 @@ int imx6_bbu_internal_spi_i2c_register_handler(const char *name,
 					       unsigned long flags)
 	__alias(imx53_bbu_internal_spi_i2c_register_handler);
 
+int imx8m_bbu_internal_spi_i2c_register_handler(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
+{
+	flags |= IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER;
+
+	return imx53_bbu_internal_spi_i2c_register_handler(name, devicefile, flags);
+}
+
 /*
  * Register an VFxxx internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index 9a35b0074dd42575d06995d491d9fd2b22305cd5..81ee9c8698d907d70aa807c1320a19ba43a96e68 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -69,6 +69,9 @@ int imx7_bbu_internal_mmcboot_register_handler(const char *name, const char *dev
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
+int imx8m_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
+		unsigned long flags);
+
 int vf610_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 

-- 
2.39.5



