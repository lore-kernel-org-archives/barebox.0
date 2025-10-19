Delivery-date: Sun, 19 Oct 2025 06:49:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vALM7-009QPT-01
	for lore@lore.pengutronix.de;
	Sun, 19 Oct 2025 06:49:19 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vALM1-0005Wm-8C
	for lore@pengutronix.de; Sun, 19 Oct 2025 06:49:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yK/sO3P1bpZOPkKbCP7YTFrpfRVtHty1Nl4bW61zCnQ=; b=WrKfDhICCH5/tmHRqxjaIUqRmZ
	B4dyED6UpjvSYObo51mIK9XBcf3vPefe3juh3DFEIuALgqBDwe/fMVy8hwHiVVa2jMzIv23Ki/NTW
	Fyy0JLFuqDh+8eBgzddBJWrJDEd2XrTe2H0sxg3deuHBhnRqir2zFBwz+jd1GL0nk2LVWp3P94uio
	c+0AjfBJpNY0crg2DfMFn21mQZpDpLJyG/wLn4pKFZdtKlDxejXxYfjKk3RmSTAKs5tsxberaiPb1
	D+sYktLkVcgxP9wWqVQ1KU0HT5TIcqzWdtggV1pw3hp+gNA8Eq+U19tQr4oTupM0dQHnd58z3HkxL
	8MfBDd8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vALH1-0000000AfUQ-3QI6;
	Sun, 19 Oct 2025 04:44:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vALGz-0000000AfUK-1vBk
	for barebox@lists.infradead.org;
	Sun, 19 Oct 2025 04:44:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7C11560261;
	Sun, 19 Oct 2025 04:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17FC9C4CEE7;
	Sun, 19 Oct 2025 04:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760849032;
	bh=+bJbYCR9GPRHHeTNC0PfO4uRvrKcu2uNS0vWAqu2+c4=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=SYG3SGeS+ABVMQm+hS2BNjVligGgLoIt+pn+St/1u6F7XEWrrGLMWrlW0kYwidXBF
	 pP8AAv437MrM88dYd0q1yhjx/R4gtfD8Tk3tdMyb649Z3Jv1HkapqZ0IA7IlJc2DYj
	 HCPHNf+9oH6KViyk7e9IKw+UlR7MCxj2yXgQxftKRQAUfrrbMPCj8Zl+YEPxNmDRs4
	 U4Drxe/hwsZeaLwEMSr8/vgNj8CPTqDA3LXkBryI8vDQ9l8+ANC7YV8ZvyUJoXQi7J
	 p+8nPfqjzq7hk7g19leq+A4jDNGAOfozLwrUZjf6JwaTHtllPC5eLlJHBI5HH/ljIf
	 uMFgsxiVsyydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E1EBCCD184;
	Sun, 19 Oct 2025 04:43:52 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sun, 19 Oct 2025 06:43:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251019-iomux-v1-1-e049726947ce@hotmail.com>
X-B4-Tracking: v=1; b=H4sIAIZs9GgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0ML3cz83NIKXYPkpJQk42QTg1RDMyWg2oKi1LTMCrA50bG1tQCeQOD
 0VwAAAA==
X-Change-ID: 20251018-iomux-0cbdb3c40e16
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760849031; l=1098;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=wSCw7H++Akrr2OTs+kN7LODotOxe6+O3NmjblvyF9hk=;
 b=+WJ/P9T/YjchV+hPvuQEpvDHhL7G07Bgxfb5oScGqJd2OBBgXE9GQQMPTkK7+UqBZgAtuW5Sf
 uQGoaA9ozTDCAyqdu9W9zYfSk2mUweJdDbhy0Uu2LJVNdGBgfRP3oHW
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-102.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RDNS_NONE,SPF_HELO_NONE,T_SPF_TEMPERROR,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX: Fix the iomux DSE defines for imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

The DSE field has a deceptive layout, DSE 2 is a higher value than DSE 4

See reference manual 8.2.2.1.3 or the description of any IOMUXC_SW_PAD_X
register in 8.2.4.144+

Fixes: 3c0d42752e9a ("arm: imx: add initial imx8mp support")
Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
 include/mach/imx/iomux-mx8mp.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mach/imx/iomux-mx8mp.h b/include/mach/imx/iomux-mx8mp.h
index 98e340d3dad1..da5cfe3048ca 100644
--- a/include/mach/imx/iomux-mx8mp.h
+++ b/include/mach/imx/iomux-mx8mp.h
@@ -1081,8 +1081,8 @@ enum {
 };
 
 #define MX8MP_PAD_CTL_DSE1	(0 << 1)
-#define MX8MP_PAD_CTL_DSE2	(1 << 1)
-#define MX8MP_PAD_CTL_DSE4	(2 << 1)
+#define MX8MP_PAD_CTL_DSE2	(2 << 1)
+#define MX8MP_PAD_CTL_DSE4	(1 << 1)
 #define MX8MP_PAD_CTL_DSE6	(3 << 1)
 #define MX8MP_PAD_CTL_FSEL	BIT(4)
 #define MX8MP_PAD_CTL_ODE	BIT(5)

---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251018-iomux-0cbdb3c40e16

Best regards,
-- 
Maud Spierings <maud_spierings@hotmail.com>




