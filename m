Delivery-date: Thu, 19 Jun 2025 10:46:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAvA-008tA6-18
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 10:46:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAv9-0004gz-O8
	for lore@pengutronix.de; Thu, 19 Jun 2025 10:46:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gFjvt6Q1VDlP1fJBnMqSmU3Kl3vEEK3jbSypEOAF9u4=; b=Kf1GR+OB9pGh92
	neCUSIGPTdy102LGnICmuU5BzOC1zGRYcJLaOpvh6AFgs23M/L2y6OI+SEO+t3mttifCE26O2gvQy
	vKPucIpXVoWLiwjUGilRiFSGSyld+o5LvN99hG0PcmWxpzqZ6NJlNCJQvJX9ef+o4ebJ5YV2hQMkk
	ngQJPbrYz2hxxjnnMRowBE6ozwoFYbcPyovA5crieP1WovUjTb2hfQYIQiJSXujfcDtesEGC/u2Mp
	Exp8zWBoDldID+6JQBPpMK7VXow44QEdqzjBBfevyc4KH/hb8zZmoPiTFhG7qcIXI2vFBO1aFxWdt
	A7usetgk3Vz7UpEuJP6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAuZ-0000000CU2A-3I62;
	Thu, 19 Jun 2025 08:46:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAap-0000000CQdK-41FR
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 08:25:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-0001wY-Pt; Thu, 19 Jun 2025 10:25:46 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-004Gtu-1o;
	Thu, 19 Jun 2025 10:25:46 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAah-003bEH-0Z;
	Thu, 19 Jun 2025 10:25:46 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Thu, 19 Jun 2025 10:25:35 +0200
Message-Id: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH/JU2gC/52PQQ6CMBBFr2K6dkhnoIiuvIdxgW2hjcqYthKN4
 e4WVyS6cvkW7+X/l4g2eBvFbvUSwY4+eh4ylOuV0K4degveZBYkSckaazgxJ+2YswcX1mfQTdW
 SUvWmQhJZuwXb+ccneThm7gJfIblg22WoxEo2UhVItFWkAOFSRO2u3qT9zQ79PQUe/KMwdm46H
 xOH52fliHP5j848ZqSl/OPNSCDBdNhJg9jUpfqqTNP0Bi2ngaM2AQAA
X-Change-ID: 20250616-bootchooser-lock-c84a25567412
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_012556_015121_32F75781 
X-CRM114-Status: GOOD (  12.90  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/4] Add boot slot locking to bootchooser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch series adds an option to lock attempts to bootchooser.
When slots are locked, the remaining_attempts counter will not
get counted down. It is optional, so when not set, it does not
have any effect on the counter. The choice of which slot to boot
is also not affected.

---
Changes in v3:
- documentation: improve documentation to better describe the use case
- reword commit message for documentation
- change comment in common/bootchooser.c to fit into 80 chars
- Link to v2: https://lore.kernel.org/r/20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de

Changes in v2:
- rename slot locking to attempt locking (Ahmad)
- drop else clauses when not needed (Ahmad)
- write commit message bodies
- change migration notes to 2025.08.0
- add attempts_locked to bootstate.dtsi
- Link to v2: https://lore.kernel.org/barebox/20250613140805.1229525-1-l.schmidt@pengutronix.de

---
Lars Schmidt (4):
      bootchooser: implement locking of attempts counter
      bootchooser: extend cmd tool by option to set attempts_locked
      Documentation: bootchooser: add information about attempts_locked
      Documentation: migration-2025.08.0: add information about attempts_locked

 .../migration-guides/migration-2025.08.0.rst       |  5 +++
 Documentation/user/bootchooser.rst                 | 33 ++++++++++++++
 arch/arm/dts/bootstate.dtsi                        |  5 +++
 commands/bootchooser.c                             | 16 ++++++-
 common/bootchooser.c                               | 51 +++++++++++++++++++---
 include/bootchooser.h                              |  1 +
 6 files changed, 105 insertions(+), 6 deletions(-)
---
base-commit: f2dc1e3b183ce2bcc05a6ab91801d7ce186d432c
change-id: 20250616-bootchooser-lock-c84a25567412

Best regards,
-- 
Lars Schmidt <l.schmidt@pengutronix.de>



