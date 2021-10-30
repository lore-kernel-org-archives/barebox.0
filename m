Delivery-date: Sat, 30 Oct 2021 20:00:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgseO-0001En-Sj
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 20:00:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgseM-0002gK-Qz
	for lore@pengutronix.de; Sat, 30 Oct 2021 20:00:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJbkrZZqPrfhHQddNtPKIU5iX+yYHD9594wimfscb4Q=; b=ArsVNPou7xfHPH
	1F+HCQnugEcuUFmvs4BwLx/3hOQWq2Ha0FLGyx+bZh9N7c1/r0zpRBCTMFSlafiWWNsClKWFdWeud
	muVH74daK28EUaCGzGjjnat+YF9eUOCPoN1RRMBPQy15E8xDGbUM8JcRV3riXVyKt2XOsdXed/+DF
	vgnSM9ziOeqZ2YyfF1BQQ0V5o0z4HLVvsb0jgRTW0hRmZJ+ChZNC4ymdMP2zObi+UrwXtAixuUioq
	/6cTxWOaYEdUuuIIiXbGKZ81YB2/pPo7yGoPvV7HmcWzjbZeVA8hmwX3yO4P1YtCUTRj9NUdQmOeM
	Z67YnzIvkXGa8CEsEnHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsd8-00DNcn-6M; Sat, 30 Oct 2021 17:58:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsch-00DNMy-BF
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:58:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscQ-00020U-21; Sat, 30 Oct 2021 19:58:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscP-009YIK-71; Sat, 30 Oct 2021 19:58:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:58:05 +0200
Message-Id: <20211030175812.2276705-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
References: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105831_439895_715AC406 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: i.MX: guf-santaro: fix passing around of
 uninitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i2c_device_present() does a zero byte read to probe for the i2c
device. Make i2c_write_reg handle a NULL buf to silence the compiler
warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/guf-santaro/board.c | 3 +--
 drivers/i2c/i2c.c                   | 3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/guf-santaro/board.c b/arch/arm/boards/guf-santaro/board.c
index 34005ff7bf17..cfc85af59ee7 100644
--- a/arch/arm/boards/guf-santaro/board.c
+++ b/arch/arm/boards/guf-santaro/board.c
@@ -22,12 +22,11 @@
 static int i2c_device_present(struct i2c_adapter *adapter, int addr)
 {
 	struct i2c_client client = {};
-	u8 reg;
 
 	client.adapter = adapter;
 	client.addr = addr;
 
-	return i2c_write_reg(&client, 0x00, &reg, 0) < 0 ? false : true;
+	return i2c_write_reg(&client, 0x00, NULL, 0) < 0 ? false : true;
 }
 
 #define TOUCH_RESET_GPIO	IMX_GPIO_NR(1, 20)
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index c33ce81b1827..432d0e233332 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -214,7 +214,8 @@ int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16 count)
 	msgbuf[i++] = addr;
 	msg->len += i;
 
-	memcpy(msg->buf + i, buf, count);
+	if (count)
+		memcpy(msg->buf + i, buf, count);
 
 	status = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
 	dev_dbg(&client->adapter->dev, "%s: %u@%u --> %d\n", __func__,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

