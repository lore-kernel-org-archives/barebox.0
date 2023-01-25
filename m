Delivery-date: Wed, 25 Jan 2023 08:55:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKacn-001GoE-MI
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 08:55:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKack-0001w8-V9
	for lore@pengutronix.de; Wed, 25 Jan 2023 08:55:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7CBFvPF6hAOWIChG+aAjz5+8lb93Ls2lwVl+Q6pMOxc=; b=gBrHqj1TJagvrRLA6cHtMFXRJE
	dfin9FiKyfUGxynV2aaLvBOUPAlPkLdInIPmRtHPncXBeJQ87wiwweoSSVJXoGB+mLf7SzMY8igRY
	KlO36ocCkqdzB+/ctujlVaG4MOX2Wd8DhOcragl5O5LpJlrvd5DjCn+xXc5MpZOelw4o2C6gZrnYh
	khn0gRs1bKzVMywNMr3f74Bv5sYZX1If9IhUdN9BK2SjBacXd8ckFsrspGJCQ4M18wRamaAQQMhEV
	t0Tg4zzkw4KyXbyn+v3rGtygUEvr7JsBOhABnO+69YJJlfSJTkW770z25j5JkEnBpYgPHQaovULB3
	8sHljuwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKabZ-006IKA-Dp; Wed, 25 Jan 2023 07:54:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKabV-006IJB-Ha
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 07:53:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pKabU-0001hJ-9P; Wed, 25 Jan 2023 08:53:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKabU-000HpP-JI; Wed, 25 Jan 2023 08:53:55 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKabT-007O2x-5y; Wed, 25 Jan 2023 08:53:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Jan 2023 08:53:54 +0100
Message-Id: <20230125075354.1760273-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230125075354.1760273-1-a.fatoum@pengutronix.de>
References: <20230125075354.1760273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_235357_592569_2F053159 
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
Subject: [PATCH master 2/2] net: dsa: ksz8873: fix mismatched return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both read and write operations for the regmap are supposed to return an
int, not a ssize_t and build warns about this. Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ksz8873.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index 3e3ad2413e9a..1df8d6dd924a 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -96,7 +96,7 @@ static int ksz8873_mdio_read(void *ctx, unsigned int reg, unsigned int *val)
 	return 0;
 }
 
-static ssize_t ksz8873_mdio_write(void *ctx, unsigned int reg, unsigned int val)
+static int ksz8873_mdio_write(void *ctx, unsigned int reg, unsigned int val)
 {
 	struct ksz8873_switch *priv = ctx;
 	struct phy_device *mdiodev = priv->mdiodev;
-- 
2.30.2



