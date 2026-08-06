Delivery-date: Thu, 06 Aug 2026 13:30:10 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrwIb-000ALx-1w
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 13:30:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 54CB52000DC
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 13:30:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zTK7k9h8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wivPoQ/M38WrrNOkTF2nu0s0+qZ5Jt5zzbPDpCDA3rI=; b=zTK7k9h8U56V/pdV3wrA5Qtegk
	fzqwbKAdMB2J3fv/JQ/sggN4CgQ18obpumiImyC/Ha7R3W9/qjS/nnp9dg6bH+rEACXs0USUbwvlT
	NKNoR8+xj3dqUKHiIZNFkBgCSo+AA81D+kjFS5LVTJwYAh5J0OrUh5qubDdYdhx3OpZrrObKypcoo
	naVdrVUDlOTlwTMZ/dSl5Cn9nprjXhHp2JYiycLRdmmYG98tz3P8G2v+7jXz+GbKMnfZup1Rw34TY
	bhBhxVll/BQeK2LcmvJkYDmhSZV8e/cNaPQtMiViAQXG98Tqmwk+EbkZG2lcMUdHEfAzUwqQB2xp9
	miN4HYdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwHM-00000005ePw-25fa;
	Thu, 06 Aug 2026 11:28:52 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwHJ-00000005eOi-187I
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 11:28:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D0F57200F84;
	Thu, 06 Aug 2026 13:28:46 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrwHG-00056l-2V;
	Thu, 06 Aug 2026 13:28:46 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrwHG-0000000G2ZJ-2pqE;
	Thu, 06 Aug 2026 13:28:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 2/3] kvx: select DEAD_CODE_DATA_ELIMINATION
Date: Thu,  6 Aug 2026 13:28:02 +0200
Message-ID: <20260806112845.3822400-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
References: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_042849_455756_9D58ABDF 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We have code that depends on unreferenced functions being
   dropped, because otherwise they would lead to linker errors as they themself
    reference functions that aren't included in the build. To make such code
   not break the kvx build, enable linker garbage collection for it. 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 54CB52000DC
X-Stat-Signature: fqi65jbsea9wxc8sznmsw6hdyhyki4g5
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

We have code that depends on unreferenced functions being dropped,
because otherwise they would lead to linker errors as they themself
reference functions that aren't included in the build.

To make such code not break the kvx build, enable linker garbage
collection for it.

To make this work two changes are needed in addition:

- exact .text, .data and .bss matches changed to prefix matches
  as we want to merge the new subsections

- kvx_start is identified as the entry point, so linker garbage
  collection knows from where to check reachability

A search for `section' in arch/kvx and drivers/soc/kvx shows that the
only custom sections are .exception and .startup, so we should have all
our bases covered.

It has been verified that barebox running in QEMU still reaches its shell
with this change applied.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/kvx/Kconfig           | 1 +
 arch/kvx/cpu/barebox.lds.S | 7 ++++---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index bbbec6471f06..14109c3cfcb7 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -22,6 +22,7 @@ config KVX
 	select OFDEVICE
 	select PARTITION
 	select RESET_SOURCE
+	select LD_DEAD_CODE_DATA_ELIMINATION
 	default y
 
 config 64BIT
diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
index b05c1f36e595..99a73ea0f7cc 100644
--- a/arch/kvx/cpu/barebox.lds.S
+++ b/arch/kvx/cpu/barebox.lds.S
@@ -8,6 +8,7 @@
 #include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT("elf64-kvx")
+ENTRY(kvx_start)
 
 SECTIONS
 {
@@ -15,7 +16,7 @@ SECTIONS
 	.text ALIGN(4) : {
 		*(.startup);
 		_stext = .;
-		*(.text)
+		*(.text*)
 	}
 
 	/* Exception vector must be aligned on a huge frontier */
@@ -59,7 +60,7 @@ SECTIONS
 	.data ALIGN(4): {
 		sdata = .;
 		_sdata = .;
-		*(.data)
+		*(.data*)
 		. = ALIGN(8);
 		__stack_end = .;
 		. += CONFIG_STACK_SIZE;
@@ -79,7 +80,7 @@ SECTIONS
 	.bss ALIGN(16):
 	{
 		__bss_start = .;
-		*(.bss)
+		*(.bss*)
 		. = ALIGN(16);
 		__bss_stop = .;
 	}
-- 
2.47.3



