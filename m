Delivery-date: Mon, 08 May 2023 09:47:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvvb0-009qO1-0h
	for lore@lore.pengutronix.de; Mon, 08 May 2023 09:47:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvvay-0002pE-1P
	for lore@pengutronix.de; Mon, 08 May 2023 09:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xF0nS+GliLpd6vjc3Jsjp3QMCRXN9nRzyjg6gX0X760=; b=HQ82ECrKPR17Rq++55+4o9Dc50
	0pZha9QOBr1i05lPMFFQojQ6zbdMQHSvwf8PG3sfbdV1xjC/NqfSIS8nkOgmrg2qfYf13RoCgIgn0
	BsiKA9JiLwlNJED/wLhh1DUt/8aGO0WpWBjRbMrl5L1zlg/GWNfyDC39venDjX2aFedg8h/Jwy4GP
	Y7FIp/0qMgJ6n0B5PGN8tLs8gDxDV5lIfP06+EIFo9UV7LMzPV1MqhGO1XDg6Bq1IrEuW/y2U/gD/
	heIORPIWbAMiTAZxDxaABBuurNiagxjt1A/CPQS58gnCc93QAPBVJ0s1DJqwc3g5nfm/E+caEj4iM
	U4fgrnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvZe-00HW0c-0J;
	Mon, 08 May 2023 07:46:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvZc-00HVzy-0Q
	for barebox@bombadil.infradead.org;
	Mon, 08 May 2023 07:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xF0nS+GliLpd6vjc3Jsjp3QMCRXN9nRzyjg6gX0X760=; b=rgZ5G1JEBVgFlTFFTtjGmZlE7H
	sJGz7CF8Lac1VfURF7+kfV/Pnfajyy3Di8+aw/AeFUaYM7YcmDzKgB6U5Y+Dy/cf3asmp1KnpQrey
	yunCSkHtu/hOYEgkl3zqZ7YNbPnKEbHrM69DB/U2SZuby3oxeUheMSmRymR/SJQMHGTyaBem7hew+
	cm9kVU8Q4O7Kitpx5AhKZeVoM9etNDirjxvNtvuXq4iOUOzjVQdEgnOHv+fmYU3VwbJzoYsbM0A3i
	C/umQij1hLM5dDaf8CVDs98F+aimrvEDHCkLfMK8abHg9QGz5W2yXAxKL/A46ewHWXS1fT5LAVnGe
	so/ckIzw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvZY-0055Py-2S
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 07:46:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pvvZX-0002ZQ-HX; Mon, 08 May 2023 09:46:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pvvZW-001wDG-4N; Mon, 08 May 2023 09:46:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pvvZV-00Du64-Gn; Mon, 08 May 2023 09:46:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 May 2023 09:46:12 +0200
Message-Id: <20230508074612.3313870-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508074612.3313870-1-a.fatoum@pengutronix.de>
References: <20230508074612.3313870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_084616_928646_B759F2CF 
X-CRM114-Status: GOOD (  11.44  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/2] block: refuse registering block devices with absurdly large blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Block layer caching can't work if a block is bigger than BUFSIZE which
is used for the caching chunks. Instead of ending up with a rdbufsize
of 0, which leads to strange errors on device access, just refuse this
outright.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/block.c b/common/block.c
index 7f28b56419e2..c39269d3a692 100644
--- a/common/block.c
+++ b/common/block.c
@@ -388,6 +388,11 @@ int blockdevice_register(struct block_device *blk)
 	dev_dbg(blk->dev, "rdbufsize: %d blockbits: %d blkmask: 0x%08x\n",
 		blk->rdbufsize, blk->blockbits, blk->blkmask);
 
+	if (!blk->rdbufsize) {
+		pr_warn("block size of %u not supported\n", BLOCKSIZE(blk));
+		return -ENOSYS;
+	}
+
 	for (i = 0; i < 8; i++) {
 		struct chunk *chunk = xzalloc(sizeof(*chunk));
 		chunk->data = dma_alloc(BUFSIZE);
-- 
2.39.2



