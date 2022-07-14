Delivery-date: Thu, 14 Jul 2022 09:29:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHV-007JWG-QD
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHT-0002Es-3d
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Ve0hQ173rNTXbn1D2rKnETzmjpvRSZwvOqEyzFPNhs=; b=UjwMc+nGsilZEJR5mYf3azmDK9
	smcWEmUSNPI6uYJsL0BOFXdWMD8bTncGwx2R413SCczuzbI/gXhArGHzoz8DurqnmLGZc5TxjrGPf
	2HuBPsHVYZ3ggV3oZT9OBn0u7pnlQi5KgG9pWNlLdWuCEPRUmNLnmeiLsdBLjTPCyp/71GPIrtRqE
	LdXvV2ZNCpFWSdhTwB03PlYm0vO8oV2N6bQkMeKdeoqaaWs3h5EhcMJRb68Iu/SS9UITM+O9Bm2aw
	sb6fAKsMjy/AhZEEocnjOFo0XHGnlRb3DSPht4HBEoJzlP8EByBu/iSrviPwaGI0YW7fSw9J6fHPL
	7IYmK3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtG3-00Boah-7u; Thu, 14 Jul 2022 07:27:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFx-00BoV9-MT
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001gE-QY; Thu, 14 Jul 2022 09:27:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqQ-2I; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vy-DB; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:18 +0200
Message-Id: <20220714072722.2863571-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002729_751600_467815AC 
X-CRM114-Status: GOOD (  11.89  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/12] imx-usb-loader: drop some casting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of casting 'bd' to struct imx_boot_data * multiple times use
an extra variable for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 974ff741bf..b2c835225c 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1258,19 +1258,22 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 	}
 	case HDR_MX53:
 	{
-		unsigned char *bd;
+		unsigned char *_bd;
 		struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+		struct imx_boot_data *bd;
 
 		*header_addr = hdr->self;
-		bd = hdr->boot_data_ptr + cvt_dest_to_src;
-		if ((bd < file_start) || ((bd + 4) > file_end)) {
+		_bd = hdr->boot_data_ptr + cvt_dest_to_src;
+		if ((_bd < file_start) || ((_bd + 4) > file_end)) {
 			printf("bad boot_data_ptr %08x\n", hdr->boot_data_ptr);
 			return -1;
 		}
 
-		*firststage_len = ((struct imx_boot_data *)bd)->size;
-		*plugin = ((struct imx_boot_data *)bd)->plugin;
-		((struct imx_boot_data *)bd)->plugin = 0;
+		bd = (void *)_bd;
+
+		*firststage_len = bd->size;
+		*plugin = bd->plugin;
+		bd->plugin = 0;
 
 		break;
 	}
-- 
2.30.2



