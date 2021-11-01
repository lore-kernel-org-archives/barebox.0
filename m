Delivery-date: Mon, 01 Nov 2021 18:43:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhbL3-0005LM-Eg
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 18:43:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhbL2-0006RC-JC
	for lore@pengutronix.de; Mon, 01 Nov 2021 18:43:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3mwXR+pkB+5HagZU8ZFctvobTqsCpJPPqmk27RXGIUw=; b=yFjZ2WUj6caz+h
	SYoixgIPSVL+MsPtRcqhr5VNbj+5pUa25sLSrvNHdtfxmPtY4a4Di4+/kzIrytR1MhmPcclVYlscR
	u4DPvq+zwShAfGoGPMPhfQKmZPaIJuo34lV1w1GIFmkzuwJyeWCBjlUxkOBe7t3LvRRUY43SL8sN1
	R1d44rRRfP10cSA6KiRg+Ng7nIEeUWMrkxiZjP9tWssyGihrVx9Y0BuS/A1xBy+tEysLHOtXeRCax
	8w75yB6I3QLbIdCRwf6hCIKKhSespMCeUrqqLzh92mgGI6/cIfEIjxUf+EJwO5WvoyI3byZd6pqWa
	wraKRZJYs02/Pre0sHDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhbJ5-00GvaT-RB; Mon, 01 Nov 2021 17:41:15 +0000
Received: from smtp84.iad3a.emailsrvr.com ([173.203.187.84])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhbJ1-00GvZh-7l
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 17:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1635788467;
 bh=RdZIp+uA5DYIA3dNWnwWuHaQhMVJx9wts3T3QwVJ+C4=;
 h=From:To:Subject:Date:From;
 b=eceI/g386C2CS6hMwpaLwb8G0xGmCDi7dekz7e+uvw7G7PqRXiJEpE1iUo+NlAOVH
 Tqwv1OjZMDkKHb3VM+fKScKKGtqcIuXTTbyKatKA+8y23kNTHCsBaXt7Xnsa7kGNk3
 g1OMVNas61oLgeTOGdT+LgKq3MgIT4ZSaGKLF0Xg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp27.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id D1F7D2493E; 
 Mon,  1 Nov 2021 13:41:06 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Nov 2021 17:40:53 +0000
Message-Id: <20211101174053.68486-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Classification-ID: 7a88fee9-9c42-429f-a5e7-a1b4d30f69c7-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_104111_426023_25A24228 
X-CRM114-Status: GOOD (  10.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit 90bdf1e5d1e4 ("mci: dw_mmc: match against StarFive MMC
compatibles"), the dw_mmc driver requires a reset line called "reset".
The slightly earlier commit a3cf324593ea ("mci: dw_mmc: add optional
reset line") introduced the reset line support, but made it optional.

The device tree node for SoCFPGA's MMC device has the "resets" property,
but is missing the "reset-names" property, so MMC no longer works.
Barebox produces the error message:

ERROR: dw_mmc ff704000.dwmmc0@ff704000.of: probe failed: Invalid argument

Add the missing "reset-names" property to the "&mmc" node in
"arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
Linux device tree sources too!

Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 arch/arm/dts/socfpga.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 7789c9d3b5..56dbf0b97d 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -4,6 +4,10 @@
 	};
 };
 
+&mmc {
+	reset-names = "reset";
+};
+
 &watchdog0 {
 	resets = <&rst L4WD0_RESET>;
 };
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

