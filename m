Delivery-date: Fri, 08 May 2026 16:44:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMRh-002OWc-1U
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 16:44:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMRc-0002ht-D7
	for lore@pengutronix.de; Fri, 08 May 2026 16:44:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S++s4A1Pew6mpvl4TXWay5elJxv/s3rB//a5/U+IUQM=; b=qM/4zbZJjhfR9D
	1Xh7m47+FFL6wIXYovO3e30BYf36r+w0iW/Bnw2KE+irbL7r3w8gFD5IHCtZB7VpHmMhf4aWmAinZ
	I+FggjDoRseSJk26KmHyph79ShwA8dRLIDwoXMExXVt8xXJGqEQ55EgTV8aV1Q33ZF6m8vuugTaUO
	kH2XmPHyPnQqWduKEXn1h6EMbbItmcE/VPyyUrZhfNoW8VPlWhqb76faS0YZwvo8WU+T22/1wJmmV
	wQE9WFk12pfao5KHvRbRwK8P53uJBRxHHER6V7acJuHjtXEfWEFgmvxHKTJZEbhtKDteo7hd6ua+f
	TKorp0/CP7iydTfkBQbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMQ1-00000006hIR-2A0E;
	Fri, 08 May 2026 14:43:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMPy-00000006hC4-1igQ
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 14:43:08 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wLMPu-0001TN-Ul; Fri, 08 May 2026 16:43:02 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 08 May 2026 16:43:01 +0200
Message-Id: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHX2/WkC/42NQQ6CMBBFr2Jm7RjaFARX3sOwqHSA2bRkWhsM4
 e4WTuDuv7d4f4NIwhThcdlAKHPk4Auo6wWG2fqJkF1h0JWulVYN5mOhUlhhCgsPKBzSO1hxSMa
 ZuzO6tWMNJbAIjbye8VdfeOaYgnzPr6wO+1c2H9LYsevatqNGV8+F/PRJEjyvN0fQ7/v+Az5ef
 3bJAAAA
X-Change-ID: 20251216-v2025-11-0-topic-riotboard-e4d47d428af5
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_074306_457128_E6773476 
X-CRM114-Status: UNSURE (   5.15  )
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
Subject: [PATCH 0/2] ARM: i.MX: riotboard: Add OP-TEE integration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configure the riotboard to use the default OP-TEE implementation
provided by the generic i.MX6 OP-TEE firmware target.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Fabian Pflug (2):
      ARM: i.MX: riotboard: add tzasc.h to flashheader
      ARM: i.MX: riotboard: rewrite lowlevel.c

 .../flash-header-embest-riotboard.imxcfg           |  1 +
 arch/arm/boards/embest-riotboard/lowlevel.c        | 37 ++++++++++++++--------
 2 files changed, 24 insertions(+), 14 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20251216-v2025-11-0-topic-riotboard-e4d47d428af5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



