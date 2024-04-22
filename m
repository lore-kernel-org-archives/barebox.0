Delivery-date: Mon, 22 Apr 2024 12:24:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqN-00BO4b-3D
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 12:24:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqN-0007TX-50
	for lore@pengutronix.de; Mon, 22 Apr 2024 12:24:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b9WPTEUXvpv20RIal0m+3OlSsFM1zyosWshHvKiGPyI=; b=QKoMXHqPJAHDwETzSn6eCvwf61
	Jiq+PXrQj7KpZFvNiM3K7+5TAISs4VFJt+qio3WzKsTavGpalye56pirCt5xTQXW8cK0+wgdKgkDV
	sEdHrj2/KBp1fU6O9g8G/PyIP/u2N23b9R02Q9v+b55Uw0wgFU9+lPcIEGpBQa5WHoH/d34SGexV0
	UjNST1k/9MGr+r8/4Z/cYTveUi6D0vZPRKNGFYo9AGgo6jVGucjsUneUDQe9W4H1LXIoPV2vLEd6b
	qpBNSKvbo4+5/zbLfUBm7M5wbtEgAmiT6xFTvDc73kkY2peLx3AjC9tuBTF4SVOIutTcIz5jmTJjo
	jPCnmumw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqq2-0000000D8SU-14T5;
	Mon, 22 Apr 2024 10:23:54 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqpy-0000000D8RA-32bJ
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 10:23:52 +0000
Received: from mailer.emlix.com (cr-emlix.sta.goetel.net [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id 7ACCB5FE0D
	for <barebox@lists.infradead.org>; Mon, 22 Apr 2024 12:23:31 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
Date: Mon, 22 Apr 2024 10:16:48 +0000
Message-ID: <20240422102232.551842-3-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240422102232.551842-1-jonasrichardsen@emlix.com>
References: <20240422102232.551842-1-jonasrichardsen@emlix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_032350_970970_A9C63E15 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] raspi: override properties in /reserved-memory node of device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Previously, the fixups in rpi-common.c only tries to copy the
`/reserved-memory` node from the video core. As explained in
`bcm2711-rpi.dtsi`, line 58, the video core does only update the
placement information of the `/reserved-memory/nvram@0` subnode:
> /*
>  * RPi4's co-processor will copy the board's bootloader configuration
>  * into memory for the OS to consume. It'll also update this node with
>  * its placement information.
>  */
This behaviour is not achieved by the previous fixup, as this fixup
operates on the wrong node and, even if applied to
"/reserved-memory/nvram@0" would not override the already existing
properties of this node. Instead, we can use the previously added
`register_vc_property_fixup` method to achieve the desired behaviour.

Signed-off-by: Jonas Richardsen <jonasrichardsen@emlix.com>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 2245c36cbe..3c685852d3 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -372,7 +372,8 @@ static void rpi_vc_fdt_parse(struct device_node *root)
 
 	register_vc_fixup(root, "/system");
 	register_vc_fixup(root, "/axi");
-	register_vc_fixup(root, "/reserved-memory");
+	register_vc_property_fixup(root, "/reserved-memory/nvram@0", "reg");
+	register_vc_property_fixup(root, "/reserved-memory/nvram@0", "status");
 	register_vc_fixup(root, "/hat");
 	register_vc_fixup(root, "/chosen/bootloader");
 	chosen = register_vc_fixup(root, "/chosen");
-- 
2.42.0



