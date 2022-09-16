Delivery-date: Fri, 16 Sep 2022 14:54:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArc-006g9D-AW
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 14:54:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZAra-0003Jc-4O
	for lore@pengutronix.de; Fri, 16 Sep 2022 14:54:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sid+o0O62Jon/+BUgT5LeGBYjv5jnt5shN72UMK6TWA=; b=tsLXcwhd/O3UjE
	gjQkPLUWHSkeSJCSLrNzp9xMInHww7x6UayMBJ2zzBn7gWD62Pk9Y6BdGMdrtMVDvhDS7gY8D5xQ6
	mwUrsf+kmZJHhw4CKN8OfB0LzER33D+hVhU2JXLgXDKMt6+cNiZRgqkv/mqA/HplggVunAJN3iaSJ
	5lv7QUo5yGb03F/85DEpQiROwJm6U2052ScRPiR3xqkNlRwP9WMHZpXbsvmsPzNlZEhEkT19ZyUfy
	/aqmrsXi6N7Xa0PLWaXpIabjgddYoEc6p32rHT8SZibDaS+KB4BUdCRMDULSHknG0LvT48tIPGtvj
	R+mEZ6Ma2vJmwe70cDuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAqF-00DN7U-5O; Fri, 16 Sep 2022 12:53:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZApo-00DMtR-BO
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 12:52:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0002zD-2J; Fri, 16 Sep 2022 14:52:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0015TS-JD; Fri, 16 Sep 2022 14:52:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApd-00G1vC-7A; Fri, 16 Sep 2022 14:52:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Sep 2022 14:52:32 +0200
Message-Id: <20220916125232.3775559-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916125232.3775559-1-s.hauer@pengutronix.de>
References: <20220916125232.3775559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_055244_430034_24F6FF1A 
X-CRM114-Status: GOOD (  11.94  )
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
Subject: [PATCH 3/3] net: designware_eqos: Allocate more receive buffers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With RFC7440 support in TFTP we can make good use of more receive
buffers. Increase the number.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware_eqos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 79b9979697..7ff0b8489c 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -169,7 +169,7 @@ struct eqos_dma_regs {
 /* We assume ARCH_DMA_MINALIGN >= 16; 16 is the EQOS HW minimum */
 #define EQOS_DESCRIPTOR_ALIGN	64
 #define EQOS_DESCRIPTORS_TX	4
-#define EQOS_DESCRIPTORS_RX	4
+#define EQOS_DESCRIPTORS_RX	64
 #define EQOS_DESCRIPTORS_NUM	(EQOS_DESCRIPTORS_TX + EQOS_DESCRIPTORS_RX)
 #define EQOS_DESCRIPTORS_SIZE	ALIGN(EQOS_DESCRIPTORS_NUM * \
 				      EQOS_DESCRIPTOR_SIZE, EQOS_DESCRIPTOR_ALIGN)
-- 
2.30.2



