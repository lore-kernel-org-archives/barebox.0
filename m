Delivery-date: Mon, 31 Aug 2026 15:25:36 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1211-009I53-2C
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:25:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3295320248C
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:25:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=B5VuaDYB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DywLcv5iZsxokNcgBv1gmps1G4xzO/kLxyIdp3AGMF8=; b=B5VuaDYBI5Yh/oDzUCw5iIFATs
	K5J+ZNMm7CUmaHJyvmoiSsUnA6scTJziMcwy/xyuxsmJ/zM8YPCCYz2jCvbM+J5xwoOo+Xeh+lUkL
	nRITPjIRgQKt9q+HLlIc20AlSfifwTPhBhhI39iNF56sMM5+sGA9KAt5IFgvdb3JJZ+n6a85FFcb3
	Do1TZkarqzQ8GyjClDzdhxo6s2nANKbWDqm7B6qLSeaM9Qx+YJHsuBOqM0GyojwgUVtEStLesBEFF
	Y4p+yjj9KUqHXNOWxNGKwdqgJ6ybezlWU7K7eFb3AjSAkbQtW3i7C4kdgsyeUkVYPfJG46hhtcsYm
	zKjOShuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11w0-00000009Nyw-2esl;
	Mon, 31 Aug 2026 13:20:24 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vs-00000009NtF-31od
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BF668202433;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR0-1u;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1wEx;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:10 +0200
Subject: [PATCH 03/13] block: propagate errors from
 blockdevice_unregister()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-3-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=1368;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=d8jySIxKXugUXlv9UcX0tKErh1VxB8APwwUnse9TIeA=;
 b=5J/h6oRGKsZiqgwqRggn0XxT13J0Ko4ZWZQlFBVbJVMRZqVUqXucZf+6dbfsUHPuSh7mMm8fp
 zQJNHCGG1txBsGa8kHakc+SlLnxxywHBJyJ3QCUaRUaYtLzkwqkPHOt
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062016_928080_405BA11C 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  blockdevice_unregister() discards the return value of devfs_remove()
    and always reports success. A caller therefore has no way to find out that
    the block device is still in use and goes on to free the [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 6hxs5wfbdctraszuf3cb4jittyh4mkeu
X-Rspamd-Queue-Id: 3295320248C
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Action: no action

blockdevice_unregister() discards the return value of devfs_remove() and
always reports success. A caller therefore has no way to find out that
the block device is still in use and goes on to free the memory the
cdev, and possibly its partitions, still refer to.

Return the error and do so before anything has been torn down, so the
caller can simply try again later. The buffer chunks and the block
device list entry stay untouched in that case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 common/block.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/common/block.c b/common/block.c
index 5f509bfb9d..141604eb87 100644
--- a/common/block.c
+++ b/common/block.c
@@ -519,6 +519,15 @@ int blockdevice_register(struct block_device *blk)
 int blockdevice_unregister(struct block_device *blk)
 {
 	struct chunk *chunk, *tmp;
+	int ret;
+
+	/*
+	 * Do this first: once the cdev is gone there is no way for the
+	 * caller to retry, so give up while everything is still intact.
+	 */
+	ret = devfs_remove(&blk->cdev);
+	if (ret)
+		return ret;
 
 	writebuffer_flush(blk);
 
@@ -532,7 +541,6 @@ int blockdevice_unregister(struct block_device *blk)
 		free(chunk);
 	}
 
-	devfs_remove(&blk->cdev);
 	list_del(&blk->list);
 
 	return 0;

-- 
2.47.3



