Delivery-date: Fri, 02 Feb 2024 16:31:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWB-0002RY-2R
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:31:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWB-0005lQ-4O
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cxrdpqzb3KxIuqqOv6eLRviOrVhTiLMN0gFcQSumc/k=; b=OwAsvSO+4Sp4lacrFG457duuRU
	fnbf4x8JUlEO94cQ/jeKMJ6Es7p3Lx2OuknU0TwVDFMaG+qVbSIlFaHYgYdrrcB+IGpf3gwlAGOTc
	g9NxDGMtETa8fC7yb6a/716As1Q7VhMSPuVbfePtIfpmq9faPrNHSBfuG9bsBI1jhq13+IbkT67Im
	y/wD4V4Opa76XsFq3xiHA4RvAL0o3lQxK+ETc7m1+VB5UUNXF2q9J4ggGfeG1Jq+w93JdUPO4KB0+
	DmfzDRbOiKcCH0V6iZssHiKjUQKCpgZ1ZwedozkieF2AXkYDgP437/Z7GqCJbTrlirgGLrk/l713a
	+ITHjehg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVj-0000000C12r-2DtI;
	Fri, 02 Feb 2024 15:31:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVc-0000000C0yj-0XOW
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0005UH-VQ; Fri, 02 Feb 2024 16:31:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0045XO-IM; Fri, 02 Feb 2024 16:31:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0015Pr-1V;
	Fri, 02 Feb 2024 16:31:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:31:09 +0100
Message-Id: <20240202153113.245488-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202153113.245488-1-s.hauer@pengutronix.de>
References: <20240202153113.245488-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_073116_262772_7C4F1897 
X-CRM114-Status: GOOD (  12.63  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/8] pbl: eeprom: return error from eeprom_read()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reading from an I2C EEPROM can clearly produce errors, so return
an error code instead of void.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/pbl/eeprom.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/pbl/eeprom.h b/include/pbl/eeprom.h
index df868b1a37..7812402290 100644
--- a/include/pbl/eeprom.h
+++ b/include/pbl/eeprom.h
@@ -5,7 +5,7 @@
 #include <common.h>
 #include <pbl/i2c.h>
 
-static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, void *buf, u16 count)
+static inline int eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, void *buf, u16 count)
 {
 	u8 msgbuf[2];
 	struct i2c_msg msg[] = {
@@ -27,8 +27,13 @@ static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, v
 	msg[0].len = i;
 
 	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
+	if (ret < 0)
+		return ret;
+
 	if (ret != ARRAY_SIZE(msg))
-		pr_err("Failed to read from eeprom@%x: %d\n", client_addr, ret);
+		return -EIO;
+
+	return 0;
 }
 
 #endif
-- 
2.39.2



