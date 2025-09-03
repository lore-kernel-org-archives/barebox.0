Delivery-date: Wed, 03 Sep 2025 21:19:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utt1C-007l6l-1h
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 21:19:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utt1B-0006vr-Cs
	for lore@pengutronix.de; Wed, 03 Sep 2025 21:19:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J024FS8i2Tw/rCnhm6bjY7t3F3+3eFdcz5STMhJTg3Q=; b=giQ/xtZOzlIBidyuIR7Ovi9w1a
	SFhoYhMPn6g2t0aaRflzpo2YXZHJP1aa3QD/MD1uODcwWKaXLXHSDtBtuAoGfa7quuCqIyQd+sycb
	bbDELzr+5KT6JhOYGx1rRbbXoIZIu9Ln1Op1lXeb1kJpaiEASaea++Vrb/cAFTRypS8l5fD8bxDdl
	s6rKiI0QuQwb8m4gMNSRjs/uYRC8OEEvKUPqmQP7l6yBhxExlAmd5WICooUWDtFDqBROaCITUNKd1
	gRD1au4oaER1UWuza7BJ3ol5FVZUJCP213Lg3h7lfX+bMVdJPuvuhRVAnFdXfLfV+SNfJwaT1RJKo
	BkW+Ct7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utt0Q-00000007QvE-1O8F;
	Wed, 03 Sep 2025 19:18:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utoWC-00000006jxY-24JN
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 14:31:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 371A343DAC;
	Wed,  3 Sep 2025 14:31:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16908C4CEF4;
	Wed,  3 Sep 2025 14:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756909884;
	bh=7nQM8Y6giHxrowtl1Fq2xtRuf303tQ7l/XPNGurWAkY=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=gSNsUCeRP8R2PdBrpJzS3qCvOA2o+H/ScOjdCTUix5oRd5NMmrlON+dNe+DG/pOly
	 uMzKCmWySeGIjGWAygz4gIzthi6uFZ58yzXvP7RNRNEG+mkzwryppcPgcK7XDRhA59
	 rZwJRjl0TX0xcZVWtaqsT5JbZFYTGIe5diH+0NVf2HPogeN/n06tVB3bAb06BvvOG4
	 CJNge5ojJPt+pF8PNyo/zBNoCFJzT3sjD7DZlmlCME7xanCx3SizC3lau8VsN+eAp5
	 OlZpNAgpuxy5cy8Cvxj7ZnnND0rmHan4ETDyAcGj/jmtV7WfYq0qb5dUxnJLLZzvx+
	 01e9glTuSz5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09836CA1011;
	Wed,  3 Sep 2025 14:31:24 +0000 (UTC)
From: =?utf-8?q?Christian_Thie=C3=9Fen_via_B4_Relay?= <devnull+christian.thiessen.airbus.com@kernel.org>
Date: Wed, 03 Sep 2025 16:31:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250903-mtd-erase-enosys-v2-1-7b7f28302f25@airbus.com>
X-B4-Tracking: v=1; b=H4sIADhRuGgC/2WNQQ6CMBBFr0Jm7Zi2ggVX3sOwKGWUWUBNB4mE9
 O5WElcu30v++xsIRSaBS7FBpIWFw5TBHArwg5sehNxnBqNMpRplcJx7pOiEkKYgq6Dpa0Vl563
 1NeTZM9Kd33vy1mYeWOYQ1/1h0V/7i53+Y4tGjc3ZuqbS1viSro5j95KjDyO0KaUPjitzG7EAA
 AA=
X-Change-ID: 20250902-mtd-erase-enosys-2d80e4bc77c8
To: BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756909883; l=1789;
 i=christian.thiessen@airbus.com; s=20250902; h=from:subject:message-id;
 bh=emJT9PXfX11+EmeT0CfeZS06OR+auBfkOIiI8W3unJc=;
 b=I4F1s14f5xx2CiThPY90cnC4PurebN3mVrIYCZVDBNZfScKVjgo+hfhRKqEHxLKD8MhktAXKu
 Q/RgUrXg3LSDEqIqKgKlvWNvELSjeJ7j76PqvCcf6mNePg0z+YUUAPR
X-Developer-Key: i=christian.thiessen@airbus.com; a=ed25519;
 pk=NCvzeydU+5OZKp2shtC3Zp/OS1LfbLmhNZNws46FeWk=
X-Endpoint-Received: by B4 Relay for christian.thiessen@airbus.com/20250902
 with auth_id=508
X-Original-From: =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_073124_572955_09815139 
X-CRM114-Status: GOOD (  12.77  )
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
Reply-To: christian.thiessen@airbus.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] mtd: Make mtd_erase fail gracefully if CONFIG_MTD_WRITE
 is off
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Christian Thießen <christian.thiessen@airbus.com>

When CONFIG_MTD_WRITE is unset, the mtd->_erase member of partition
devices does not get initialized, so it remains NULL.
However when running ubiattach on an UBI partition, mtd_erase() still
gets called, tries to call mtd->_erase and crashes. Make it fail
gracefully by returning ENOSYS ("Function not implemented") instead.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Christian Thießen <christian.thiessen@airbus.com>
---
As discussed in https://github.com/barebox/barebox/issues/39 this patch
enables ubiattach-ing a NAND partition even if CONFIG_MTD_WRITE is
turned off, by making mtd_erase fail gracefully.
---
Hi,
thank you for the warm welcome and the constructive feedback!
Changes in v2: Addressed review comments.
- Changed from ifdef to IS_ENABLED
- Moved the sign-off tag to the commit message (why does b4 add it to
  the cover letter?)
- Link to v1: https://lore.kernel.org/r/20250903-mtd-erase-enosys-v1-1-967a95172c4e@airbus.com
---
 drivers/mtd/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6162ec450fc1c3a0fa6339042c4d627e0f9567d0..bb579a8f5249981ec1623060ddb1b7056a06c1a0 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -436,6 +436,8 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
 	if (instr->addr >= mtd->size || instr->len > mtd->size - instr->addr)
 		return -EINVAL;
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOSYS;
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;

---
base-commit: b5561f3bdd4845b478e5b35aab04f1d8e71ea93b
change-id: 20250902-mtd-erase-enosys-2d80e4bc77c8

Best regards,
-- 
Christian Thießen <christian.thiessen@airbus.com>




