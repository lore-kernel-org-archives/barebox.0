Delivery-date: Fri, 19 Dec 2025 11:49:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3Y-00DAvx-0h
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:49:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3X-0000X4-KJ
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:49:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wz0hqWOTSQzwdvBqaB7CsXL9LapuropKZ6Nq9HQ5V6k=; b=tVCS6nyU0nngad
	POKoqbsw8QsLSjvtVquhYls3bVmFgPEFTGK8WYNVuDQQLr8TvC/xhsGY07w2ZvYafdLVX26y0p9Qu
	GjH2QE/ASHIkcWuzdETHqzhBcNKkzE8/cW+u5Sj2cL6SGdWpRrFJgeCKQBrwFFADK7lFew7faiuo/
	iCbzxERzfFZGlVyqV860480+2RFlUyfvzETnZXaHFFaWFak5FAB6L6n/kly2a1+84Lh0KwyVZYf1y
	hKeReTQ28HCyPJOeLzqke7+dnHSHVEv9UyycrKo8OSHI7bcTJn0qnItxDEGfr67+tCokX5oT3ZMEl
	twlWL4TaoKDDbSDvvkfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2r-0000000A9do-2ZGK;
	Fri, 19 Dec 2025 10:49:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2p-0000000A9cp-3g9G
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=wz0hqWOTSQzwdvBqaB7CsXL9LapuropKZ6Nq9HQ5V6k=; b=j103erc/yyaItMUExPlpBHw2iO
	S5yzOBFlDoDfv2doySt44KBnZzeMS4fyeWS6m3lY4ZlUD8Dis2CnWxR6klO0ov87Hx1h2daURpsLZ
	Uhef8NbXGjSIgr4wr0DNSCk0rB/EaEGRxYYTnfpfsfQo9EQQKCiCYPKMXRvNKUqcSCWznh5JiNolR
	8R/G2c2RX/90TZpYqP0u6kh08z4PLiJkXjNX8+/1lZGFWoiDJ4KeLKyE1ffIEsOecxf9s4P0uwb0Q
	iPEjsU3a/Z6IY5vOCj9OjxUdDWk7TaUOA+MRhisx9ritkuGlMMnxIgvJVH3hpBvqIY2d/qSww0Evz
	wxlbQVaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2m-00000007SGg-2Zoy
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:49:10 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWY2l-0000Cr-N8; Fri, 19 Dec 2025 11:49:07 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 11:48:58 +0100
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJotRWkC/5WNQQ6CMBBFr2K6dgxToIIr72FcFDrAJNqSAg2Gc
 HcLKxM3ups3P3lvEQN5pkFcDovwFHhgZyOkx4OoO21bAjaRhUxkjhILCNsFiJDA6HqugZ+zgob
 pYcDTOHkLJq2yRlKe66YSUdR7anjeI7d75I6H0fnX3gy4ff/Sh21MzwVilmJZGHXtybbT6J3l+
 WRIbI0gP73lT14ZR6lKpWuFmqT58q7r+gb9EeIYMQEAAA==
X-Change-ID: 20251218-v2025-11-0-topic-imx6-field-return-d3b4f2e55afb
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_104908_784584_41A9D047 
X-CRM114-Status: UNSURE (   7.50  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/5] i.mx: hab/ocotop: extend field return to i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Field return handling was only implemented for the i.MX8* processors.
Extend this with support for i.MX6 and extend the hab command with an
option to burn the field return fuse in case the field return sticky bit
might be unlocked.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v3:
- Fix nitpick by Marco
- Added reviewed-by
- Fix broken mainline version of UID in CST. (Tested on i.MX6Q)
- Change wording for hab command help.
- Link to v2: https://lore.barebox.org/barebox/20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de

Changes in v2:
- Added reviewed-by
- Added imx6_hab_field_return_ocotp and reintroduced the
  imx8m_hab_field_return_ocotp, but also add a new helperfunction for
  both to call.
- Implemented Marcos changes for commands/hab.c, but changed
  indentation.
- Link to v1: https://lore.kernel.org/r/20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de

---
Fabian Pflug (5):
      arm: mach-imx6: use kconfig for field return
      nvmem: ocotp: extend support to query the sticky bit
      i.MX: HAB: extend field_return support to imx6
      commands: hab: extend by field_return fuse burn
      i.MX: HAB: fix field return unlock fuse uid

 arch/arm/mach-imx/Kconfig                     | 35 +++++++++++++++------------
 commands/hab.c                                | 24 +++++++++++++++---
 drivers/hab/hab.c                             | 34 ++++++++++++++++----------
 drivers/nvmem/ocotp.c                         | 12 ++++++---
 include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++------
 include/mach/imx/habv4-imx8-gencsf.h          |  2 +-
 include/mach/imx/ocotp-fusemap.h              |  1 +
 scripts/Makefile.lib                          |  2 +-
 8 files changed, 74 insertions(+), 47 deletions(-)
---
base-commit: d6f0974673c0e3da00f8d0789d6302a43f3e478d
change-id: 20251218-v2025-11-0-topic-imx6-field-return-d3b4f2e55afb

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



