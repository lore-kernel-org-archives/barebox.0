Delivery-date: Tue, 19 Dec 2023 14:25:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa6J-004aJS-20
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:25:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa6J-0002LV-4F
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:25:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+8PFK2wwIq9BXsFge+KgKSABuxkMMhMSvr1q0rgmzEg=; b=uSWyYeiCPUZM6UzK04VntaMAYv
	oUbEnFVS/CvdCR2EQOY/wRZMmlLERFJaYu+Nx3wztSN/M2oUSQqJVkdD4ij3VONLYFScwJ+WqO2KC
	VXt5GKcijuK9Q/7Bpx7f9oOblfROZt7s/tg1MMDFhuanxfU771Op65zrYIiIT8z7SJPs5ZhcxAcOB
	D480XQddj17ZG0Fnd8HGN8zXA5DvRaYBPoYvWzRJjz1E7+tUPY+8YFmpN0EkyDUDn6EQQ4IIFoLpt
	IijtswbOxa0TPK8YfZ2gDnSz2zC6rx/8tNKWuz5fsCIC7Ma7ZTLLDqF0P0VBrNT1SNjOThzn8H7MV
	b+UuvWyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa5O-00EC3z-0w;
	Tue, 19 Dec 2023 13:24:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa5L-00EC2D-0j
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:24:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa5J-0001xz-VT; Tue, 19 Dec 2023 14:24:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa5I-0001oa-G2; Tue, 19 Dec 2023 14:24:33 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa5J-0002EL-1h;
	Tue, 19 Dec 2023 14:24:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:24:32 +0100
Message-Id: <20231219132432.8565-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_052435_263362_77B4A8BD 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: remove unused field from struct eth_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/net.h b/include/net.h
index 83fb4def5d..40287a3503 100644
--- a/include/net.h
+++ b/include/net.h
@@ -49,7 +49,6 @@ struct eth_device {
 	/* Set promiscuous mode */
 	int  (*set_promisc) (struct eth_device*, bool enable);
 
-	struct eth_device *next;
 	void *priv;
 	void *rx_preprocessor_priv;
 
-- 
2.39.2



