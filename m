Delivery-date: Thu, 07 Sep 2023 10:23:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAIM-006uJz-Vp
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:23:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAIL-0007o0-7v
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:23:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TRAghw0I4rRM6rcsWZbLmEBdTByegqe1AMwDhRWVr8Q=; b=PCgEhvMZP3nndieXyErm6jcbUj
	OOiow25CSf+WYDx3voJy/YncMSV02jdYYS5MI9q2Dh3aXd99pQ+IC2WqVQE74/6yIiHKb5yjOVfX7
	PtsUgQevJM3sns1cfOmh1e4BTrhPc6Ftl8fdPb8ci2fe3QBx0zjhBZs4kuQC+kuG27iFg2pHb2Igz
	SzW1H4Hr1UQh3Cv5Rbf/YuOx0Fp9gJh2ZCpDCQVekkoRQL0jZlByMudvAuaYVldu+i8ZPebhMD/q+
	RRcdAoyFmWgwf+3zGL9x6ELGSc+i5cDbR86RpDYoOmdDM6UCuyl/w0vr5DnnwmH9O/d2hiS8uxy+Y
	yO+8Gw+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAH0-00Ba0G-20;
	Thu, 07 Sep 2023 08:21:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAGx-00BZz9-0O
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:21:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGs-0007EF-F2; Thu, 07 Sep 2023 10:21:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGs-004buN-2p; Thu, 07 Sep 2023 10:21:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGr-009znX-1p;
	Thu, 07 Sep 2023 10:21:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de
Date: Thu,  7 Sep 2023 10:21:24 +0200
Message-Id: <20230907082126.2326381-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_012155_158359_F31428B5 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] console: pbl: correctly handle relocate_to_adr after pbl_set_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pbl_set_putc may be called by a PBL entry point to store the absolute
address of a routine to be used for printing out a character.

If barebox happens to be located outside of the initially known RAM,
it will be relocated into it by means of relocate_to_adr(), but nothing
will take care to update the function pointer stored by pbl_set_putc.

This will usually continue to work until barebox sets up the MMU and
everything not known to be RAM is marked as eXecute Never. After that,
the next PBL console print will trigger an instruction abort.

Fix this by not storing the putc function pointer, but instead an offset
relative to _text.

This fixes the issue of barebox hanging on i.MX8M when located at an address
greater than 4G.


I thought about going further and make pbl_set_putc callable, even
before relocation. The problem here is that runtime_address() may
not be called on global variables defined in the same file for good
reasons described in its documentation. So that's left as future
exercise.

Ahmad Fatoum (2):
  ARM: mmu64: mark barebox text section executable during early init
  console: pbl: correctly handle relocate_to_adr after pbl_set_putc

 arch/arm/cpu/mmu_64.c |  1 +
 pbl/console.c         | 13 ++++++++++---
 2 files changed, 11 insertions(+), 3 deletions(-)

-- 
2.39.2



