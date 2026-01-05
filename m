Delivery-date: Mon, 05 Jan 2026 11:45:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5k-001UUg-1T
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 11:45:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5j-0000cU-T3
	for lore@pengutronix.de; Mon, 05 Jan 2026 11:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNz+HAxMcQgWLc/GCKyC1uZgHjr579bGWuShrb0IvfA=; b=t//fPNw/4DhO0ZnlIzc8fem7hZ
	hVsL3TpH7/QM42KNBrZa5p3PPNjdnHstDnYQb8ULa8pHrUpZBit80QUzfJ43zDuTzl+5O83SFJIfZ
	tsf8JF4Enuxq7prtO6LyltaYTv2q/1U2tDr4lWUUHI9B3fY08aKM39qE1GXa4QZB83b21Eq9Jelsv
	ktVTfwmIsnSv37kGUPU4gmLR8DEqs3kHS3dPaNGpGispDOZxjPGqoxbp27MoBQJIOjpi2/vQyrd4R
	qYnLJeNo86UMyyYQob5KbMO6I360m3J2MvxBtXG5BnQ6kFVYKQ/O1TfuivB7AKQ4JoKl9JROsx0R8
	dGbcuh9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5F-0000000B8Lv-2Jcl;
	Mon, 05 Jan 2026 10:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5C-0000000B8Kk-33Cu
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 10:45:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0000O0-Qz; Mon, 05 Jan 2026 11:45:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0099TT-1y;
	Mon, 05 Jan 2026 11:45:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-00000007IHq-2Gcc;
	Mon, 05 Jan 2026 11:45:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 11:44:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-riotboard-v1-1-789b844d7e36@pengutronix.de>
References: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
In-Reply-To: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767609903; l=759;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JO+abhzGUgCqbb2xdfeDYFpBMd3nh0EHAXja0BnbDNA=;
 b=qEAlP4XUQjQ0O/RN0o7x+8N7+coe/944an1yNTTt1HXjmbszwurqswz52XdOTUY3w4aL01Bgh
 qek9q1CocMHBdm/rj1MMv0jFF5XCNlHZQwJAiWZkRpDF+5z/Lo71zmR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_024506_777839_B4DF7551 
X-CRM114-Status: UNSURE (   8.54  )
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
Subject: [PATCH 1/4] ARM: i.MX6: Riotboard: ungate peripheral clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without it the DEBUG_LL console doesn't work when starting from USB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/lowlevel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 9ea92f50910d4ed3fd5a085b0e2f92b3bbf147f9..3aae39f75f70601a0da7b061a5bd2b922a3e1cea 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -22,6 +22,7 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x4, 0x020e016c);
+		imx6_ungate_all_peripherals();
 		imx6_uart_setup_ll();
 		putc_ll('a');
 	}

-- 
2.47.3



