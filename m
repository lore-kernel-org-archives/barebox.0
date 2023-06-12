Delivery-date: Mon, 12 Jun 2023 14:54:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4K-003qC5-Qc
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:54:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4H-0006W7-Qk
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:54:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qkhzuu2NnIHoGUex88jiHXB5FRtMckWNu7sDGaKYfrE=; b=uN2mGEK7oh4zPFVayEbCT1XFd5
	61/oItk1e6ZApppkP3+lnxPbSzsfMvvmKrxbSQ4uEqC/KSzsOuPFp/gJQESx/QQ0mCkxTk1krw+lI
	APkD+z4ur6be2KLwRYWag9XtY1W4XQp2Wjej2KGIpc2AEWMWSCDWas8VKbJ0JWBv6Jq9k3hmvco8t
	6cy4ldQriXVYnbfogfSKc2lw7EfbNJyncovip+O4XtV64ax0JaYyPdAn+UKrRLs5jhXpGIYjk8Qoa
	Kk4B7HOETucJEEjzd8rEG0/JZmKooq9or0RKnI04cBRM27fXpbeye7y+FHJuDmw5plPLw8LumuJ3G
	Nk1v3j+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h3F-0045Ld-0B;
	Mon, 12 Jun 2023 12:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h39-0045HJ-11
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:53:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h38-0006BO-4Z; Mon, 12 Jun 2023 14:53:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-006tTe-Go; Mon, 12 Jun 2023 14:53:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-004YHT-6A; Mon, 12 Jun 2023 14:53:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:53:26 +0200
Message-Id: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055335_360297_ECE084B0 
X-CRM114-Status: UNSURE (   8.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/6] net: smc1111: add missing drive's of_device_id array sentinel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ASAN on sandbox running allyesconfig detects that code reading
smc91c111_dt_ids reads out of bounds. This is because driver match tables
need to have sentinel elements, which was missing here. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/smc91111.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index a23f2ad129ff..cc8f5ed362f4 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1492,6 +1492,7 @@ static __maybe_unused struct of_device_id smc91c111_dt_ids[] = {
 	{
 		.compatible = "smsc,lan91c111",
 	},
+	{ /* sentinel */ },
 };
 
 static struct driver smc91c111_driver = {
-- 
2.39.2



