Delivery-date: Mon, 20 Oct 2025 14:59:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTi-009tq6-2m
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTd-0000vQ-1r
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RemhFG31mMP4PNCiMP+C63lQh3G4Itq021kixIJmEgk=; b=qxpqcUaUDleMY25xx9N/LIomwu
	BYAdDL4L/ie/BHMq3WoC0RcWTzcOtxnMRVcViKss2jmATnThCMUBYyuK69tvFUv7pO7MjAiKVRGsl
	gGyaHZE7xINwj8sUop0mttsIqRKKGS/sqZEJ0FasHlRAMa22q1H2/3nIFlBiFKCx1bAnTVe8zAfaG
	EgebHsA7TvCD0+yLJspYdJRf1pKlCC/Ck0FZrFJhZw7ApB9J5ejUyfciD3MlJ2xyVDP1odYthl55N
	FK0kseXf3K4ina4WCbKWIsF7QCdgrpsKVvnMmdkf8jj32entbxCyCwFROxhPIwOJjIffvA+qxBfQK
	j4q5sq6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSq-0000000DfSO-3bcd;
	Mon, 20 Oct 2025 12:58:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSl-0000000DfGT-20FA
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=RemhFG31mMP4PNCiMP+C63lQh3G4Itq021kixIJmEgk=; b=u/uFPpEFUvk5YZi/uPRCHlonBi
	ArhbymmGVwprpPkWma2ukL1H2vhg9F/4ghTzAr4ZUx2m+6nhiMXjOnWktlAS8EdN2aL2JXCRUrl/w
	fgvbeGXwLJR8Axc0EWI/IW3Clxt98o3fl/JSpbxBS8WbjVh5hLc4/ow6RGAxyxiyolSvlHJHOGPn+
	zITfa01ejHnURb9ieR0c9I8EFWwsZjYLMGX0I/cvtiVcuff9UYYH8qW/E7UgjQ0Px529IQPYKv8IJ
	s1AhmLBErHXqPOetxSFe/tjZ7/WKLXqGlW6SbuPUXCmIs5oCdcZ0KlnxbnJVq9epK1Wwn7H2ZtomX
	HEfFZoeA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSh-00000007hb9-1cBu
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSc-0008Cv-SJ
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-004XTm-1C;
	Mon, 20 Oct 2025 13:30:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-0000000A67x-1FCS;
	Mon, 20 Oct 2025 13:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Oct 2025 13:30:57 +0200
Message-Id: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHEd9mgC/x3MwQpAQBCA4VfRnE2NFcqryGGtwURLO4jk3W2O3
 +H/H1AOwgp18kDgU1RWH5GlCbjJ+pFR+mgwZIqMDOF2dIs4nPlWdKvXHd1gbE5UMdkSYrcFHuT
 6n037vh8TGNtgYwAAAA==
X-Change-ID: 20251020-public-keys-const-cf2a3007e0a6
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760959859; l=1350;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iHbCU8kZS7j6J2F2t+QRu0b56XW12lUZaeJS2qmC5Gg=;
 b=6RbUwTdOEzNYO9txzHctc6qm7LhxBK1410IiKdrdaL8KbwogegK+fT7A6L1ca/XOI3wmSa/Wp
 33x2V8NItoqAyyIQtJAFgIn99Yk8Gg6L3lwXVYQ049ZTa/aEnTPWiVn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135808_694221_C474A52A 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] public_keys: make const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We current have a struct list_head member in struct public_key which
prevents them from being put into the readonly data section.
Move the list_head out of struct public_key so we can make the compiled in
keys const. With this we can do some further cleanup by removing the key
duplication functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (5):
      public-keys: ecdsa: remove list in ecdsa keys
      public-keys: move list out of struct public_key
      public-keys: rsa: allow struct public_key to be const
      public-keys: rsa: remove unused functions
      public-keys: make const

 commands/keys.c             |  3 ++-
 common/image-fit.c          |  4 +--
 crypto/Kconfig              |  1 +
 crypto/ecdsa.c              | 18 -------------
 crypto/public-keys.c        | 61 ++++++---------------------------------------
 crypto/rsa.c                | 33 ++++++++----------------
 include/crypto/ecdsa.h      | 12 ---------
 include/crypto/public_key.h | 16 ++++++------
 include/crypto/rsa.h        | 12 ++-------
 scripts/keytoc.c            |  8 +++---
 10 files changed, 37 insertions(+), 131 deletions(-)
---
base-commit: e8bf031f85acbd792e489c8f4ecbcb770dda16ef
change-id: 20251020-public-keys-const-cf2a3007e0a6

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



