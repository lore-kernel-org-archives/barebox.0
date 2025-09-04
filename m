Delivery-date: Thu, 04 Sep 2025 08:51:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3on-007wLN-1P
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 08:51:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3om-0003qa-As
	for lore@pengutronix.de; Thu, 04 Sep 2025 08:51:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9/QDcU0Gdw/00xko+fHMUvejsvRswnp+Ad74Rshp+1k=; b=PAqq/k/Ju1NIX63Y6rtpEJiS/L
	gYCQ1cwLCzDwxSE66rPzLan6e30SzijbTxvTv2BTxEKym6jZcfxUFY0+VhTBLq37PyJ5PVeAmSl8u
	F9t2BZ0upvBAVnT1UC3eifcQjvAUzw8PAFp3cE0PbL6G/m8v81pwAb0oaIcTBeyUOrNrKLRCKjk9h
	hkW8ieVXks30/PANXbGb9tr1mlND76KmJrtkRAdAza/kvne22ARJ6sKNn4dApgeDyPNXGWqvt9QFn
	g5V+0JnypZIjT2A9TK7XPldk+pdM3BnOtLqXMj7cdMq93s1oEXMW+4bMBkbaaWHIMbHPBlFlQwykk
	293y3qBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3oK-00000009eOG-2cFs;
	Thu, 04 Sep 2025 06:51:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3mo-00000009e5z-23a1
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 06:49:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uu3ml-0003JU-CB; Thu, 04 Sep 2025 08:49:31 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  4 Sep 2025 08:49:30 +0200
Message-Id: <20250904064930.2867799-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_234934_529020_90736291 
X-CRM114-Status: UNSURE (   8.22  )
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
Subject: [PATCH] test: arm: multi_v7_defconfig.yaml: make virt@ the default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The vexpress-a9 board is less functional in barebox than the virt board,
e.g., only the latter has a restart handler registered.

Switch over the default, so a simple pytest uses the virt labgrid
environment instead by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/arm/multi_v7_defconfig.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/arm/multi_v7_defconfig.yaml b/test/arm/multi_v7_defconfig.yaml
index ac18c8272c45..4be28baf564c 120000
--- a/test/arm/multi_v7_defconfig.yaml
+++ b/test/arm/multi_v7_defconfig.yaml
@@ -1 +1 @@
-a9@multi_v7_defconfig.yaml
\ No newline at end of file
+virt@multi_v7_defconfig.yaml
\ No newline at end of file
-- 
2.39.5



