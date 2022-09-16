Delivery-date: Fri, 16 Sep 2022 14:54:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArF-006g7q-9S
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 14:54:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArD-0003Gg-Um
	for lore@pengutronix.de; Fri, 16 Sep 2022 14:54:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rxdx88C7bH10ziI0JI25ciQx2yxkdAQQzk8trBaJB9A=; b=ZidCSlVesqEvl0
	tpMp0MMB50IkB8Hw2JEzpv+iTixifRzfcx/6SC0Kp9D9Y5DyTAtMye7bDc3O1PGBPrtwl64ZXl1FW
	Y4ruVYphlBwrezyVz1/JLlsB3pbzFQSy/VY6RudhCvyj4Ab0BotUDCPy7EYgOfcIOE2EKLEI+PNUu
	O3m8s77sGvxJxIb7YeSy/F2bjf2VfMAyOyFjlDgtE0rtiLcHHn5tQ2GsuXxoegI2kNbVQYlWauIMo
	GgFyjmoHC51+fh1/OjuLOXWtT/kGaJYVI5fF/YbgTKv1CA5UdQVz31H8YmnyjF5gtF5xhsSeYIr59
	IE8r6ZTUDEjXdiU5QfJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZApq-00DMqm-Du; Fri, 16 Sep 2022 12:52:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZApg-00DMnw-C6
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 12:52:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0002zB-2H; Fri, 16 Sep 2022 14:52:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0015TM-9o; Fri, 16 Sep 2022 14:52:33 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApd-00G1v1-4x; Fri, 16 Sep 2022 14:52:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Sep 2022 14:52:29 +0200
Message-Id: <20220916125232.3775559-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_055236_455903_4DFF8228 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] tftp updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series has some updates for the recently introduced RFC7440
support.

Also I found it useful to increase the number of receive packets in the
network driver I am currently using. Other drivers might be adjusted as
well accordingly.

Sascha

Sascha Hauer (3):
  tftp: remove selftest
  tftp: implement UDP reorder cache using lists
  net: designware_eqos: Allocate more receive buffers

 drivers/net/designware_eqos.c |   2 +-
 fs/Kconfig                    |  22 ---
 fs/tftp.c                     | 344 ++++------------------------------
 test/self/Kconfig             |   7 -
 4 files changed, 37 insertions(+), 338 deletions(-)

-- 
2.30.2



