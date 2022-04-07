Delivery-date: Thu, 07 Apr 2022 11:16:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOG0-00AI0E-Aj
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:16:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOFx-0001fY-9X
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:16:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3QHey6D/YXvLevguTUoawEjv0DTdxe/g+RRoraF/KI=; b=QdKdVvb1F2SzdX
	tTddCFl3HjUuV7vS2V76IgzmQhJhXfBzoHMY/6p7ZrAwtErbWVxgICzVZU6ZTSfxvsKncPjgxH65d
	2PMt9b6uWGVyB5XNlO/OLYVnshr7JvHyOt5DSSzaA59RZmfPUe3jSdMEH6NL3xdNgdJzqPWSn3ODg
	jRjCYmHC5BGT6IP98PdxDpVuG5EgkWpJzJIiiDV0c/UHX4tSyV0OLCNAySSEN4PxVor78r+fE4Ve6
	2NVypqGFQ+ii2LNTqoqFTbWDkHMqiYzLTtI69RQ1DcTCZyxC71c8do22ySlsecgRRXNzzlEZCp9cg
	3GWdp2C066cMG7FHN2cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOEN-00AkWK-Lo; Thu, 07 Apr 2022 09:15:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNx2-00Acvb-D7
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwz-0005pC-A2; Thu, 07 Apr 2022 10:57:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwz-001ZtB-VF; Thu, 07 Apr 2022 10:57:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNww-003zUc-L6; Thu, 07 Apr 2022 10:57:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:57:00 +0200
Message-Id: <20220407085705.951285-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407085705.951285-1-o.rempel@pengutronix.de>
References: <20220407085705.951285-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015712_499001_3BF54BC2 
X-CRM114-Status: UNSURE (   9.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/12] net: mdio: add MDIO_DEVAD_NONE define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need it for SJA11xx driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/linux/mdio.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index 4bcb41c71b..b910b05cec 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -324,4 +324,6 @@ static inline __u16 mdio_phy_id_c45(int prtad, int devad)
 	return MDIO_PHY_ID_C45 | (prtad << 5) | devad;
 }
 
+#define MDIO_DEVAD_NONE			(-1)
+
 #endif /* _UAPI__LINUX_MDIO_H__ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

