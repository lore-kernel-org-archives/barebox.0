Delivery-date: Thu, 15 Jan 2026 15:24:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOHK-001ccC-0J
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 15:24:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOHJ-0000gK-4S
	for lore@pengutronix.de; Thu, 15 Jan 2026 15:24:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=inPZeBdkX/WysGkvmebFq2kX1Ya+2AJuiTjTK38f/Ms=; b=RX138yzys9mzQ61vksVqxomlts
	FeFsie7i3PhVHC4ZGYfeuhApEW/LVQNgjGPSawDGe94P/Az8KlwVq90Z3ODO21F2JAlsIf8mV886E
	wTqEZi1gvYfbIbb4v5D8D4shpXTm5d1erB9qiIk6fCE2TqnhxVDczz1GnwcFj38kRZVLCUqzlwbMS
	S86ZKdAj94zxBf1PEVmJZrq1OJaapR+CrpWcftPgOD2KMCzcXLeUdtCMznrmXzjpMh92E9jIJ6chD
	sUlKfVPGX3eKuhI+aKergwBSwNP9Es8e41s8KrL+RnqfkSylbfnQnv9SBuZhfzvL/2t2GWtUfWQSj
	VUwOx6ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOGo-0000000CTjR-1vtJ;
	Thu, 15 Jan 2026 14:24:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOGl-0000000CTiw-2V1N
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 14:24:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1vgOGi-0000ZB-L4; Thu, 15 Jan 2026 15:24:12 +0100
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1vgOGj-000le3-0Q;
	Thu, 15 Jan 2026 15:24:12 +0100
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ejo@pengutronix.de>)
	id 1vgOGi-0000000EMY8-1io6;
	Thu, 15 Jan 2026 15:24:12 +0100
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Date: Thu, 15 Jan 2026 15:24:01 +0100
Message-ID: <20260115142410.3422704-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_062415_654367_7C630BCF 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] block: don't error while flushing when write support is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If write support for the underlying device is disabled (e.g. by
disabling CONFIG_MCI_WRITE), blk->ops->write will be NULL.
Unconditionally dereferencing/calling blk->ops->write() results in a
NULL pointer dereference.

Fix this by making chunk_flush() a noop for missing write support.
Don't return an error since there should be nothing to flush if write
support is disabled, anyway.

Note that barebox currently does not prevent calling write/flush
operations, even if CONFIG_MCI_WRITE and thus write support is actually
disabled.
But this should be handled on another level.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 common/block.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/block.c b/common/block.c
index ca2ed37dbd..abd05eab39 100644
--- a/common/block.c
+++ b/common/block.c
@@ -60,6 +60,9 @@ static int chunk_flush(struct block_device *blk, struct chunk *chunk)
 	if (!chunk->dirty)
 		return 0;
 
+	if (!blk->ops->write)
+		return 0;
+
 	len = writebuffer_io_len(blk, chunk);
 	ret = blk->ops->write(blk, chunk->data, chunk->block_start, len);
 	if (ret < 0)
-- 
2.47.3



