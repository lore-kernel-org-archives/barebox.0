Delivery-date: Thu, 26 Feb 2026 13:24:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaPc-005sgO-2U
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:24:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaPd-0001l3-3x
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GtleYJfFC1zToRr2U5Da68Ra6uf4IB6L+neZjYhqJOM=; b=e+Ga0jxMnwVuyN
	V6IkUHrYD2fB6RZE7V0rXsasZ/J1nE61ekgzVarjlJa92slnQUAVKrc51/CRq1PDLku8mc+oW8VUy
	h3CUZOtm4NlRvbhtkzrV2sRE13iuKmqY4evN3ONh/vV0YTsSWrj43U8GbMUFWLWCwqFsuYKMc2w9h
	FEzDEaWh0XVlYkewf0t1whiDxfQY5525dCFywnTh/vHzkIk6vON+R8PitOPoTiS02HoZTkBD0XHYt
	1YeB/W12H1QVVGEcppWgeEL05D2DTKCbV69B7aToW6DM+dsmZncM5HrxeAHr3kg2BhLyFO6tyL5Dd
	j9X7msLA202PAiHEQGMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaPH-00000006724-2PxP;
	Thu, 26 Feb 2026 12:23:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaPE-0000000671F-1wRq
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:23:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaOw-0001Sk-UE; Thu, 26 Feb 2026 13:23:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaOv-002jCU-0j;
	Thu, 26 Feb 2026 13:23:30 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaOw-0000000A78X-28uH;
	Thu, 26 Feb 2026 13:23:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2026 13:23:28 +0100
Message-Id: <20260226-arm-setup-c-v1-0-f52fe8ee81ba@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEE7oGkC/x3MQQqAIBBA0avIrBtQA4OuEi1Ex5pFJloRiHdPW
 r7F/xUKZaYCs6iQ6eHCZ+xQgwC327gRsu8GLbWRWhu0+cBC153Q4SiD9M55T5OCXqRMgd//tqy
 tfTAYdUtdAAAA
X-Change-ID: 20260226-arm-setup-c-30f0dccdde71
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772108610; l=793;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HLeCpf/6iYxAumXUpz9+fc+sCyDZG7PF/31UJtguABs=;
 b=eSiZFR4B/l4qkqwQwtA/7TxKeuUk2ybEw8PLfIiEG641xyEHTfHC6b8M466zSMTz+mcTGOZ+0
 8ry4Njgz4OFC76haB8VDbXh8LwyrW7mhxwpzyPmQcfFUxkqc78FZRXp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_042349_414126_30B2C05B 
X-CRM114-Status: UNSURE (   6.59  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: Avoid to clear bss multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently we clear the bss everytime we call setup_c(). We can do better
and clear it only once which makes for example alloc_pte() in the PBL
MMU setup preserve its state and we can call mmu_early_enable() multiple
times without harm.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      ARM: setupc_32: remove relocation code from setup_c
      ARM: setup_c: avoid clearing BSS twice

 arch/arm/cpu/common.c    |  2 ++
 arch/arm/cpu/setupc_32.S | 35 +++++++++++++----------------------
 arch/arm/cpu/setupc_64.S | 10 ++++++++--
 3 files changed, 23 insertions(+), 24 deletions(-)
---
base-commit: bd5518cd7e34861706f87c8ca67b640d6257d5b8
change-id: 20260226-arm-setup-c-30f0dccdde71

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



