Delivery-date: Mon, 22 Apr 2024 12:24:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqY-00BO5p-2J
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 12:24:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqY-0007hQ-5B
	for lore@pengutronix.de; Mon, 22 Apr 2024 12:24:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tXYE1m5u/MEMz0Ru5OO7zPm8cdiaGOY+ntegAXF+0UA=; b=vLpK0tADVYZYnqlqLHmvMyoFbu
	yHLl6zQWMxOjuR4jiGCpRHgxwGrIC9ab3J984AY82UhKF2Yazn9EFlG3JUk94DK6D3+9SvmVgPPzi
	rwQQZBfBKSWnw2+1D5F8DvNn4PdnMy0L4uo/vhmar77mtrwKSfFhSRpQzf/xIZznbfpHrZco5UpSP
	3+MvCUMk44YZLwEYX8iuumpJy6ZHrxDKB881Q0GXo1kfPA9rsDhBUOoBG90co6oopdYo5OsGVSWrn
	T4DWyaz4f9ucVJXex0emGf8AaoLlEq47T3JLcwiTtUrX0HPiK1ZpHc5tehzPx85qY0NqaQzAu/zDa
	0wjqHfLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqqA-0000000D8VQ-0v8V;
	Mon, 22 Apr 2024 10:24:02 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqq6-0000000D8Tp-3ANw
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 10:24:00 +0000
Received: from mailer.emlix.com (unknown [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id 830F05FE3D
	for <barebox@lists.infradead.org>; Mon, 22 Apr 2024 12:23:32 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
Date: Mon, 22 Apr 2024 10:16:49 +0000
Message-ID: <20240422102232.551842-4-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240422102232.551842-1-jonasrichardsen@emlix.com>
References: <20240422102232.551842-1-jonasrichardsen@emlix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_032358_981969_9597AB8A 
X-CRM114-Status: GOOD (  12.26  )
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
Subject: [PATCH 3/3] raspi: add a fixup for the `dma-ranges` property of the `/emmc2bus` dt node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As mentioned in `bcm2711.dtsi`, line 412, the `dma-ranges` property
of the `/emmc2bus` node is overridden by the video core firmware:
> /*
>  * emmc2 has different DMA constraints based on SoC revisions. It was
>  * moved into its own bus, so as for RPi4's firmware to update them.
>  * The firmware will find whether the emmc2bus alias is defined, and if
>  * so, it'll edit the dma-ranges property below accordingly.
>  */
This change adds a fixup that copies the correct value of this property
from the video core device tree.

Signed-off-by: Jonas Richardsen <jonasrichardsen@emlix.com>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 3c685852d3..04e1a899f1 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -375,6 +375,7 @@ static void rpi_vc_fdt_parse(struct device_node *root)
 	register_vc_property_fixup(root, "/reserved-memory/nvram@0", "reg");
 	register_vc_property_fixup(root, "/reserved-memory/nvram@0", "status");
 	register_vc_fixup(root, "/hat");
+	register_vc_property_fixup(root, "/emmc2bus", "dma-ranges");
 	register_vc_fixup(root, "/chosen/bootloader");
 	chosen = register_vc_fixup(root, "/chosen");
 	if (!chosen) {
-- 
2.42.0



