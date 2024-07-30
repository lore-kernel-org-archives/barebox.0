Delivery-date: Tue, 30 Jul 2024 09:20:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9T-004O6S-17
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:20:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9R-00079a-Fw
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:20:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I9BDrfl5LAgbPebwSywQQK0Lw1Ej9ELqslsL+XV5jcw=; b=EI/Li/t5vrG0Pb6Fe/Ak3+/byL
	CLlDzP2YxsyKLfUFOUcdlBJuBp5hbDQrW5ddLkIlMoaH+op7r/coMZjwpW4fq98nHbLCxK9TMrmZV
	9oz/tRighGZ2vsE8ApIfITzCiHrlaj20Z6QKZPpcv7BQic1Or7lFkxJoL3W+5GLlEclixGN+QFkPY
	S9kIa+3oTeU745ine7UdgDq7YXYUtPK1Wvd5BJVVljHlRAPGDAvwy6unDYGMlY8jlbeYzNF+I8hZM
	gsHA/7NXuCrStvV1959DEkG1MtONG/LlzVfkpRopv81Ut06c2ezaBIcIVw5X72sehixE5nZVT28AT
	hDJ3BXvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh8y-0000000Dyxh-1f25;
	Tue, 30 Jul 2024 07:19:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh8u-0000000Dyuz-24l4
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:19:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-0006np-SF; Tue, 30 Jul 2024 09:19:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-003EJH-9m; Tue, 30 Jul 2024 09:19:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-008TRQ-0g;
	Tue, 30 Jul 2024 09:19:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 09:19:25 +0200
Message-Id: <20240730071929.2016537-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_001932_593639_892A3E8E 
X-CRM114-Status: GOOD (  12.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/10] mci: core: use CONFIG_MCI_WRITE, not CONFIG_BLOCK_WRITE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's a more specific CONFIG_MCI_WRITE that's so far only used to
remove write support for in the Atmel MCI driver. We should use the same
symbol also to remove support in the MCI core instead of relying on its
parent CONFIG_BLOCK_WRITE option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f6f8a6adabb9..3a5fb0330700 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1801,8 +1801,8 @@ static int mci_blk_part_switch(struct mci_part *part)
  *
  * This routine expects the buffer has the correct size to read all data!
  */
-static int __maybe_unused mci_sd_write(struct block_device *blk,
-				const void *buffer, sector_t block, blkcnt_t num_blocks)
+static int mci_sd_write(struct block_device *blk,
+			const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	struct mci_part *part = container_of(blk, struct mci_part, blk);
 	struct mci *mci = part->mci;
@@ -2179,9 +2179,7 @@ static int mci_check_if_already_initialized(struct mci *mci)
 
 static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
-#ifdef CONFIG_BLOCK_WRITE
-	.write = mci_sd_write,
-#endif
+	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
 };
 
 static int mci_set_boot(struct param_d *param, void *priv)
-- 
2.39.2



