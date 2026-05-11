Delivery-date: Mon, 11 May 2026 14:10:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSt-000Xrt-0Q
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:10:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSm-0007eJ-Tv
	for lore@pengutronix.de; Mon, 11 May 2026 14:10:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W/BqLxuXZjH3m9riGRQtXwCIPseRMzVyuILE1vlGjgU=; b=v1ziEaxxH5G4Ds71EtX8LKfvQX
	6DhaTaWLGhGxt+rZhGAODv+LSWqrzrYOkTEJ1FzdEQBeTKYrlbSMJ48j8It0iDcd49LAJCNcbfGVo
	u0vqlm5X0k2zH3W6/niY9EJ89HZQCzk2VMCyAuAu3cwIcAyFC4M9ZG2R6uFpbGJMmTvmXl5mpD2Lx
	3uuxRpFFtFRcGkTuIl+k6j7gVSKQqmmlyVw7dutqu5AXCCPZ9Ol8BvolGGdQUueN7lJLtQQJzJfUK
	W1aL+HmOZyDia6LB/G5QxGfyHU+PudP3fKHCwy2zcNsMtgftM+0wDQnVYhZ1CCuGb0WtnaPSy/cYH
	gvAG0FSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPRD-0000000DTF3-0QsZ;
	Mon, 11 May 2026 12:08:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPRA-0000000DTDR-1gAF
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006bE-SY; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTM-2B;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-12nr;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:07:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-2-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=1051;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1LzUkj9iF1QTqkhkxSMzlXSHEAzYwT2CSnTg9gQJulk=;
 b=FKmqk6Gr6FaKcHuv0nADfCA9hObUgKvqTmFA9kWSayXIpd0s/Xv8TvYkm+y9BgVo2nlyXhuMA
 hXIvIc15hr4CmN/xYHUhwl1iTrP0k8gu3FD368x5QjZcZrBOyhOh4lD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050840_476829_7EE9DBC9 
X-CRM114-Status: UNSURE (   8.47  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] mci: mmc_send_tuning: actually point data.dest at
 the buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mmc_send_tuning() allocates a tuning-block-sized buffer with calloc()
but never assigns it to data.dest, so the host transfers the tuning
block to wherever data.dest happened to be (uninitialised — typically
NULL). The subsequent memcmp against the expected pattern then always
mismatches, so any caller would observe -EIO regardless of the
controller actually receiving the block correctly.

Fix by setting data.dest to the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 33934a6a35..23b9117869 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1684,6 +1684,7 @@ int mmc_send_tuning(struct mci *mci, u32 opcode)
 	mci_setup_cmd(&cmd, opcode, 0, MMC_RSP_R1 | MMC_CMD_ADTC);
 
 	cmd.data = xzalloc(sizeof(struct mci_data));
+	cmd.data->dest = data_buf;
 	cmd.data->blocksize = size;
 	cmd.data->blocks = 1;
 	cmd.data->flags = MMC_DATA_READ;

-- 
2.47.3



