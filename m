Delivery-date: Mon, 08 Dec 2025 13:01:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvu-009CjN-2c
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:01:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSZvu-0002jl-9V
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C4wjoMIVWfp/lPU654lKkq9vLuNh6a8E2UFMLu/SVcA=; b=Q9IH7LMssd1MTc3pYU3psGBcCJ
	TYfw0cLu6Nficoeg8S3L7bMbjp5RKeXbGjp6S12LNe5hKcpIi+CMBjjlU561wqwfMU6UE18iuGyvF
	sA1OnQfpxCa1evZgzZUVIdLlxKhDQZg28Orvipb/AMrtCJ57XltpXD6Rafxn4KWHsqGv9MwJH0ZBI
	AkUY7tlCgU4b3z/VHl1TJY3a2qzcoGX51c6LO0z0PoVYLLxwJJUSmyRvUqWFa0Ba/+jlITHTaJjcn
	pnqVsPiXUIpBUq7jwHyVoZAsebj4Hr9Z8suVTGc9R2Dy6vql0vKwyUXngjBbALezQmyGHHaVRzDF7
	wLHD0npw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvP-0000000D2Kg-3lJ7;
	Mon, 08 Dec 2025 12:01:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSZvN-0000000D2J8-30Rd
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:01:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-0002VT-9x; Mon, 08 Dec 2025 13:00:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvE-004bic-0H;
	Mon, 08 Dec 2025 13:00:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSZvD-000000027w4-4AMQ;
	Mon, 08 Dec 2025 13:00:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Dec 2025 13:00:50 +0100
Message-Id: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPK9NmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIwML3byy3NRc3dTUgqL8XF1LkyTLJAPTJMNkAxMloJaCotS0zAqwcdG
 xtbUASYKMdF4AAAA=
X-Change-ID: 20251208-nvmem-eeprom-94b9b05b1c04
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765195255; l=1182;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=R2CNuRvE9SbI68iglzjsm4tckw60845cIRQ+SkxQDR0=;
 b=P/rF5xb2uz/e8Hq8uEfaKf3u5qdGFhrhx49pqk7WF1uoUy72P3rbc8HSCQg7LY+v5GEItuImW
 5ijz7mkEo5hB+64wlvZjzGeCoJvtOuahhUlh24mLOCPEXtM+0B05/Fv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_040105_765766_5C746D41 
X-CRM114-Status: UNSURE (   9.29  )
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
Subject: [PATCH 0/4] driver name fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Starting point of this series was that I had multiple EEPROMs on a board
from which one had an alias "eeprom0" and the other ones didn't have
aliases. the EEPROMs without aliases failed to register because they
tried to register themselves as "eeprom0" as well.

While EEPROMs triggered this series it fixes a longstanding problem in
barebox: It was possible to register two devices with the same name when
one device was registered as "foo0", DEVICE_ID_SINGLE and another one
as "foo", id = 0.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      driver: implement get_free_deviceid_from()
      nvmem: fix device name setting
      driver: fix device name clashes
      eeprom: at24: reserve EEPROM names which have an alias

 drivers/base/driver.c | 25 ++++++++++++++-----------
 drivers/eeprom/at24.c | 12 ++++++++----
 drivers/nvmem/core.c  | 22 +++++++++++++++-------
 include/driver.h      |  7 ++++++-
 4 files changed, 43 insertions(+), 23 deletions(-)
---
base-commit: 500df27eb054f86ce232c5bb30c3a7ea8f771e61
change-id: 20251208-nvmem-eeprom-94b9b05b1c04

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



