Delivery-date: Mon, 13 Mar 2023 14:43:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSm-0061Pg-Hm
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSk-0005DZ-28
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOs3RLrKKDmrbzbDlU0ethdtpTGsrDGH4dQBZ1dHrsY=; b=ThOI+MQzWECqaxPnYW4/jQ+QNe
	Um+D2nEsh36D0W2hcHXwichGcrYsQvJEWv/PTyC2rGYIoyjKfxfmVSUqadG0SL4LOyseTa3sFaci2
	MyXYhwbVi4kuLK574x7Ob3uvTx2VyrtLS4A/rTOWOsyTGtIEBwTpysW/JOW/2/hqtQuuyJZcajS49
	MB8LSpcsA6/j7APmlh6mwLgIh+MXiw53aqPE2ew1V7USOAmO6sDXUkCKPX3zpICQNDxtxwsOfY16v
	LaMeL9YO9MGpwks0V2WtlMKM/J6PHI5leWp0XmavjP/k3BOwZufc8XBtE9f5qFfNP3hTrMNCTPl2K
	VE9llOig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRQ-005w5Y-5K; Mon, 13 Mar 2023 13:42:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQr-005vkp-Gc
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQq-0004N9-BY
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-11-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064145_576492_CBDB613B 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/23] ARM: i.MX8M: Add QSPI boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8M platforms support booting from QSPI NOR flashes via the
FlexSPI boot option. This commit adds the support to load the image from
QSPI NOR flashes into the RAM.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 335cc7713f..d8d69a979c 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -115,6 +115,9 @@ void imx8mm_load_bl33(void *bl33)
 				barebox_image_size - barebox_pbl_size);
 		}
 
+		break;
+	case BOOTSOURCE_SPI:
+		imx8mm_qspi_load_image(instance, false);
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -152,6 +155,9 @@ void imx8mp_load_bl33(void *bl33)
 	case BOOTSOURCE_SERIAL:
 		imx8mp_bootrom_load_image();
 		break;
+	case BOOTSOURCE_SPI:
+		imx8mp_qspi_load_image(instance, false);
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();
@@ -189,6 +195,9 @@ void imx8mn_load_bl33(void *bl33)
 	case BOOTSOURCE_SERIAL:
 		imx8mn_bootrom_load_image();
 		break;
+	case BOOTSOURCE_SPI:
+		imx8mn_qspi_load_image(instance, false);
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();

-- 
2.30.2



