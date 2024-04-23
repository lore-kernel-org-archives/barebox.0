Delivery-date: Tue, 23 Apr 2024 08:22:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9YD-00CX5a-0r
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 08:22:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9YC-0003Ov-M0
	for lore@pengutronix.de; Tue, 23 Apr 2024 08:22:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qFuqhuUrCD+xp/WEcXhiBMYwEIu9+U3+X6Hjj7WnR1o=; b=G9v/uzwceQ69LCZPn5AxhoMo90
	xdIDKlKJvHmxIUMSe5Whfh+hyY1eanVsRykqUHxIv74rGMbKZZ4VujlGE17jkzWLdu2yd7RVRZplX
	bINyI2jC22yg3ao1MTg+rXXzYk69ucM5utIzWQWN7y9X69dqKtBqhmwjeiUch9TE/HHvYRxbOhCko
	zXvkdbulA6ezLeVDjPxLBmrtBzY36dSP8q/CCk+DokJ2x2/tnSuPtcS/Y1fDnRVPt8YOJXYtGM+0f
	Jb5YuLtDHSM7nDL1hbu0K3L2V7H+MDwFhBQPe/512s+9zLYYU6VCK6qBO+hC9Ul3VKzHu2hM6JQMH
	dQDb4H8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9Xj-0000000G7eU-4Bwi;
	Tue, 23 Apr 2024 06:22:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9Xe-0000000G7cN-0GTk
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 06:22:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Xc-00039O-8R; Tue, 23 Apr 2024 08:22:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Xb-00DpNn-S2; Tue, 23 Apr 2024 08:22:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Xb-006N1q-2V;
	Tue, 23 Apr 2024 08:22:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2024 08:22:06 +0200
Message-Id: <20240423062206.1518464-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240423062206.1518464-1-a.fatoum@pengutronix.de>
References: <20240423062206.1518464-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_232210_170655_E0624F2E 
X-CRM114-Status: GOOD (  11.69  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] mci: core: make execute_tuning mandatory for HS200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We assume that any host controller that doesn't implement execute_tuning
will have no issue with HS200 operation. This is likely untrue for most
host drivers that we have and it will confuse users:

  - Enable CONFIG_MCI_TUNING, e.g. for i.MX
  - devinfo shows HS200 operation
  - Actually reading blocks will fail with EIO

Therefore, let's make execute_tuning mandatory for HS200. If some driver
doesn't need it, it can always define an empty stub for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index af0980308866..f6565b2b64dd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1349,8 +1349,14 @@ int mci_execute_tuning(struct mci *mci)
 	struct mci_host *host = mci->host;
 	u32 opcode;
 
-	if (!host->execute_tuning)
-		return 0;
+	if (!host->execute_tuning) {
+		/*
+		 * For us, implementing ->execute_tuning is mandatory to
+		 * support higher speed modes
+		 */
+		dev_warn(&mci->dev, "tuning failed: no host diver support\n");
+		return -EOPNOTSUPP;
+	}
 
 	/* Tuning is only supported for MMC / HS200 */
 	if (mmc_card_hs200(mci))
-- 
2.39.2



