Delivery-date: Wed, 17 Sep 2025 17:51:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRm-0047pw-0S
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRj-0000wn-JB
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c1Tp1ZWVrvltmEQRs8UT5MzXmkMAcxbg+hZ9Rk0NIsM=; b=d4ygbgkFFDqewMGjXop5nw1FfZ
	XD1eNT7gfHT/crBwA2+WgFV7vdnhpE04Wm+5OCbXQpynvjI6u92VB8FnzkxPQnEOFigilXjAk2Fel
	yN/IVrQ5i7161MRKHzIK7TkAHWAdIhM8t7/4/7oob8ToG67VeADgKa6z+vYSBa0HLl3vzT7JBlPL/
	2XJZmEj4BM0X7rWza4BeN56QezZFAjDz0070ZXZk3UGpvnSNkQvUGOzSk+niwUnK5Yh5lERI2GPuf
	iVeLyrLYpNQYxPK9ozvhNPB2ZbrItckvFPBDxeK+n8RomaJ49pUfP/E3l44iM/D2EpxHsP0e2Nll2
	PqK8MbTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRI-0000000CtUR-0slO;
	Wed, 17 Sep 2025 15:51:24 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRG-0000000CtAB-0bxu
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:23 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoCC032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:02 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-7-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=1557;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=i/KEHitcurINwiYRJNZgp2u1KutenidPk+G2DgqrphM=;
 b=asb6dcdZIE3VsLNeauOxjYPdwoP0LX1NPpCpl/4I2lG7n/ivZ6mnaMPbmdeTwWBbqKkm8fXOX
 TA3AWgLVzVTB8dwQhrOst0YSc/Nv1jKT1BFDVHTkQFydfaATA/KBaX4
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085122_464196_87970769 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/11] gpio: dw: support numbering via aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This device driver is OF-only, so reflect that in the Kconfig and have
it parse aliases if available to derive its id.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/Kconfig   | 1 +
 drivers/gpio/gpio-dw.c | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7caa1aa96eb3c65982f7ecea3af07c8388bf7349..17d5587ea8cf46b1c356d5c11e1ea2c35ba8f269 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -201,6 +201,7 @@ config GPIO_TEGRA
 
 config GPIO_DESIGNWARE
 	tristate "Synopsys DesignWare GPIO driver"
+	depends on OF_GPIO
 	help
 	  Say Y or M here to build support for the Synopsys DesignWare APB
 	  GPIO block.
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index e6eba6b423f5e997960ea39aff641718a8b0af42..98668c0a2d548e8dbac6e88180da25d28ae108e4 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -114,6 +114,8 @@ static int dw_gpio_add_port(struct device *dev, struct device_node *node,
 	chip = xzalloc(sizeof(*chip));
 
 	chip->chip.ops = &dw_gpio_ops;
+
+	dev->id = of_alias_get_id(dev->device_node, "gpio");
 	if (dev->id < 0)
 		chip->chip.base = DEVICE_ID_DYNAMIC;
 	else
@@ -181,7 +183,7 @@ MODULE_DEVICE_TABLE(of, dwgpio_match);
 static struct driver dwgpio_driver = {
 	.name = "dw-apb-gpio",
 	.probe = dw_gpio_probe,
-	.of_compatible = DRV_OF_COMPAT(dwgpio_match),
+	.of_compatible = dwgpio_match,
 };
 
 postcore_platform_driver(dwgpio_driver);

-- 
2.43.0



