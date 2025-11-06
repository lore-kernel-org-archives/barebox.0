Delivery-date: Thu, 06 Nov 2025 15:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH173-00Fy3x-0u
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 15:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH172-0007I0-Oe
	for lore@pengutronix.de; Thu, 06 Nov 2025 15:37:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ajYq3OqFVBogjv8O2p814WB80USmLRkXvOYFPSxF3dQ=; b=cAeDQsrn1rHl5h72xXdCBqzvPL
	axl2nPwGaa2fIfRtASpMDGJslOyn1z94n9OMGu+y+q7f4jm0Ld++M94XHfOvVwVo7+9T3L2MIpzJj
	LM5oEw1ax6k7BL/f3cit2/tzm0N+LfisZUVQ3NMtoB68EVyWvCpa1hGFwU2PLI3v7zjtqAs1rc97C
	ZcjEyR0Vpqfxl9zo01gP//yP3zidv0yrL2xD+QNYIKezc1Qr6WW5wnOstEvG6bfjYm74Y0JBwQfJj
	6gWHlXpP5keKlF7pzTinyXdZq5aSYxAlo/EGdrUWKMXCZpEpSQ0rVVhf5dwjvUuL6GYpifkGuexs2
	SnKCgfOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH16U-0000000Fhv6-1d38;
	Thu, 06 Nov 2025 14:36:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH16R-0000000Fhuc-1HF6
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 14:36:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vH16P-0007A6-2A; Thu, 06 Nov 2025 15:36:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vH16O-007Nb6-2r;
	Thu, 06 Nov 2025 15:36:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vH16O-00000000wTa-3IHv;
	Thu, 06 Nov 2025 15:36:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Nov 2025 15:36:39 +0100
Message-ID: <20251106143640.224768-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_063643_344495_28DBE8DA 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] .clangd: remove -enable-trivial-auto-var-init-zero-... flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Debian 12 sill had clang-12, where specifying the option:
-enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
was needed to avoid a warning when the build was configured for GCC with
-ftrivial-auto-var-init=zero.

Since clang-16, this option has been removed and it now results in a warning
instead of avoiding one.

Given that Debian 13 has clang-19, let's just drop the flag to remove
the warning for developers with a recent clang version.

This reverts commit 2c151ad3fb19 ("kbuild: fix clangd warning with GCC
compile_commands.json").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .clangd | 1 -
 1 file changed, 1 deletion(-)

diff --git a/.clangd b/.clangd
index 027fb11d7a11..4057270b2a83 100644
--- a/.clangd
+++ b/.clangd
@@ -1,3 +1,2 @@
 CompileFlags:
   Remove: [ -mabi=lp64, -fno-allow-store-data-races]
-  Add: [ -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang ]
-- 
2.47.3



