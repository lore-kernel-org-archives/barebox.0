Delivery-date: Thu, 01 Sep 2022 12:43:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oThfS-003PJz-Ak
	for lore@lore.pengutronix.de; Thu, 01 Sep 2022 12:43:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oThfS-0002S5-SM
	for lore@pengutronix.de; Thu, 01 Sep 2022 12:43:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b9xbI10vFb31CmRgl3dBwHHUDq21RRBCVaaLk0eN9Hc=; b=xKh7W0R582kTf52dmf84az0Bp0
	WIcbMJ02/EtBI9YNzmXTCme9stLTlCB5gVV9ue+qzN/V2C2YzGfjJI74A48tnKtEbS1ERsDDHd4QW
	56gyLrcbHK6US2go9umQ9R1m6WRDkoU2VTIFvnU4E3IysCTKhiLbmJoprCnPuoCqLJmqECKbPAqhq
	teIao72MF765cB+sMo9UePSwTi1/F5QdX6ClKeIpxIoZKIw+GBGmxkrv2n2Uwv6cyg7i5Jk8doBwr
	PO1wZzQ37ZJ3iPJf3V7PmAWtY92Zy7kNKlnD0aXAVIcdOEHJlcyVw9dzMrvL6aHyWFDxsoBgdMLsr
	j6m3F+4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oThe6-00B5v3-NR; Thu, 01 Sep 2022 10:42:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oThe1-00B5tw-1N
	for barebox@lists.infradead.org; Thu, 01 Sep 2022 10:41:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oThdz-0002Dj-QF; Thu, 01 Sep 2022 12:41:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oThdx-003HV1-7j; Thu, 01 Sep 2022 12:41:55 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oThdy-000iYx-CL; Thu, 01 Sep 2022 12:41:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Sep 2022 12:41:53 +0200
Message-Id: <20220901104153.171235-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_034157_099027_7DCDEA3A 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: gadget: fsl_udc: add imx6_barebox_(load/start)_usb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These can be called from barebox PBL when booted from USB to continue
USB boot. This isn't necessary in the general case when RAM setup is
done via DCD, but for cases where setup is done in PBL, these helpers
come in handy. Tested on i.MX6Q.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc_pbl.c | 11 +++++++++++
 include/soc/fsl/fsl_udc.h        |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/drivers/usb/gadget/fsl_udc_pbl.c b/drivers/usb/gadget/fsl_udc_pbl.c
index 0fbe941b1222..8b714d4c8b02 100644
--- a/drivers/usb/gadget/fsl_udc_pbl.c
+++ b/drivers/usb/gadget/fsl_udc_pbl.c
@@ -4,6 +4,7 @@
 #include <usb/ch9.h>
 #include <soc/fsl/fsl_udc.h>
 #include <mach/imx8mm-regs.h>
+#include <mach/imx6-regs.h>
 
 static void fsl_queue_td(struct usb_dr_device *dr, struct ep_td_struct *dtd,
 			 int ep_is_in)
@@ -199,6 +200,16 @@ int imx_barebox_start_usb(void __iomem *dr, void *dest)
 	bb();
 }
 
+int imx6_barebox_load_usb(void *dest)
+{
+	return imx_barebox_load_usb(IOMEM(MX6_OTG_BASE_ADDR), dest);
+}
+
+int imx6_barebox_start_usb(void *dest)
+{
+	return imx_barebox_start_usb(IOMEM(MX6_OTG_BASE_ADDR), dest);
+}
+
 int imx8mm_barebox_load_usb(void *dest)
 {
 	return imx_barebox_load_usb(IOMEM(MX8MM_USB1_BASE_ADDR), dest);
diff --git a/include/soc/fsl/fsl_udc.h b/include/soc/fsl/fsl_udc.h
index 9fb6da58a146..aa1db2fb3816 100644
--- a/include/soc/fsl/fsl_udc.h
+++ b/include/soc/fsl/fsl_udc.h
@@ -382,6 +382,9 @@ struct ep_td_struct {
 int imx_barebox_load_usb(void __iomem *dr, void *dest);
 int imx_barebox_start_usb(void __iomem *dr, void *dest);
 
+int imx6_barebox_load_usb(void *dest);
+int imx6_barebox_start_usb(void *dest);
+
 int imx8mm_barebox_load_usb(void *dest);
 int imx8mm_barebox_start_usb(void *dest);
 
-- 
2.30.2



