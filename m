Delivery-date: Mon, 17 Oct 2022 09:12:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKIC-00BNlN-Gb
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:12:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKI9-00067a-Sd
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:12:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E7cwQw/0W8/IJjoqyIpfHaLY0+L0u5zbJWFMdXwq7Pg=; b=FXkXF53xOqKQRu7xHkIV306UcH
	S1/jWDxiezovBjVBC4gzacTR3HxqqBdhgJVcf+s9H99/E6f274AVT+mXrtv6qmMWELCXm7Cu2WnrG
	1UfJH2LJ3ItLMBEAaFg0FMfX4eo3ljIZ5aHoz2WhW7b4HoXKBYV5qwL+R7NPgdM+vc4bq2tvELlc4
	ic64HTe8sYwQsahfVSKtE8zD9SOkYXlT7bxNe0RchDly6mPmVC8cJ2Aqh+Fq1nP2mzIk2UItpJ0VI
	Vs6Pz8sSf6swRIdueaEokPsudDCG6mxYGlkzFgcP/saUCu70Fg5LztC3trtAodUPj1riH7DVjV3By
	NAxTL6Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGu-008N2m-Mg; Mon, 17 Oct 2022 07:10:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGn-008MyO-5V
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGl-0005Ed-QZ; Mon, 17 Oct 2022 09:10:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGl-0021Ut-24; Mon, 17 Oct 2022 09:10:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGk-0067VL-GF; Mon, 17 Oct 2022 09:10:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:10:36 +0200
Message-Id: <20221017071036.1458761-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001041_240078_9C3B020D 
X-CRM114-Status: UNSURE (   8.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: gadget: fsl_udc: add imx7_barebox_(load/start)_usb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These can be called from barebox PBL when booted from USB to continue
USB boot. This isn't necessary in the general case when RAM setup is
done via DCD, but for cases where setup is done in PBL, these helpers
come in handy. Tested on i.MX7D revision 1.2.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc_pbl.c | 11 +++++++++++
 include/soc/fsl/fsl_udc.h        |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/drivers/usb/gadget/fsl_udc_pbl.c b/drivers/usb/gadget/fsl_udc_pbl.c
index 8b714d4c8b02..d2f2b9e1959e 100644
--- a/drivers/usb/gadget/fsl_udc_pbl.c
+++ b/drivers/usb/gadget/fsl_udc_pbl.c
@@ -5,6 +5,7 @@
 #include <soc/fsl/fsl_udc.h>
 #include <mach/imx8mm-regs.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx7-regs.h>
 
 static void fsl_queue_td(struct usb_dr_device *dr, struct ep_td_struct *dtd,
 			 int ep_is_in)
@@ -210,6 +211,16 @@ int imx6_barebox_start_usb(void *dest)
 	return imx_barebox_start_usb(IOMEM(MX6_OTG_BASE_ADDR), dest);
 }
 
+int imx7_barebox_load_usb(void *dest)
+{
+	return imx_barebox_load_usb(IOMEM(MX7_OTG1_BASE_ADDR), dest);
+}
+
+int imx7_barebox_start_usb(void *dest)
+{
+	return imx_barebox_start_usb(IOMEM(MX7_OTG1_BASE_ADDR), dest);
+}
+
 int imx8mm_barebox_load_usb(void *dest)
 {
 	return imx_barebox_load_usb(IOMEM(MX8MM_USB1_BASE_ADDR), dest);
diff --git a/include/soc/fsl/fsl_udc.h b/include/soc/fsl/fsl_udc.h
index aa1db2fb3816..c1abe222ba2a 100644
--- a/include/soc/fsl/fsl_udc.h
+++ b/include/soc/fsl/fsl_udc.h
@@ -385,6 +385,9 @@ int imx_barebox_start_usb(void __iomem *dr, void *dest);
 int imx6_barebox_load_usb(void *dest);
 int imx6_barebox_start_usb(void *dest);
 
+int imx7_barebox_load_usb(void *dest);
+int imx7_barebox_start_usb(void *dest);
+
 int imx8mm_barebox_load_usb(void *dest);
 int imx8mm_barebox_start_usb(void *dest);
 
-- 
2.30.2



