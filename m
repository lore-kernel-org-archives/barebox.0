Delivery-date: Sun, 16 Aug 2026 20:02:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBq-003pl5-2e
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1A505201021
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3h052grj;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x2G7aNB9UBdx8tmxl+W7HbQgMtQ8zak+SK2zascMPTk=; b=3h052grjQa4/Fs5gTIIQdbYTEp
	nGGe8Ak9NuAGjTfJbGd1eHmJ7TwBp6VDLi933MvJhmHP+FHp8XYmUR6xz3l2mfVdegMge/7Cpq2b3
	PekqJ3DzBfWP5fcbDb4rM2KbdgVbjGk9Ss3cSNY09HMe3+SBFw2sptvb0trTsH0pZ6t6BkbE+Uqnb
	IIXPwTWy0MA+0LZ7UJw7KosROceyaRHMEw/EdaLWof4CBc9OjFU5o323lLfzi4TSHZQ6C0QQK1NbZ
	zwjQknmPEaoR0L0HgmuAPlk2UAe0FHz4+/qAhw0qoZZBNfJmKdIGYX/1TRbB5rCYSWfHYMn5Tcujz
	tqEWLvSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBS-00000004xXB-10Pv;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xNK-2xqi
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 44ED5201EBD;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001orr-0f;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1BjZ;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:44 +0200
Subject: [PATCH 24/27] ARM: pxa: move over to MULTIARCH
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-24-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=3362;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RtHwv5ykgla1pmg1Szsz0uZW2CtMmcqwYBeHK4jYRx8=;
 b=HE2iYn1YKEYWZyW89fkDxePF1PSgtB8Tik1IbbPh9wu6QiUwdJ+frTJ5bofeM0k0dOyZQukfT
 3ZwADNpqjXaDaXKOAPYlYGOOB99fMpL/7Fw5M2R/ACX/1b18NvH8tJI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110204_909178_69E0212E 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  PXA was one of the architectures left in the "ARM system type"
    choice, so a build could contain it or another architecture, never both.
   Nothing about the SoC support requires that anymore, but its initcalls did:
    the restart handler and the poweroff handler were registered unconditionally
    and go straight at PXA registers, which on a mu [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: m71xtdphpkb4ro6srzrw3q4za9t1u4qf
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 1A505201021

PXA was one of the architectures left in the "ARM system type" choice,
so a build could contain it or another architecture, never both.

Nothing about the SoC support requires that anymore, but its initcalls
did: the restart handler and the poweroff handler were registered
unconditionally and go straight at PXA registers, which on a multiarch
build would run on whatever else is in the image. Guard both with
of_machine_is_compatible() and move the architecture out of the choice.

For that to work the board has to identify as a PXA3xx. The SoC device
tree include says so, but a board that overrides the root compatible has
to keep it in its list.

While at it, drop the separate device_initcall() for
pxa_detect_reset_source(): pxa3xx_init() already calls it, so the reset
source was detected twice.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig           | 16 ++++++++--------
 arch/arm/mach-pxa/common.c |  4 ++++
 arch/arm/mach-pxa/pxa3xx.c |  6 ++++--
 3 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 106f3d559e..6a4825fe33 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -118,14 +118,6 @@ config ARCH_MXS
 	select COMMON_CLK
 	select HAS_DEBUG_LL
 
-config ARCH_PXA
-	bool "Intel/Marvell PXA based"
-	depends on 32BIT
-	select GPIOLIB
-	select HAS_DEBUG_LL
-	select OFTREE
-	select OFDEVICE
-
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
 	select HAS_DEBUG_LL
@@ -188,6 +180,14 @@ config ARCH_K3
 	select COMMON_CLK_OF_PROVIDER
 	select PM_GENERIC_DOMAINS
 
+config ARCH_PXA
+	bool "Intel/Marvell PXA based"
+	depends on 32BIT
+	select GPIOLIB
+	select HAS_DEBUG_LL
+	select OFTREE
+	select OFDEVICE
+
 config ARCH_SUNXI
 	bool "Allwinner (sunxi) SoCs"
 	depends on ARCH_MULTIARCH
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 1da1b58054..fea570c5fa 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -13,6 +13,7 @@
  */
 
 #include <common.h>
+#include <of.h>
 #include <init.h>
 #include <restart.h>
 #include <mach/pxa/pxa-regs.h>
@@ -42,6 +43,9 @@ static void __noreturn pxa_restart_soc(struct restart_handler *rst,
 
 static int restart_register_feature(void)
 {
+	if (!of_machine_is_compatible("marvell,pxa3xx"))
+		return 0;
+
 	restart_handler_register_fn("soc-wdt", pxa_restart_soc);
 
 	return 0;
diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
index ea84efc8b0..6edc55481e 100644
--- a/arch/arm/mach-pxa/pxa3xx.c
+++ b/arch/arm/mach-pxa/pxa3xx.c
@@ -13,6 +13,7 @@
  */
 
 #include <common.h>
+#include <of.h>
 #include <init.h>
 #include <poweroff.h>
 #include <reset_source.h>
@@ -47,8 +48,6 @@ void pxa_clear_reset_source(void)
 	ARSR = ARSR_GPR | ARSR_LPMR | ARSR_WDT | ARSR_HWR;
 }
 
-device_initcall(pxa_detect_reset_source);
-
 static void __noreturn pxa3xx_poweroff(struct poweroff_handler *handler,
 				       unsigned long flags)
 {
@@ -62,6 +61,9 @@ static void __noreturn pxa3xx_poweroff(struct poweroff_handler *handler,
 
 static int pxa3xx_init(void)
 {
+	if (!of_machine_is_compatible("marvell,pxa3xx"))
+		return 0;
+
 	poweroff_handler_register_fn(pxa3xx_poweroff);
 
 	pxa_detect_reset_source();

-- 
2.47.3



