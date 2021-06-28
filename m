Delivery-date: Mon, 28 Jun 2021 08:41:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxkxF-0001QK-TE
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:41:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxkxE-0002wS-M2
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:41:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lAhFe4BOY89M8XV1pA0drpjUXxbXCkGeXbcSm/hkQF8=; b=ugNno7isXZWhou
	HBlU+l04GhZ7pd/CRp2JEjL4rMdJ1od2bEIvtvi59EQPfSaTfxKSxq1kj3q9CkX7W9FEXc0kIYxlX
	OEYjBknzKog2PnvrE6RClmZ+fOANi9Ew+97AJuzHbtdyj5o8wvi9o1TwrQOBwxxAUocB2cIgnsw6H
	FK8gjYBsR5ASf0oWo7NUnidG00HcWepDdrOc+N5hAiTpAebZVhO8KJpWHwCEOai1DrouFWsZTpSWJ
	qkjT3PoGiaYZ30jWVp5AnfD4s3ufPEKd3Eqt+6XBQ2sVLL92YVX/nkXBIJq1iM7zGfP4hElvRilYm
	sOLmJvDUQ0oaTRGUdxLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxkvp-0072vs-JD; Mon, 28 Jun 2021 06:39:45 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxkvk-0072u8-Hk
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:39:42 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 792B41C0004;
 Mon, 28 Jun 2021 06:39:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Jun 2021 08:39:28 +0200
Message-Id: <20210628063928.1083081-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_233940_756753_9445B299 
X-CRM114-Status: UNSURE (   7.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! sandbox: ship sample environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sample environment contained a new line as its 4K+1th byte, when it
should have been only 4K big. Drop the new line. No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 --- old
 +++ new
 @@ -254,4 +254,3 @@
  00000fd0: 0000 0000 0000 0000 0000 0000 0000 0000  ................
  00000fe0: 0000 0000 0000 0000 0000 0000 0000 0000  ................
  00000ff0: 0000 0000 0000 0000 0000 0000 0000 0000  ................
 -00001000: 0a                                       .
---
 arch/sandbox/board/stickypage.bin | Bin 4097 -> 4096 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)

diff --git a/arch/sandbox/board/stickypage.bin b/arch/sandbox/board/stickypage.bin
index e507ca656e6488ff5cebbdda8169f1ab153abb19..12d3aa4035d3c22459317e74a5a94bc35a12a7b7 100644
GIT binary patch
delta 6
NcmZovXi!)n000ME0rCI<

delta 8
PcmZorXjE7rz{mvv3rYd~

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

