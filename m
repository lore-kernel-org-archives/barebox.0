Delivery-date: Mon, 07 Apr 2025 15:07:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mC3-009Yb3-2h
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:07:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mC3-0001U1-A7
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fHogoMdfdSB3tGjnAgLCu7UGwd2kg6iUQa66ppIwrhg=; b=40ry6+Zjhk2h7+beGbVHuKmyMT
	um6rNPdOUZ86YzUmaQWGJxwbmUNm/8tpgRpxQVy9xYuB/vIjoqvFiHIukLzOmYgo+ZaVTsAXL8vMF
	pZ/8ZGpAzh6DiZIkKyG1by6NyfhC7TTFWNNsvQD3uV0lGL+7J+EyyB9vdxyMH6czyd9DdQKa+AvVM
	jxh0Nsd5ebnS9kbyoiXnv9A2wOHurLvsCQpli3XLloT9/d4nlTGT9HFW4D6J6xh2TNlF7/oZ15zJG
	rgi5bIqhGz4j2VufQOo9XAcBgKJ9AdBG460wXZusCdYekwGR1DZav0CE+gw35ZgrsO/HafTko0t+o
	j3/NJfiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mBc-00000000PrY-0vBh;
	Mon, 07 Apr 2025 13:06:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mB4-00000000Plx-1Isv
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:06:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mB3-0001Gx-4s; Mon, 07 Apr 2025 15:06:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mB2-003lUS-35;
	Mon, 07 Apr 2025 15:06:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mB2-00C1hP-2k;
	Mon, 07 Apr 2025 15:06:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Apr 2025 15:06:10 +0200
Message-Id: <20250407130610.2865974-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060614_347954_8CC0CF89 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: [PATCH] commands: boot: document bootchooser option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The boot command takes "bootchooser" as boot source, but this has never
been documented in the help text. Add documentation for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/commands/boot.c b/commands/boot.c
index 8207083801..90c59436d0 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -186,6 +186,9 @@ BAREBOX_CMD_HELP_TEXT("- a partition name under /dev/")
 BAREBOX_CMD_HELP_TEXT("- a full path to a directory which")
 BAREBOX_CMD_HELP_TEXT("   - contains boot scripts, or")
 BAREBOX_CMD_HELP_TEXT("   - contains a loader/entries/ directory containing bootspec entries")
+#ifdef CONFIG_BOOTCHOOSER
+BAREBOX_CMD_HELP_TEXT("- \"bootchooser\": boot with barebox bootchooser")
+#endif
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Multiple bootsources may be given which are probed in order until")
 BAREBOX_CMD_HELP_TEXT("one succeeds.")
-- 
2.39.5



