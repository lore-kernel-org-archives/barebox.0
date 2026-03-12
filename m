Delivery-date: Thu, 12 Mar 2026 20:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0lbc-00AwYj-1B
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 20:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0lbc-0007Wl-N6
	for lore@pengutronix.de; Thu, 12 Mar 2026 20:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGbg8FYs8NTZywfiqhcf6ERCjucDQff7HYFJ91zt2Ag=; b=2s/QvbOkL0BRmVeaYA0ePzRl4Z
	VuZa6XxBiWOXxRdXvoTjYLTAu6TocYgnOMZNGGNcGLQm+TB3Qpj2Jkd6roXIVtTQH0jbFzufSYuq1
	jhjbAQKCPg+iGp7/SS5qJFt98FW+8YphbMDIqNsgQBoB1HlsLY2zPf+OAqYD31ru7Jk9FU9HJNxCE
	Bujgelfrqo0ISAyUoejVTAQMIkzwQR0iRW8m0cGqAe9TngIuDOLw5/SW+lxwQd04b4jOHGLz0ZEkJ
	cqv20iKqHabvWZIgLhVK6JEkElkFG/IBQCgpokvBxwxT3yqWLAkb3lq1eTVMucoxtE+2Bl+DTNZC7
	4SA8IgVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0lb3-0000000F4sU-1WPm;
	Thu, 12 Mar 2026 19:21:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0lb2-0000000F4s4-1033
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 19:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bGbg8FYs8NTZywfiqhcf6ERCjucDQff7HYFJ91zt2Ag=; b=QgnQx4T23f9sO/J+ZMCpHpmTPh
	hAbdyojQSSNoFIf9eVd8tHFG1kjcj9XMLYgi0jMj4rX45O9BoMFdq3OXL/l8EDqyvDhlvKW7UvJS9
	h1bT+iUV2HL8OFHnuNvzykhlPyDwh/5Zj0u1549gnuG+b/X7zuzASge2nDNJwK3076fb4GJGJVrl2
	7XavzJ7r6sC6Ro8qcJuLyjj/W/Ut80xc4oxxIzILwo1yubAr1ZMojhgQuS8m1bdrRKV83cK9R39OR
	qT0gAYp/rQ4ihr3gqmJ1b5sKMonu7dI3POC3+OoR+i739ngxNwQfFZTW5GBjviiD9QlUi9luA7kZG
	RbhxxCpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0lay-00000001rqT-1hs6
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 19:21:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0laq-0007EU-05; Thu, 12 Mar 2026 20:21:12 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0lao-0054Jf-1T;
	Thu, 12 Mar 2026 20:21:11 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0lap-00000002GTv-2wwT;
	Thu, 12 Mar 2026 20:21:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 20:20:43 +0100
Message-ID: <20260312192110.539601-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312192110.539601-1-a.fatoum@pengutronix.de>
References: <20260312192110.539601-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_192120_519939_0743FA22 
X-CRM114-Status: UNSURE (   7.32  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fixup! ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM: setup_c: ensure 4-byte alignment for bss_cleared

Out of abundance of caution, avoid the variable ending up being
misaligned.

I did not observe this happening.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/setupc_32.S | 1 +
 arch/arm/cpu/setupc_64.S | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index c5348353b129..fadfc28ae155 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -27,6 +27,7 @@ ENTRY(setup_c)
 ENDPROC(setup_c)
 
 .section .data.bss_cleared
+.balign 4
 bss_cleared:
 	.word 	0
 
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index d5a6c0c43a7b..a0767c5136e0 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -27,6 +27,7 @@ ENTRY(setup_c)
 ENDPROC(setup_c)
 
 .section .data.bss_cleared
+.balign 4
 bss_cleared:
 	.word 	0
 
-- 
2.47.3



