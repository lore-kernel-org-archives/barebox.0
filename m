Delivery-date: Mon, 11 Aug 2025 08:44:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGh-009Ffk-1Z
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGg-0002Up-TB
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4VR23BB/XU66wJ9i4VSnRY5HKRoPN3YgTaLdjhZyqQ=; b=0JTiqPbCcuVUlc
	s46l0/pjv3a5DjS+CDVUwDsPKVzdeOMjKNDSWlkc4y53rG2hhPQa5He2J07W4LImuTb8XDe7K5tSl
	NOwC0WZPxVTttgh5ry3BGGv3JelejO/VPhgYfBhRUhHv4u2dYueBdEajwRZNBxOIGtX4Ul5bCb2/Z
	uPF/ayzm95WDzW32TRjF9Ew37K3yweaW48+dpb/rxNA8CAQw9TLOeU2oG01rbzg0BMMq3LS4C0Lw6
	VkZEFL0hfLxG/6ZbAWRi8Uwwaf5lnukhIYWzI2buXSMR2gvJJViauYZeQam5u2VDN80j8UHHXHCV1
	quFZX7vgFvbt7ngs5bYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMG2-00000006cji-1dP1;
	Mon, 11 Aug 2025 06:43:46 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD9-00000006cT1-3MRG
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=Z4VR23BB/XU66wJ9i4VSnRY5HKRoPN3YgTaLdjhZyqQ=;
	b=tuhqGr+VUPZjbSuBMsEpDzAgA6SsWijWZXiXIdq8+vOoc6eZWazLY9GOCypYgFadwk2a7OZQJoa6F
	 bGsct4kSi71RUvyoiA5UbcjCoZAqNlTt4pcwP9FYrVa/Cl/l0iWX9ZlrfmiRADfGHFnNAZARO8tIhx
	 BBMNrAieSjeJEwKeOFYfGY6ktBU6bS6M/umZejM9U7KFyV0tUcbJUrqc6yglOkkFE8Alr4blaupODW
	 muBI34S9597aWQGTlUvL2P/9yB7S4DESeCzgUMd5tWs2r89QW+tVNr3WRhop/nRUrcUox3BzStBqc8
	 oOTsIzh8wobMNqnD805IRY+JyJBIRYw==
X-MSG-ID: 19bd3175-767e-11f0-855f-005056817704
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:23 +0200
Message-ID: <20250811064026.753776-6-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234047_973668_C7621690 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] aiodev: rockchip_saradc.c: Add support for RK3576
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3576 has a SARADC v2 with 8 channels and 12 bit resolution.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/aiodev/Kconfig           | 2 +-
 drivers/aiodev/rockchip_saradc.c | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index e1edc25320..1c7bf16546 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -60,7 +60,7 @@ config STM32_ADC
 
 config ROCKCHIP_SARADC
 	tristate "Rockchip SARADC driver"
-	depends on ARCH_RK3568 || COMPILE_TEST
+	depends on ARCH_RK3568 || ARCH_RK3576 || COMPILE_TEST
 	depends on OFDEVICE
 	help
 	  Support for Successive Approximation Register (SAR) ADC in Rockchip
diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index 152d38ecc5..f1efab5233 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -263,6 +263,12 @@ static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
 	.read = rockchip_saradc_read_v1,
 };
 
+static const struct rockchip_saradc_cfg rk3576_saradc_cfg = {
+	.num_bits = 12,
+	.num_channels = 8,
+	.read = rockchip_saradc_read_v2,
+};
+
 static const struct rockchip_saradc_cfg rk3588_saradc_cfg = {
 	.num_bits = 12,
 	.num_channels = 8,
@@ -271,6 +277,7 @@ static const struct rockchip_saradc_cfg rk3588_saradc_cfg = {
 
 static const struct of_device_id of_rockchip_saradc_match[] = {
 	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
+	{ .compatible = "rockchip,rk3576-saradc", .data = &rk3576_saradc_cfg },
 	{ .compatible = "rockchip,rk3588-saradc", .data = &rk3588_saradc_cfg },
 	{ /* end */ }
 };
-- 
2.47.2



