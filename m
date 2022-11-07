Delivery-date: Mon, 07 Nov 2022 16:02:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dQ-000W4i-ID
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 16:02:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dO-0007YN-Of
	for lore@pengutronix.de; Mon, 07 Nov 2022 16:01:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4GZNCLpGD4yiALqHe/EhgQb4aRi2IWxF+oGpVsIeDH8=; b=s427YCi9sMsxrLcZ/e4pD9SbTT
	OMEu62wIVNzrrkuVZRe7r/pDOcPTUgxyZp5FEfkA9FkGpzagnh73M0WJCYYF1i0G3TsvSrS8WLIXC
	jj0Yog53dJRJ3yjUS+j+x20B8ZiPBJTJHmCuLOWUhx3aDf1sGRaZv9ehcx+MUFv1CAe2JTe0TLvED
	ikrNJiQ/G1JXkX6rlA/J60vW2Q4rEtS8kahQo1/MbVprrCFp4TmuasltUz490Z8M1gEUjzV4blK5n
	4uJ6u8VQN1GjVfd4ge68ZlVJEUyaAXsNPHe3sXlCgGVc5EZcLE1ZVDxx/oPvoEgN5Fb/qWbAAU0uf
	zLJmninw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3c0-00FTKr-Ap; Mon, 07 Nov 2022 15:00:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3NT-00FKtm-N6
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 14:45:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NP-00037a-Fu; Mon, 07 Nov 2022 15:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NN-002sI3-R1; Mon, 07 Nov 2022 15:45:26 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-0023fD-1x; Mon, 07 Nov 2022 15:45:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 15:45:20 +0100
Message-Id: <20221107144524.489471-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_064531_849373_2337F81C 
X-CRM114-Status: GOOD (  11.07  )
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
Subject: [PATCH 0/4] gpio: Add gpio latch driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a gpio-latch driver recently added to Linux, see
https://lore.kernel.org/lkml/20221007114647.2723457-2-s.hauer@pengutronix.de/T/

This is basically the same driver adjusted for barebox. As a preparation
we have to add some bitmap helpers needed for the driver.

Sascha Hauer (4):
  bitmap: Implement bitmap_*zalloc()
  bitops: include linux/types.h
  bitops: implement assign_bit()
  gpio: Add gpio latch driver

 drivers/gpio/Kconfig      |   6 ++
 drivers/gpio/Makefile     |   1 +
 drivers/gpio/gpio-latch.c | 195 ++++++++++++++++++++++++++++++++++++++
 include/linux/bitmap.h    |   7 ++
 include/linux/bitops.h    |  16 +++-
 lib/bitmap.c              |  10 ++
 6 files changed, 234 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpio/gpio-latch.c

-- 
2.30.2



