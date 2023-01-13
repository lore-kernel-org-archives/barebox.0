Delivery-date: Fri, 13 Jan 2023 12:39:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOn-00AjMB-Cs
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 12:39:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOk-0006dK-SA
	for lore@pengutronix.de; Fri, 13 Jan 2023 12:39:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ahcwzphqT5d955yFRBRDgIthMteepdidtsliiRQypQ0=; b=M+6j2hWrR0SkMflucA2GKadmIf
	vz9bqEiGvL+SfOx5x8yamorQ+TmtVAxaxKrVYxJEyWS4i6T9xrv22/5f7gf2BVWFyFFAfcntivMqv
	BlAeeMRYc2K6UOcNF0s1umDzafDuhm95Sdf3dGIRyttK6B/nejczrlm1LnfWKgO4K8U3QyufSsH9F
	EftGrAGdxQWyAoAjna2BEAplsiLkafHRG6rbC/ITzE9A2V/tsM5OVmp3X+0mieu+iaQPX0kciROYT
	+YtFI/hx3dtZO74LGk8nLzXNR8S9I/pi0SrKGU1pSFm50rmfVana0Z4uoCUpCBEfA2EDiQNKHEMYX
	M7KFRNcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGINJ-002Ewh-0L; Fri, 13 Jan 2023 11:37:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIK9-002DQQ-5Z
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 11:34:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK4-0005Yp-CL; Fri, 13 Jan 2023 12:34:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK3-005kqB-P2; Fri, 13 Jan 2023 12:34:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK2-00BGRQ-A1; Fri, 13 Jan 2023 12:34:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 13 Jan 2023 12:34:02 +0100
Message-Id: <20230113113407.2684725-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230113113407.2684725-1-o.rempel@pengutronix.de>
References: <20230113113407.2684725-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_033417_251408_18378D42 
X-CRM114-Status: GOOD (  11.98  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/8] ARM: imx6sx: udoo-neo: fix board compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fsl,imx6sx-udoo-neo is not working for some time now. Sync it with
mainline kernel.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/udoo-neo/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/udoo-neo/board.c b/arch/arm/boards/udoo-neo/board.c
index da1534989e..e2078e3395 100644
--- a/arch/arm/boards/udoo-neo/board.c
+++ b/arch/arm/boards/udoo-neo/board.c
@@ -14,7 +14,7 @@ static int imx6sx_udoneo_probe(struct device *dev)
 }
 
 static const struct of_device_id imx6sx_udoneo_of_match[] = {
-	{ .compatible = "fsl,imx6sx-udoo-neo" },
+	{ .compatible = "udoo,neofull" },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(imx6sx_udoneo_of_match);
-- 
2.30.2



