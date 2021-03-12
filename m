Delivery-date: Fri, 12 Mar 2021 16:15:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKjVi-0004qj-Ti
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 16:15:30 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKjVi-00056v-8D
	for lore@pengutronix.de; Fri, 12 Mar 2021 16:15:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4FyLwO98JrGothLfefyuGT0VP0OFy0QQRb1xjAOuqM=; b=MGeYzU080vVuwy
	KGOu7sf3MgVUqOvhD/ej5H95lxezgx8MtzXekfToHSwLhj563M7QIj0pDQMZBkQNeBFOGiGG7LzZ4
	x1FwWKxToohG/B28FNA0n2LE/5/O2Ti7OVDc6D5I9YNUZmCXKayOwECE13lWV7Ga7vmhBxYwQRtfO
	OWVztpULhuGpCnH2DOURjHQKGzW9DvcW4kbWGBTRjaXN/dL6BpoL2w5CBWrQCpnWlyaq4Yl/TE+e5
	YPAXHN+6v1z7KqzlIVgyC9lC9lTwhuLPEIszEBDf1K86dCGyInygKgbFWIM59FPNdU47+/4X5IAd4
	Cc1EociizyLnG4JCdqCQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKjUh-00Bkg0-CJ; Fri, 12 Mar 2021 15:14:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKjUW-00BkeO-2L
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 15:14:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKjUU-0004x6-M4; Fri, 12 Mar 2021 16:14:14 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKjUU-0004pU-CW; Fri, 12 Mar 2021 16:14:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 Mar 2021 16:14:13 +0100
Message-Id: <20210312151413.18429-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_151416_214310_F19B384C 
X-CRM114-Status: UNSURE (   9.42  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] net: e1000: Fix mtd compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mtd function hooks have been renamed to start with an underscore. Fix
e1000 driver accordingly.

Fixes: 4d3c779dfc ("mtd: Add underscore prefix to mtd hooks")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/e1000/eeprom.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 900be2f09b..5a7d8675ce 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1614,12 +1614,12 @@ int e1000_register_eeprom(struct e1000_hw *hw)
 	}
 
 	if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
-		hw->mtd.parent = hw->dev;
-		hw->mtd.read = e1000_mtd_read;
-		hw->mtd.write = e1000_mtd_write;
-		hw->mtd.erase = e1000_mtd_erase;
-		hw->mtd.lock = e1000_mtd_lock;
-		hw->mtd.unlock = e1000_mtd_unlock;
+		hw->mtd.dev.parent = hw->dev;
+		hw->mtd._read = e1000_mtd_read;
+		hw->mtd._write = e1000_mtd_write;
+		hw->mtd._erase = e1000_mtd_erase;
+		hw->mtd._lock = e1000_mtd_lock;
+		hw->mtd._unlock = e1000_mtd_unlock;
 		hw->mtd.size = eeprom->word_size * 2;
 		hw->mtd.writesize = 1;
 		hw->mtd.subpage_sft = 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

