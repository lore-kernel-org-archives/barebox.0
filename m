Delivery-date: Thu, 02 Apr 2026 09:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CuF-007m8J-1d
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CuE-0006Yz-UL
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EbRU2Ai51mBQ80XP+FZAcSP3whUj/ald3MKGqEVaA5w=; b=3NGaAGFmF5W68PZjVr5ckMzNx1
	SHYZzLNFPF7D1NVD5rk3ArCrhMrz2WEZ2XunhwseBCRlBipcxh4pM4TMJbMRG1x+VP0xJZQcNQtk6
	3M3KpWc2dLWHyStwfuoMyEdIKCYPlbhhlZ3n8r3A3B2meat/nwbmqfTEP1JC09iNLm5aFW1rN8XNs
	knGIoFbiWJy2yDFwyi13hoeFzFF4gmzAZv4gQPEoq5Wr09UPirotre9UQUA4W7K+t64z/leqKn32S
	9PG3QKRHTUf2IoH4krg0g7NDShQm40NMDLpI2T8qHK1SOzHJsxPzAEAH0F01nYlSSSf7j8pPooUoK
	MDMzsgTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ctn-0000000H7ez-1r3w;
	Thu, 02 Apr 2026 07:55:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Cth-0000000H7ec-0EwU
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:55:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-0006Nw-Ds; Thu, 02 Apr 2026 09:55:23 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-003L4j-0i;
	Thu, 02 Apr 2026 09:55:23 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-00000003RCj-0cUg;
	Thu, 02 Apr 2026 09:55:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:55:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-nfs-buffer-overflows-v1-2-5dc46ef1da81@pengutronix.de>
References: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
In-Reply-To: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775116523; l=969;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/kME9kpan9A2g9KVChk79Xs+FoGBITSUlRyB460yi10=;
 b=1n8R6wzxkB7nRa4TR7ZCuIX9Y4NPrsCIBMWWDV0kg7pVQRniGkKfN67voOC6S2W+PzshGenn+
 tRzLVcKAC5kDnxkSoppEXxwLZ/IiRtnu5XrsTsiwhfcf2sDhjWibldA
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_005525_103202_0D8399C6 
X-CRM114-Status: GOOD (  10.15  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fs: nfs: fix NULL dereference in nfs_read_req on
 truncated packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

nfs_read_req() reads the data length (rlen) from the server's READ3res
response and uses it to extract the payload via nfs_packet_read(). If a
malicious server sends an rlen larger than the remaining packet data,
nfs_packet_read() returns NULL. The subsequent kfifo_put() with a NULL
source pointer causes a NULL pointer dereference.

Add a NULL check after nfs_packet_read() to catch truncated responses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/nfs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index edc15e0ce6..d42ef6bc86 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1194,6 +1194,10 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	}
 
 	p = nfs_packet_read(nfs_packet, rlen);
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
 
 	kfifo_put(priv->fifo, (char *)p, rlen);
 

-- 
2.47.3



