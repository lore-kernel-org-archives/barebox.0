Delivery-date: Wed, 11 Jun 2025 16:48:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPMl0-006BO9-19
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 16:48:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPMkz-0003Yg-QL
	for lore@pengutronix.de; Wed, 11 Jun 2025 16:48:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7VqV7ECwXeT9kS5Z15yfrp3Yo6VEc/K0Pvva8/DN5IM=; b=4d6DSw0lwmCHrh/7+DuiIVp/vU
	wcTHVbQXowfeAHRE1/awXfpzsP51tfpWabiNkCMQHkYIYrvqx8wW5N3IiA+zSpYuaW8kNVkMmRsSy
	OGJR2SV4Pwu/pjy3qKz6kMqS6Ax2HbC21v94dL7dfW+i35VfO1UrgH/YjJf1Cuzkwp3CTOLkkppdE
	x5C0msEwQwmuoPuVlHIcto4taPjrDgDHuHueYduB6kTjjVLnmrW7mgAdfJznPycvz2fPT/oJ+ar+Q
	uFlMXLAafzt+NGecWss+ModjUhpoN8POcFVLrHrUPEM5wh6sP7Hc7xkqeHRxw6/vcQQ7+EJxVT/ZG
	uQ8r2gyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMkf-0000000A9M8-1cpe;
	Wed, 11 Jun 2025 14:48:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPHRA-00000009QbB-1zkT
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 09:08:01 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uPHR9-0006NM-6O; Wed, 11 Jun 2025 11:07:59 +0200
From: Jonas Rebmann <jre@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 11 Jun 2025 11:07:53 +0200
Message-Id: <20250611090753.4164553-1-jre@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_020800_509860_8A92239A 
X-CRM114-Status: UNSURE (   6.31  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX8M: Add support for eCSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 6993e33baa..e6c21107a5 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -104,6 +104,9 @@ void imx8mm_load_bl33(void *bl33)
 	case BOOTSOURCE_SPI:
 		imx8mm_qspi_load_image(instance, bl33);
 		break;
+	case BOOTSOURCE_SPI_NOR:
+		imx8m_ecspi_load_image(instance, bl33);
+		break;
 	default:
 		printf("Unsupported bootsource BOOTSOURCE_%d\n", src);
 		hang();
@@ -269,6 +272,9 @@ void imx8mn_load_bl33(void *bl33)
 	case BOOTSOURCE_SPI:
 		imx8mn_qspi_load_image(instance, bl33);
 		break;
+	case BOOTSOURCE_SPI_NOR:
+		imx8m_ecspi_load_image(instance, bl33);
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();
@@ -334,6 +340,9 @@ void imx8mq_load_bl33(void *bl33)
 	case BOOTSOURCE_MMC:
 		imx8m_esdhc_load_image(instance, bl33);
 		break;
+	case BOOTSOURCE_SPI_NOR:
+		imx8m_ecspi_load_image(instance, bl33);
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();
-- 
2.39.5



