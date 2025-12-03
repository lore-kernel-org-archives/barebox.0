Delivery-date: Wed, 03 Dec 2025 16:19:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodn-007YPU-30
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:19:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodn-0003SB-Cn
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:19:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aYteswCYnBdTZFRIFEiLdLyLfgCMYZ6ArC000mZ/x2E=; b=FJmQjE0o51PtJG1JuVSyn89HA+
	ousB9LR7weV5kqihxMWiW9ZhIF3fiYBWQ8O2cHszaFLKj/vmOwzMkXs5J63RrTz5zERgH69kTWPYL
	I9XSZOxZ4qauy+Oo25AVEHqTkknH+0tfw03yf2gHkQTCBh9w9tBTEVK1ztKdGUpMkxhF7Ae6Y24Ow
	+C/qygQcAHxVHCMbUrSorplzfGE7hcv6ZJ4UK+sX4Yjf+Roif+HzFtQrwI9XLTebmydin878q1ThB
	OaSOkwpJEheOu+gdL3O5/R0PoIh/QG/2h6cgRYw0yHQrCHk7AR658RrhlOgM6UnFvzqEt0yyFEkJt
	h76lD8Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodM-00000006gjD-0bZU;
	Wed, 03 Dec 2025 15:19:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodI-00000006ghN-3sOs
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:19:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodH-0003AG-0N; Wed, 03 Dec 2025 16:19:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-003nYL-2Q;
	Wed, 03 Dec 2025 16:19:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-00000009MJM-2ViX;
	Wed, 03 Dec 2025 16:19:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 03 Dec 2025 16:19:04 +0100
Message-Id: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOhUMGkC/x2MQQqAMAwEv1JyNtBWLOpXxEPVaHNRSYsI4t8NH
 oednQcyCVOG3jwgdHHmY1dwlYE5xX0j5EUZvPWN87ZGWhnPKIWLmii0CuWE0bVLqG0X3DSDfk8
 d+P67w/i+H21n0TBnAAAA
X-Change-ID: 20251203-efi-partition-refresh-a18d630961bc
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764775146; l=1237;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5Ht2gJyRFZl/uS1z9oCNrkgGfjZHv6TYkosLRypAXmQ=;
 b=fdX2wXocM5LIfQseuNwsm61u2B90ATmWh5crL6RpfwEDPSrWwVapUnyYvvqfAlNyvDfqNcDlW
 UVlJnVDWtMpBFOVB9dZ0vHK6ph/JkgwqlyYbo/Qmfw6GMVM/4JSBWTM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_071908_997646_3CC54F26 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] partitions: GPT: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a continuation of the patch previously sent separately:

https://lore.kernel.org/all/20251128111929.2463263-1-s.hauer@pengutronix.de/

Ahmad's comment to this was that we should write the inactive GPT first
to make sure there's always a valid GPT on the device. This series
implements just that. I stumbled upon a bug when we restore the primary
GPT from the alternate GPT, this is fixed in this series.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      partitions: gpt: pass epd context pointer to find_valid_gpt()
      partitions: gpt: only write actual ptes size to device
      partitions: gpt: factor out a function to write primary/alternate GPT
      partitions: gpt: write inactive GPT first
      partitions: gpt: fix GPT restauration from alternate GPT
      partitions: gpt: refresh partition tables when necessary

 common/partitions/Kconfig |  14 +++
 common/partitions/efi.c   | 293 +++++++++++++++++++++++++++++++++++-----------
 2 files changed, 236 insertions(+), 71 deletions(-)
---
base-commit: 500df27eb054f86ce232c5bb30c3a7ea8f771e61
change-id: 20251203-efi-partition-refresh-a18d630961bc

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



