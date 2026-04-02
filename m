Delivery-date: Thu, 02 Apr 2026 08:57:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BzD-007l8m-06
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BzC-000320-GK
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NrbRdbMU+/493edbdKC9dGe3TPs6JD9EYHQVCuFbTys=; b=Y1oC8FT3HVmMBq
	G/OlvB+KtYyzTvEf0po7FhsPOGeUCzFs1RWl5mrjcYQS4kMzzmOlUTkjB1h+CG2Rv5gnXsQTMCqm8
	0swSFtOXLFPj0XkcCHn/i10vGISUDT372kjZG8MKjeqASfOSkrOj8WN9YotsASbj6IWay6v+fgY7j
	sVpqoA3yhIrw4KbW6vUV3tqfBYisDrhHk7MWKG0bRzbl6JaFXszpPybHERtfT+iYAnXY3bJTZzBgb
	HMOZAn1U8+RrhFPYMWLJhjK/o2mJdi7NMoSs0Uz1t8r+i/yEyxqZtrPh6coCDkO6RAHfUXRGlj1+s
	ZtAM5KUxn5hTeIlRH+JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Byl-0000000GxH8-0ly2;
	Thu, 02 Apr 2026 06:56:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Byi-0000000GxFe-0hlX
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:56:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-0002oF-HW; Thu, 02 Apr 2026 08:56:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-003KeB-0q;
	Thu, 02 Apr 2026 08:56:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-00000003Nta-0qA3;
	Thu, 02 Apr 2026 08:56:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:56:28 +0200
Message-Id: <20260402-net-dhcp-buffer-overflows-v1-0-cd60b651a629@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABwTzmkC/x3MQQqDMBBG4avIrDswRhHbq0gXNv6pA5LIRG1Bv
 HtDl9/ivZMyTJHpUZ1kODRrigX1rSI/j/EN1qmYnLhOWnEcsfE0+5VfewgwTgcsLOmT+d6Ogl6
 arvE1lX41BP3+38Pzun6Gd247awAAAA==
X-Change-ID: 20260402-net-dhcp-buffer-overflows-94a0e80363c1
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775112990; l=662;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FvmAclGPl/x2G33ji87h8uzRusqa6SCreEQ50/7yBk0=;
 b=SDPJ9b0ebfvN4cmbSfMhHCL12OxY6IOUUS9cI6D20L1FFYIseCGFxH7cXA/st7TivI31OOlyB
 gY3dB4mUmesBhoVvsZ5bvP9eYFPiAf1ak1mIxASxvgAzUNddG16oVIM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_235632_241066_0B1AAF5D 
X-CRM114-Status: UNSURE (   5.72  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
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
Subject: [PATCH 0/3] net: dhcp: fix buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix buffer overflows on malicious incoming network packets or user data
in the dhcp code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      net: dhcp: add bounds checking to DHCP option parsing
      net: dhcp: use strnlen/xstrndup for bp_file to prevent read past field
      net: dhcp: cap DHCP option string length to 255 bytes

 net/dhcp.c | 36 +++++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-net-dhcp-buffer-overflows-94a0e80363c1

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



