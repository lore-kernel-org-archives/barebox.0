Delivery-date: Wed, 25 Jan 2023 13:50:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKfEW-001Uw2-OA
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 13:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKfEU-0004fh-3N
	for lore@pengutronix.de; Wed, 25 Jan 2023 13:50:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jGLSttJMFm4DaU0Eb5fEu+BtOKmE5XaFXyN3hEO57/Y=; b=AI9k9yoEPZr7w2CT6Bb/qfq+HA
	7dO5MkN6zU5ptm7myn62cKNnFcE2JKVlSq3dHObf/L5mmHdpmjywjcovQGQmnUoJrZLsTPdDW90jx
	0t6N3FTaA940UjGiysmDIDwO2TVXu/XVfftKM29o6pLQ7p3MZchiLlFNAITPeYMZnosylTsgS0sqQ
	uCOWIoCKw6WaHV0+yYIjSZDnsY0tV0AcQWRAv5osCtrfnNwdXBsukLn6j7mdg/kAwFuQiBae6nq9V
	KMVo6LsT8zay88amDBGMBSa3MJLztafXK3Isudrrup90dYjurmUqQ3SCGNq2w6nqB9U7bKO54O9Jc
	QEEDVZ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKfCt-007KKm-0A; Wed, 25 Jan 2023 12:48:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKfCo-007KK5-L3
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 12:48:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKfCk-0004R9-Tz
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 13:48:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKfCl-000L18-6t
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 13:48:42 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKfCj-00ECxD-Io
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 13:48:41 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 25 Jan 2023 13:48:40 +0100
Message-Id: <20230125124840.3386338-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_044846_707654_5079BB23 
X-CRM114-Status: UNSURE (   8.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ddr_spd: remove unused local variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <marco.felsch@gmail.com>

The buf8 variable was never used so remove it.

Fixes: 2f1fc1c92 ("ddr_spd: Add function to read eeprom")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/ddr_spd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index f7792360de..1c1d5826e0 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -491,7 +491,6 @@ int spd_read_eeprom(struct pbl_i2c *i2c,
 		    uint8_t addr, void *buf,
 		    int memtype)
 {
-	unsigned char *buf8 = buf;
 	int ret;
 
 	if (memtype == SPD_MEMTYPE_DDR4) {
-- 
2.38.1



