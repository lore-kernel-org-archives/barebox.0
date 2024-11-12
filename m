Delivery-date: Tue, 12 Nov 2024 10:16:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn0x-000xMX-2o
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:16:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn0x-0006oU-Ar
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:16:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q5Sye1TQu66lj4f5de+Ks6oMKP4HOd6zqdNlHfZ+oRc=; b=iTCh2nJSTjqCTV6cQgF9554Q9e
	rWfOuTYiwmJL1neVbfYAC4Aoe8orCMTANzSxC+stU6N736sHhJOSdQ96PCdK0zOSmRVMqFPvtmRci
	/EEqQYb76uOD3+JN+LKH5FyWoaLUEdq7q0loPrAaTRoGzzrxCf1N4dA0XMY748dinYAX9JqDUgLPa
	LXAQqgu93H6ONRNWKQfv9RQLRkVejjrpKQq08G5sbv5DvxBap9H3+uCJYWGLYNu3oLwfVZg47oL4l
	I3ksQig9492j6h6qEMf0HtUIn/zhBAjYdSA3z8ykj8UnCAg64eRkBQxBBgdQcyYIVU9XTQZV96c+R
	hygWq6jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0Z-00000002mjO-1dLx;
	Tue, 12 Nov 2024 09:16:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0V-00000002mh9-3xgp
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:16:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-0006P1-PK; Tue, 12 Nov 2024 10:16:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-000O0R-1m;
	Tue, 12 Nov 2024 10:16:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-00GNBa-1a;
	Tue, 12 Nov 2024 10:16:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2024 10:16:03 +0100
Message-Id: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANMcM2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQ0Mj3Wxj3fLEkuSMlPx0XdPk1FRLE6M0Y0PLRCWgjoKi1LTMCrBp0bG
 1tQCCXHMxXQAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731402970; l=1089;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=w2fV2bGEn2jcGgViajRKEEEmrGxlgYV2bRse2nxicjs=;
 b=6UVwqe/43qszLjQ72cg304N81NTKrHYmm/nuUOAPiioL+DH3aL/X6BpYwfZKaOxMq1pduFRFG
 fb515adRHKlAC7bhVSc9ueZ5s6B4AejyK7b1gmnsj+cgEgQLiIZl+sO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011620_051141_0FABFCD2 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] watchdog: Add TI rti_wdg support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for the rti_wdg found on TI K3 SoCs. The
timeout for this watchdog cannot be reconfigured once started which
doesn't fit well into our current watchdog_set_timeout() API which
both pings the watchdog and starts it. For this reason this series
introduces an optional watchdog_ping() function which can be used
for this type of watchdog.

Sascha

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      watchdog: cleanup timeout_cur parameter
      watchdog: add watchdog ping support
      watchdog: add rti_wdt support

 commands/wd.c              |  17 ++++-
 drivers/watchdog/Kconfig   |   7 ++
 drivers/watchdog/Makefile  |   1 +
 drivers/watchdog/rti_wdt.c | 183 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c |  43 ++++++++---
 include/watchdog.h         |   8 +-
 6 files changed, 245 insertions(+), 14 deletions(-)
---
base-commit: 11e7f69879ca71f63f4b122c0438c4085281fe17
change-id: 20241112-k3-watchdog-5cee942f319a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



