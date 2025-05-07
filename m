Delivery-date: Wed, 07 May 2025 11:27:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3o-0035Vr-0d
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3m-0006K9-KR
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O0KH8PkVtDtyVBbriLfHdALnLyChBpZiBr3PkUVOJzk=; b=aIiH3PE+jgjICZQuTIruQsG71o
	c5CiyvbL0rrro4Fnei/+457evEAxfQo8EuuznRjDySYtEogb8kAPkesw3kOMOiLSjmdxHMW9qlfTQ
	eoDtycA8shc9msxMTsLsg31Od+HkeKBaiqLWD+WaE9MlqGarOSlNFnx5UC1zhLevcGIGIVG+PakL1
	ww29uDD/gLFYLRxkHx2zH/sVcLr/gN2oXHij8bTMlSRVGF6OdBOc7aVjY0vyKyysnKQxLHYwNE0g1
	GUsQ3t7Nk/Toi3rHTnahKcV0Ct7GQd/6EzfLQ9OuD4mz9lOP6s6gXaej61MA8FJyVk6bFw6zWB8d7
	TX7TYH3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3K-0000000Ewy9-09we;
	Wed, 07 May 2025 09:26:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFO-0000000Elqi-0oTS
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=O0KH8PkVtDtyVBbriLfHdALnLyChBpZiBr3PkUVOJzk=; b=lP6rwZvMs99gu+yy1kq4d+zRRP
	WLZt0sQHThVBk71ZCDoFOYrCAExZMSSOft61exiM8UyFmbflEGi27TyrMe+J7t3T6kXIlnkGFeDiC
	PK2evbOZ50oyoqcMsq4K5Bk/QDCA4i03ylwAvlWN+cPX2HS9RSEuqlE57xQj310R0EkwbSK6qpLYN
	KcQ2aMH0SWrRZvkh66yLFfYRFhXoHEC1por3Wg0OBLeTqNLjwfe89Q/7iIAAJppfcu+dAlmyg0/Aa
	93UNWKN8Bwp/xMGkSfHdmsO8mgCJhinYGDmleypAmR7bXFJgWDV/yaTksoCz3fI0c5w3dKa/c6RR2
	18rgveHw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCaFG-0000000FoJH-35BE
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-000416-IA; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-001WvK-1B;
	Wed, 07 May 2025 10:35:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-0J;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:49 +0200
Message-Id: <20250507082209.3289972-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093515_052169_BE81DABB 
X-CRM114-Status: GOOD (  11.73  )
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
Subject: [PATCH v2 10/30] mci: respect no-1-8-v OF property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

no-1-8-v is much more relevant to SD-Cards, but on the off-chance that
is' set on an eMMC node, we should respect it and disable 1.8V speed
modes accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9031308ec3d2..2f80763d9831 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -3097,6 +3097,17 @@ void mci_of_parse_node(struct mci_host *host,
 		if (of_property_read_bool(np, "no-mmc-hs400"))
 			host->caps2 &= ~(MMC_CAP2_HS400_1_8V | MMC_CAP2_HS400_1_2V |
 					 MMC_CAP2_HS400_ES);
+		if (of_property_read_bool(np, "no-1-8-v")) {
+			/*
+			 * The SDHCI controller in a SoC might support HS200/HS400
+			 * (indicated using mmc-hs200-1_8v/mmc-hs400-1_8v dt property),
+			 * but if the board is modeled such that the IO lines are not
+			 * connected to 1.8v then HS200/HS400 cannot be supported.
+			 * Disable HS200/HS400 if the board does not have 1.8v connected
+			 * to the IO lines. (Applicable for other modes in 1.8v)
+			 */
+			host->caps2 &= ~(MMC_CAP2_HSX00_1_8V | MMC_CAP2_HS400_ES);
+		}
 	}
 }
 
-- 
2.39.5



