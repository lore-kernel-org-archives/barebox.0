Delivery-date: Mon, 11 May 2026 15:34:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQm9-000ZII-0g
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 15:34:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQm2-0002Uo-NJ
	for lore@pengutronix.de; Mon, 11 May 2026 15:34:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DcrIsXOhKnMvMblcAreBNRKf0VbydPHZxXi2TYq4iuE=; b=HmTiWNCFygK87J
	gfx7xUwiwqbocZqAkHlvjbMVe8V8ONxmt6FYQdfkFw3WiH+64Vu5OaKxsvo53GR3K9S4oQ4Qz+172
	2NY1HH1sE2vPlf5b53yws5jqU6b1QyQIQE6A96KWTfvnbJ3UT+xtEv/RqflfTTMGaSWBYkV9xnaX/
	gt7NoaXNNnsWvdiw2jEh5XNBkvf8ceoTld/eGfhtAo8tGHL0/CcUAc8xqkueb9H7Es2AQDLXkKXcL
	3gZ4rc+gy/wjrjvMA8UTW3f6eory4Zq72KoxQBcoUPbgG6nUphygtYQktBrJLNBaPpBEgfinf1b7e
	c0xNCO2jngNNBPQQYsMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQkm-0000000DkgV-07eG;
	Mon, 11 May 2026 13:33:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQkh-0000000DkeC-28eC
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 13:32:58 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wMQke-00023e-FJ; Mon, 11 May 2026 15:32:52 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 11 May 2026 15:32:47 +0200
Message-Id: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH/aAWoC/42NQQ7CIBREr2JYiwFKkbryHqYLLL/t30ADSGqa3
 l3o0o3u5k0ybzYSISBEcjttJEDGiN4VEOcTGWbjJqBoCxPBRMsFVzTXRDmnjCa/4EAD+vT0Jlg
 K0sqrlUKbsSVFsAQYcT3kj77wjDH58D6+Mq/tX9pcS2nGrtO6AyXYfQE3vVLwDteLhXpV1oq1T
 P/2CFC8kUNjQX17+n3fPzUqxt8RAQAA
X-Change-ID: 20251216-v2025-11-0-topic-riotboard-e4d47d428af5
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_063255_603405_B1492807 
X-CRM114-Status: UNSURE (   6.54  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] ARM: i.MX: riotboard: Add OP-TEE integration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configure the riotboard to use the default OP-TEE implementation
provided by the generic i.MX6 OP-TEE firmware target.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v2:
- renamed uart_setup to continue_imx6s_riotboard
- move imx6q_barebox_entry into continue_imx62_riotboard
- Add reviewed by for first patch
- Link to v1: https://lore.barebox.org/barebox/20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de

---
Fabian Pflug (2):
      ARM: i.MX: riotboard: add tzasc.h to flashheader
      ARM: i.MX: riotboard: switch to imx6q_barebox_entry

 .../flash-header-embest-riotboard.imxcfg           |  1 +
 arch/arm/boards/embest-riotboard/lowlevel.c        | 35 ++++++++++++++--------
 2 files changed, 23 insertions(+), 13 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20251216-v2025-11-0-topic-riotboard-e4d47d428af5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



