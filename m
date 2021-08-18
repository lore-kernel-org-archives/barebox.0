Delivery-date: Wed, 18 Aug 2021 14:22:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKaA-0005Z9-H2
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 14:22:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa5-0004wf-OU
	for lore@pengutronix.de; Wed, 18 Aug 2021 14:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0slF8CdKOtPwDJ8jSycqMt+KT3RRWrYuBqu0Z8YLmE=; b=cm68o3vRxvF486
	51cHRCeWvKp6rhAKYQSWztaJfQi5Gh0e9R0oPYe4/5ZhGyMpTFzYLjQL5c6x6SGOBudCXyA9YWLNJ
	n4JyS8+O3XcurDavWAeUVrJKJ/WSCcQMDh+ArihOlRHfXF2y8BFdiBBeNQU9lYydGpNp2aiBU6vn6
	5+/51cWwdkcv+Y8EDo/AK0l1QR1ixjrvasDzM1V7v7G235ZLUejmTwDe9RQP69N1BJBp51pNK90G6
	FiFWj2QL0Ev9+Ei9fhjjEcs8yHPbGMVeixYH76gcdIcerCNhTh83dm2gB2roaiXjADX5tEQxqJuTi
	oEwdZTqsgYz8fi4fpBjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKYK-005Tkq-Tq; Wed, 18 Aug 2021 12:20:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKXy-005Tbj-W1
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:19:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXs-0004Jm-LX; Wed, 18 Aug 2021 14:19:48 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0006nm-Hp; Wed, 18 Aug 2021 14:19:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Aug 2021 14:19:41 +0200
Message-Id: <20210818121945.26089-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818121945.26089-1-o.rempel@pengutronix.de>
References: <20210818121945.26089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_051955_128430_4F409B81 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/6] ARM: boards: protonic-imx6: Don't fixup MAC address
 for disabled device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

The prtvt7 board variant has no enabled ethernet interface. For these
boards the MAC address in the RFID flash is unset or invalid and should
not be copied to the device-tree.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index e7938ac0fd..7368f3458f 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -171,6 +171,9 @@ static int prt_imx6_set_mac(struct prt_imx6_priv *priv,
 		return -ENODEV;
 	}
 
+	if (!of_device_is_available(node))
+		return 0;
+
 	if (!is_valid_ether_addr(&rfid->mac[0])) {
 		unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

