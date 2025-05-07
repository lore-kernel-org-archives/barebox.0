Delivery-date: Wed, 07 May 2025 11:31:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7Y-0035cb-1U
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7X-0007ep-KZ
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqXNWspDbNKQe5pTAFOysNBPcPuMem7tFfT2Px8BN00=; b=d5vCJ95facgGN16FPQ2hLauTFx
	jV8dcmkl6mEuwvAtkd2sFhX4l9d2yW2f4ehhXtGNxgdB6mWjgGEjt0Bw1T9l99yiCG8H9wAVjOAIZ
	AJ2KfsQV8u5MY+BICoCkOkOJ/pl5C8yod6ICALjNUrj76V0e8uLWZO6LWVpLGvRqGFMMs5fa0eoqG
	Lo9EMoL3xMAkTJRwTnqM1I/+MlyChIK2z5ydPjhqCQ/8xKQK+UD7wcUq0rxcVMnwZ9cEvNPmiHr7Z
	W2dliUsO3L0UXrqSnm0Tjbf4xKbEsgd8bJk1w54c8S67CTWq4AnWMaK2Io2o4c+/KJk2TcgakGgcW
	tEJvm8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb77-0000000Ey9B-0iig;
	Wed, 07 May 2025 09:30:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaGF-0000000EmHo-0XEe
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HqXNWspDbNKQe5pTAFOysNBPcPuMem7tFfT2Px8BN00=; b=P7HM4HQr3PbuVo7tvXpN96EOIN
	LXZgen4nTe6tH2kcZWF/uJmWEG90Ldjdc7DXcinb8kuFIK0dFqTNi2GQQeseJBInbP47HSv8fOKi/
	gffyTSKYuYTPfrhwdsT5V6HSdwi2djLwS8zk5EWtGXzHZqbrkjIyxcOqLpnGIWMntQrEBApdTHe2r
	zxmupl5ZDzcA/+e1d/6w2eI43feOLXAuj3Ox9v2WMSUC3gxFB+aw22aA/HxWfM7iIfT4/3navJSFt
	ePaU/edrnLuDHHoFUs8iuDKGyxwjUsGdKMXqOwlduBpfz4E+0L2ew+/FINvyc9Glaqn2osxtCD+qj
	4Lw1fLyQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFu-00000001ihD-3aLw
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:36:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-00040I-7r; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-001Wv4-07;
	Wed, 07 May 2025 10:35:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-2A;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:02 +0200
Message-Id: <20250507082209.3289972-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093555_300073_81143AB6 
X-CRM114-Status: UNSURE (   9.88  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 23/30] mci: core: retry MMC_CMD_SET_BLOCKLEN up to 4 times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is what Linux is doing, so follow suit for reliability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 80b3496a280a..5f0fdd2206a5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -125,7 +125,7 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 		return 0;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
-	return mci_send_cmd(mci, &cmd, NULL);
+	return mci_send_cmd_retry(mci, &cmd, NULL, 4);
 }
 
 static void *sector_buf;
-- 
2.39.5



