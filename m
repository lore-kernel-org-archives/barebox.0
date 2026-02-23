Delivery-date: Mon, 23 Feb 2026 12:35:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-004odZ-0w
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:35:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-0000Wk-LB
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8u6Hwhy/YIHuHZVIxl5fMAKrxZJ0hHA3EW91Ryb2kwg=; b=5CHBurtRnlITmpRwadK0ndFCSh
	b1gQCm5MssAJn5gjvKGqFY8AU+iZY8Rf7BPZRP8DPhwRy0O4vyBRjm0+Qw9whOEIEptxn9rAg5cfx
	YTU8nr4DGLBrIeioNzZC4ozV1YP3FU0i4xT+3By4dzursulxqUmRt8ptaBM94SLzOIcKYd7M4HIeM
	XYEB0wIt+16dwK5lsx157l4W9VajWmzwAS1UZoe6Ha3p5sDwmLJgtKkKD1Y+kIYodmqCCFAWa7qm7
	T8EUjIEkH/59OvUBl7GmzWB+1QfKseji0xB4exJMC+RBNp24kJ8XZp/pbGYmJmPkrbyAIeunWBX3f
	DXGkkXIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDZ-00000000CAC-3XSE;
	Mon, 23 Feb 2026 11:35:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDW-00000000C8C-45kK
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:35:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuUDU-0000JU-SB
	for barebox@lists.infradead.org; Mon, 23 Feb 2026 12:35:08 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon, 23 Feb 2026 12:31:31 +0100
Message-ID: <20260223113446.638135-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033511_010252_066A5483 
X-CRM114-Status: UNSURE (   5.89  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] MAKEALL: sanity check command-line options more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I watched how Claude Code stumbles to use MAKEALL correctly for a while
and indeed MAKEALL could really use some improvement in user experience.

This series adds some sanity checks to make it more difficult to misuse.

Ahmad Fatoum (4):
  MAKEALL: early exit if config specified, but no arch
  MAKEALL: devel mode: abort if no positional config
  MAKEALL: error out on options placed after the defconfig argument
  MAKEALL: flock build directory to prevent concurrent builds

 MAKEALL | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

-- 
2.47.3



