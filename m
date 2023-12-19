Delivery-date: Tue, 19 Dec 2023 14:22:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa3H-004a6L-3B
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:22:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa3H-0000z3-Fc
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:22:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uP2VMzL3G+5AEb4GCi5mQL1wIx846VEYrPMKYuBYrGE=; b=dk7YC+SAGY1lHlW8c1oOxjJ7gO
	zIP/UUz9xIFdKRamyHiYJSnrJG/VRw8Rwot5BqY4U9P4E/JPRrIRp9RMQUxK++Uwxm6TsDnX6VZh6
	z2xPYj0zNTcnObIPEyfMTicSZnZPdLzakeB3OTJaL7ReVMm1mYm4uyO0i5ErcU9zCBxddZoilodEA
	EHXbs+n6VuQ5piYhQjlkioC5H2x9t4g/kYogJ2WzTJ+tIDpxP8I3OyK93Pa1/U1Q7oXBvwOqu1yAU
	gyJ6PQ+1kZ+x9rWjYQ9ruocWyV774tC+JptSoV5c/TB7VM/lFjK45t/p98xfsjCFZFFG8nLZV/wcW
	FtdYTpPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa2J-00EB8z-2Y;
	Tue, 19 Dec 2023 13:21:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa2G-00EB74-2j
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:21:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2F-0000WY-8s; Tue, 19 Dec 2023 14:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2D-0001o6-PM; Tue, 19 Dec 2023 14:21:22 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2E-000252-2e;
	Tue, 19 Dec 2023 14:21:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:21:20 +0100
Message-Id: <20231219132122.7964-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_052124_878181_B1FEF9FA 
X-CRM114-Status: UNSURE (   6.87  )
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
Subject: [PATCH 0/2] Layerscape LS1028a: add clk support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding clk support for LS1028a is straight forward. The changes are
directly imported from Linux.

Sascha Hauer (2):
  clk: layerscape: move chipinfo_ls1012a further up
  clk: layerscape: add support for ls1028a

 drivers/clk/clk-qoric.c | 83 +++++++++++++++++++++++++++++++++++++----
 1 file changed, 76 insertions(+), 7 deletions(-)

-- 
2.39.2



