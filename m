Delivery-date: Thu, 20 Mar 2025 06:17:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hd-001l0U-35
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:17:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hc-0002XO-Fr
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:17:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/RofV+CFlCSnrTA2hx/qQD4TPR8n3z7xK/O72eJp6MI=; b=QpQf+gJ1Zs31bCIOISypXgsca7
	BtVuECblFVlmomfsyV7CZ8P4EdmXg+jrY6xGtCecou5VgZ8uQLH3yJHTsDT7x+gZH4Um4quKspszL
	CHOEiR8/6V2z+1CWLAxvQ8lQtl1ZjKO1cG7uUttaDPBZYt82b0LnvyaOle+AWpwWb3njPQ0NWZ7nT
	x4ZjbYhM2N0q5Yfquktz2PO9RH5bWZdq0FoHq2UWGL/DSn5mCB3kgZQOXkOYvPgza6JfT+2I8RRHv
	20IH8qWt1gdIrW3wRwJalAZGswWeBJiCswhH/NWtOkcZKKgGsgBPmn0MCxQv015GQ+qYdwvT99XXm
	WJ4qujXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Gx-0000000BBgS-2BAv;
	Thu, 20 Mar 2025 05:16:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Gt-0000000BBeg-0pKi
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gq-0001yS-Si
	for barebox@lists.infradead.org; Thu, 20 Mar 2025 06:16:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-000huJ-1E
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 06:16:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-007EvV-2I
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 06:16:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 20 Mar 2025 06:16:33 +0100
Message-Id: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_221647_244573_944EC05C 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 0/8] treewide: misc fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just a loose collection of fixes for master.

Ahmad Fatoum (8):
  firmware: disable MISSING_FIRMWARE_ERROR for COMPILE_TEST builds
  include: asm-generic/pointer.h: fix ASM_PTR definition for i386
  sandbox: do not enable SANDBOX_LINUX_I386 in allyesconfig
  Documentation: devicetree: fix Sphinx warnings
  ARM: mvebu: kwb_bbu: add missing header
  net: phy: fix of_get_phy_mode for XLGMII and beyond
  vsprintf: fix left indentation when formatting wide string arguments
  test: self: printf: add tests for formatting wide strings

 .../bindings/barebox/virtual-reg.rst          |  2 +-
 Documentation/devicetree/index.rst            |  1 +
 arch/arm/mach-mvebu/kwb_bbu.c                 |  1 +
 arch/sandbox/Kconfig                          | 10 ++-
 drivers/of/of_net.c                           | 36 +-------
 firmware/Kconfig                              |  2 +
 include/asm-generic/pointer.h                 |  4 +-
 include/linux/phy.h                           | 82 +++++++++++++++++++
 lib/vsprintf.c                                |  3 +-
 test/self/printf.c                            | 15 ++++
 10 files changed, 116 insertions(+), 40 deletions(-)

-- 
2.39.5



