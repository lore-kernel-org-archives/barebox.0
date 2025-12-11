Delivery-date: Thu, 11 Dec 2025 21:53:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnev-00AQen-1K
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTneu-0002oe-RA
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SHspugj+m3n7nmlxFzk/ExCdv7cz9CEq4uUX7FEvxto=; b=rVpvxCxIX8CshRhcdAtdLHmYVd
	NHpOPeV6Z+K9wd445iLmH0Ibg4ordvznuwyybY/30hSv4zkSuAvk3WKMHCo+N04HPjQ3pI5xhgyju
	Ks0g+exWwYPa2b+P0DDIdDFG/VgKaMl8EITelNLHxGVsubHZTZ7SQYXxjqfoktgejTwofSkFO0b0o
	W0jEJt1rvYtEahgdFO0RFkWoHRG28sz9aL8FU0GaTXHFOCEs3koJUirkD6VbMYZtCuJzvtkZYA6JV
	xOuAK8rst5njL2eCTieECcXvTYonKOH317fGTcpmzN+gH+Rrl2FC+SgkFCafg3U+Y5coA+BZXqEKN
	5aazcccg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneX-0000000HI9s-2rha;
	Thu, 11 Dec 2025 20:52:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7R-0a8U
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002V8-Gh; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BYz-14;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-0zY8;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:02 +0100
Message-ID: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_181685_4BF36D8C 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] resource: add support for walking resource gaps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently keep track of regions with the SDRAM by requesting a struct
resource from the memory bank. We will make additional use of that to
request memory handed out to EFI applications when barebox is being used
as EFI loader.

For that purpose, we need an easy way to walk the requested memory
region and especially the gaps between them as well as support for
freeing partial regions.

Ahmad Fatoum (6):
  resource: implement resource walker
  test: self: implement resource walker selftest
  commands: iomem: add support for printing gaps
  test: py: add test for valid JSON output from iomem/clk_dump
  memory: add helpers for iterating over memory regions
  resource: implement release_region_range

 commands/iomemport.c   |  41 ++++---
 common/resource.c      | 246 +++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |  30 +++++
 include/memory.h       |   6 +
 test/py/test_shell.py  |  41 +++++++
 test/self/Kconfig      |   4 +
 test/self/Makefile     |   1 +
 test/self/resource.c   | 189 +++++++++++++++++++++++++++++++
 8 files changed, 545 insertions(+), 13 deletions(-)
 create mode 100644 test/self/resource.c

-- 
2.47.3



