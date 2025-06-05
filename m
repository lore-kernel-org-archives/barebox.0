Delivery-date: Thu, 05 Jun 2025 23:14:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv3-0049PS-2r
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHuy-000610-Do
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dyWKeHM06pc9Fbd9Q04cLaSryiCCkk+0Su/34HLq/bY=; b=JPgfPWxxjAv/TxqlXSDkgzDmkc
	R5rVK8WdgCwijHMoYlF0MxmYHTz6LmspQP50FX/0DgiLauyUCIFdBCstlslikBDlHIpAiUymHcZJE
	BYdt1s17QVg6xm082cj7J+61yyQ+XrDIKb1AlUtc3gN2LwBIzBnvb8uTfPxTGTJVJ3VZVdPJbRnd9
	SEi9Cny4mZzX9Cgw0nculeSeJ1Un0NpP4TCeeTPclwEbEGKF+D2BtsYs+KtrpgWXfVFKuwFc4YK9d
	vTDqVM+OzQU5TDAa4QqA3B7zKh4EqxzlTqoCs9beE7kEFTNT0fANO3bkZv2LnEFEDuYh/SQ0Rcyeo
	VuvEDg5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuD-0000000GesB-1rR4;
	Thu, 05 Jun 2025 21:13:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHoA-0000000GeED-0920
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo8-00079B-OY; Thu, 05 Jun 2025 23:07:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:15 +0200
Message-Id: <20250605210726.1916656-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140730_098574_A88FC57F 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/16] drive: bus: make use of new bus_find_device helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of opencoding the iteration, let's make use of the new
helpers to lookup devices on a given bus.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/efi/efi-device.c | 17 ++++++++++-------
 drivers/net/phy/phy.c    |  7 +++----
 2 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index d5eda66cd55a..23fcef7957fe 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -30,17 +30,20 @@ static int efi_locate_handle(enum efi_locate_search_type search_type,
 				   buffer);
 }
 
+static int efi_device_match_handle(struct device *dev, const void *handle)
+{
+	struct efi_device *efidev = container_of(dev, struct efi_device, dev);
+	return efidev->handle == handle;
+}
+
 static struct efi_device *efi_find_device(efi_handle_t handle)
 {
 	struct device *dev;
-	struct efi_device *efidev;
 
-	bus_for_each_device(&efi_bus, dev) {
-		efidev = container_of(dev, struct efi_device, dev);
-
-		if (efidev->handle == handle)
-			return efidev;
-	}
+	dev = bus_find_device(&efi_bus, NULL, efi_device_match_handle,
+			      efi_device_match_handle);
+	if (dev)
+		return container_of(dev, struct efi_device, dev);
 
 	return NULL;
 }
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index d9f50f45f441..9635c816c330 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -374,10 +374,9 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 		}
 	}
 
-	bus_for_each_device(&mdio_bus_type, dev) {
-		if (dev->of_node == phy_node)
-			return container_of(dev, struct phy_device, dev);
-	}
+	dev = bus_find_device_by_of_node(&mdio_bus_type, phy_node);
+	if (dev)
+		return container_of(dev, struct phy_device, dev);
 
 	return NULL;
 }
-- 
2.39.5



