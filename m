Delivery-date: Fri, 14 Apr 2023 19:49:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnNXy-003Y2h-DP
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 19:49:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnNXy-0007Nx-CT
	for lore@pengutronix.de; Fri, 14 Apr 2023 19:49:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C0Z55KvR1RAiIXBlbZHBcdWrlsWUkEnZTVz7kH1qmKM=; b=bG8nUX9w7MZRZXifT6osFqCW+H
	76b1tAm6/n6Vobo73wEy57wixm0TNULokoSzk3V+iQYQH7kD/bJMeixuFW7KxmzvKleDCTooU/zHj
	mUvMlgDCMve83GIfWY0qlLn/TGWqODSIFHcXnwDJHpZgEAsyZAykSuwNH5QtkQJ72H4tube3vvdjt
	6HLa4KgRnzq7SjA+3xtaX0OJtsdosza6ka4SxwqkUgLNkoPGnQDNCXVBXPAk3NpqUEtyrPYRjlyf/
	nTf0uVmkANy8872nArP1qRt0SYffaZ2a2KmRHM6nwsAeNcswSgJscUhTxz6/taGGGZN9hrEmt245V
	LweV+E9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnNWj-00AIAS-1e;
	Fri, 14 Apr 2023 17:48:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnNWg-00AI9k-0t
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 17:47:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnNWd-0007EF-IJ; Fri, 14 Apr 2023 19:47:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnNWc-00BFWX-OH; Fri, 14 Apr 2023 19:47:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnNWc-00857c-0i; Fri, 14 Apr 2023 19:47:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 19:47:53 +0200
Message-Id: <20230414174753.1926245-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_104758_315950_0B048E78 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: bcm2835: Print less errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some commands are expected to time out, for example when a non
SDIO card is tested for being an SDIO card. Just return -ETIMEDOUT
in that case and leave error message prints to the core.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index bcdf1b6196de..477a3b83a0e3 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -148,7 +148,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		      command << 16 | transfer_mode);
 
 	ret = bcm2835_mci_wait_command_done(host);
-	if (ret) {
+	if (ret && ret != -ETIMEDOUT) {
 		dev_err(host->hw_dev, "Error while executing command %d\n",
 				cmd->cmdidx);
 		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
-- 
2.39.2



