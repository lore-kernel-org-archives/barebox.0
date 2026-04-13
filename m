Delivery-date: Mon, 13 Apr 2026 12:22:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEQh-00BgV1-2Z
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:22:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEQh-00032q-5K
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:22:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/iv+1/KOB5aJiVeMFco1eg2UNv14oPjrMGRgqi12EI=; b=I5a1zHZXBsO3Uq/ziRuPRGXCCy
	nboJyTY2oAQI8jTypMXrXIbPWzWlzfmKUuZ8TwonIFLpmGirwgUvG1WbYlJHL9167Ools+nIuKwA1
	FY38yG6/yMLnh2Hi0mo2rzSDHxaRluSnnvI4PSY5ERp2ocZ3a4uxZ0s8i4euC2aDaq5DpQ2Q2DJqS
	O7UzfNVEvhAkzwjuvPmDY4/yMvYpDmRTC/ZrF0Y3ZG1GxccSC/XCT2nZahc4hzrRy5e9sV5TyeSK/
	l5maP1aAAy5EUWqYLydNR3L3zhvQPYjRPHLrPDV6wUaZBKjMu1JQfD6q21z5+Mpgk0EAZua4ClnWL
	2kmshtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEQJ-0000000FTy7-3jqY;
	Mon, 13 Apr 2026 10:21:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEQH-0000000FTxt-3j7R
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:21:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7/iv+1/KOB5aJiVeMFco1eg2UNv14oPjrMGRgqi12EI=; b=SQT4Fvhp9T88jyWYawdV2ZPx7l
	LNPihDRnkVIG5XNk+QsjocNGUyu3zHJKirIPe4bGS8wlMfy1yxEHZbv3LXnItckpZOBoayn116Lzu
	YL39Cuym7iQ4yZdpTcDlekmYgJMHU0tBzwgbZerrnGY05LmtvEgCJqx5xbICFvfGv5njqiyfiqOnR
	x5UE0RpSLjpx4JOR9DQmqZ8AnvvYvEqO8OMZ0A03CqgmBouY2QmWkD9HEXRMHK62R15GwJPbYyRYa
	KMgixQplcZUb2t4uZutMffXp/NId0wHgReRCqJ+yHOWoQHXhfeFZzHJMN6/XTL6wjlBGolesSjzgh
	ZSywoiow==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEPz-0000000Gaeb-47C7
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:21:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEP5-0002nl-Lg; Mon, 13 Apr 2026 12:20:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:20:21 +0200
Message-ID: <20260413102026.1469330-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413102026.1469330-1-a.fatoum@barebox.org>
References: <20260413102026.1469330-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_112134_360965_1DB1EC3E 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] sandbox: add a match.of_compatible directory to exercise the feature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The match.of_compatible feature is mostly meant to be used with
environments originating outside barebox.

Nevertheless, switch over sandbox to use it so it gets some coverage.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/sandbox/board/defaultenv-sandbox/data/last-match           | 1 +
 .../match.of_compatible/barebox,not-sandbox/data/last-match     | 1 +
 .../match.of_compatible/barebox,not-sandbox/nv/autoboot         | 1 +
 .../match.of_compatible/barebox,sandbox/data/last-match         | 1 +
 .../match.of_compatible/barebox,sandbox/nv/autoboot             | 1 +
 arch/sandbox/board/defaultenv-sandbox/nv/autoboot               | 2 +-
 6 files changed, 6 insertions(+), 1 deletion(-)
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/data/last-match
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match
 create mode 100644 arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot

diff --git a/arch/sandbox/board/defaultenv-sandbox/data/last-match b/arch/sandbox/board/defaultenv-sandbox/data/last-match
new file mode 100644
index 000000000000..df967b96a579
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/data/last-match
@@ -0,0 +1 @@
+base
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match
new file mode 100644
index 000000000000..b175a503912d
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/data/last-match
@@ -0,0 +1 @@
+barebox,not-sandbox
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot
new file mode 100644
index 000000000000..36ef4c374d25
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,not-sandbox/nv/autoboot
@@ -0,0 +1 @@
+boot
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match
new file mode 100644
index 000000000000..80fdf1459eee
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/data/last-match
@@ -0,0 +1 @@
+barebox,sandbox
diff --git a/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot
new file mode 100644
index 000000000000..f7d13fd04662
--- /dev/null
+++ b/arch/sandbox/board/defaultenv-sandbox/match.of_compatible/barebox,sandbox/nv/autoboot
@@ -0,0 +1 @@
+abort
diff --git a/arch/sandbox/board/defaultenv-sandbox/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
index f7d13fd04662..36ef4c374d25 100644
--- a/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
+++ b/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
@@ -1 +1 @@
-abort
+boot
-- 
2.47.3



