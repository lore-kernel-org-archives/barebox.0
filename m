Delivery-date: Tue, 18 Nov 2025 11:40:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLJ8A-002IC5-0S
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 11:40:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLJ89-0008Cj-KC
	for lore@pengutronix.de; Tue, 18 Nov 2025 11:40:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FpQRHGeU9zULeQYiEJ+NtdXGOnyIc7C2PkBh85GkBuU=; b=iYmkK1M6cG1FYa
	eEsv7DA5YDJMlxkrJj2GWxisdk9Tgbyf2I8ixyKGeuxbVXgW89q6tCUc7B7m1/3GvxqV1SdJpW3Ae
	r81mg/aAiJxWwo+DaFBUM4LXNxajNXcfzLzcqGVq33/j0zbhhPJLlQXmrv93CZz8cJ9SPLmeWfF37
	LrtKb0niRUun7jT69seq/s1Ao1slgMSqb/IPEhIWX44Kk8b7pcRLnZo3/6L9U//lIxwflSbYjO4F1
	DbQC5GFYSCQNMzgqMItR/Q9Qp4jlvqQ1/YaZlREfTMRmPVKn39Ak6Wdt9iAdcHQPwkmDOisL4Nan1
	uL+LrTLiIgwyJOxKmgIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLJ7b-00000000GcB-0y1G;
	Tue, 18 Nov 2025 10:39:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLJ7Y-00000000GbQ-30bV
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 10:39:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLJ7W-00087K-MX; Tue, 18 Nov 2025 11:39:34 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLJ7W-0014GS-1b;
	Tue, 18 Nov 2025 11:39:34 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLJ7W-00000002pDl-1orH;
	Tue, 18 Nov 2025 11:39:34 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 18 Nov 2025 11:39:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-simple_panel-v1-1-7d8f617953ce@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAORMHGkC/x3MQQqAIBBA0avIrBNyNIiuEhFiYw2YiUIE0t2Tl
 m/xf4VCmanAJCpkurnwFRtUJ8AdNu4keWsG7HFQSo2y8JkCrclGCpK0M6i99gYRWpIyeX7+3by
 87wfpDFvTXgAAAA==
X-Change-ID: 20251118-simple_panel-e3c423f3f422
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1014;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=9BVNHP7yW/U8AmCt+o3fuPhJsdu7MCq9xRvYQEQA+8I=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpHEzmO49m0PpXqDWqnRjgjmUz2uQVPqIliL6S6
 1P9zOLW7ZuJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRxM5gAKCRC/aVhE+XH0
 q3FWD/sFPq1dFKvYx9qpmphxlltLmRh2LlHtN2jmCWf+bYm7M5wKtQqNxOGAysQr+UqEHndkLre
 W9VEunMEfG9ykZah6oDopbKvWdQ1xH0+0ewY9up4WtxR/EXxLQYazXq4ctQzRZS3s+9K0uLGGCQ
 bZOud1luFjkZk84g3P1QNjOvTFYodWV3ZrJPNqQ7CKOiAs/cZK2Q79uCFPcQRL8xazoTZvSqI+7
 NClPa5RTML1YC+Jdg5d55AVkX+Hzsaee/XKKsNZZIoHrBtFGBWbN7e0o1YRkrKZRs/7MItXus8U
 45NrmIRIr8+C8FTsvDL2xDkVbm2AeUFk770i25Dtv993p+CxkSxebBYG4VXIK3zhHa3w0lkvaAV
 a/CY3RI1Yc2UN5acCFQcRP5y/6rTar1yiU7+6mrXZxuph0muPxxvCsZMJJPv9kfg/xVnAZEy+1s
 6Jve3b83faxfSEgvteMVQ0Ua4VYFYqjfTKIY9MRGYualhd65+Lvf36j/bT7No+6Pb69nU0EerLs
 EgiWjHGn0Ho3JlH/bc0SDYoayvgiaKJwRIQ98jVkw0Dp2pW6677UaoNIIekjQ3JGAn1EfBqj2i8
 1rB61tA1TgdVHSkGqf4FbjtNyfqAtgWwSCo32//kvSmZ1DnmOxTlzFdz7Rye+nBhCsUAy8Nggmb
 l4XMEYRPxLvbX1w==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_023936_757398_C7C6E8DB 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] simple-panel: parse for bus-format of the panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the bus-format is set in the simple-panel devicetree
use this for BUS_FORMAT queries of the vpl interface.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/video/simple-panel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 931cbbe65f4c8fd1bb95011bbf2c3a499f5f53d3..63a032a9b87d30cda436e3459223a8e307ec0f0a 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -130,6 +130,8 @@ static int simple_panel_ioctl(struct vpl *vpl, unsigned int port,
 		return simple_panel_disable(panel);
 	case VPL_GET_VIDEOMODES:
 		return simple_panel_get_modes(panel, ptr);
+	case VPL_GET_BUS_FORMAT:
+		return of_property_read_u32(panel->dev->of_node, "bus-format", ptr);
 	default:
 		return 0;
 	}

---
base-commit: cf3126e606c4eb1a4769575d0df951796c33b64e
change-id: 20251118-simple_panel-e3c423f3f422

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



