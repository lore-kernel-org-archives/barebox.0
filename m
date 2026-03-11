Delivery-date: Wed, 11 Mar 2026 20:10:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0Owh-00AYFU-0J
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 20:10:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0Owg-0006e0-Ao
	for lore@pengutronix.de; Wed, 11 Mar 2026 20:10:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=78Ohh6kA1hG6oJr6uerERz5zJg/dxMkqavnncoFRcy8=; b=M67OcaItAzH28SEYvMq039/Y04
	3Vt2OakkRGCQEbHjO0Mv+YMlffRTu908vI2P6WQvOgZInL9C19JIFnxGMpJ7I36LJiaxKSoCB/Xhk
	NEFDbgcM5TTg9nG7evbvIYEXtQ/GNapv4EtDxJRJA8WDqLh8iUlVwniTMPpuAVPkSH3SMX5AC70ED
	Wn+MDGvf2B7cCO43urG0zGs9u5DffQfccodsE6azTzAh9b+Z0K9ZA45gjdvkQi447RHMSZU+11947
	b7mRAvN6ongzQL/J7jTRs35af+Nh8TVY2X06t8rRph4q8GvRwkUmzoQMqmMmBMF7N6DnX5o/7/r/x
	kTNHu7jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0OvS-0000000CI0J-1C3j;
	Wed, 11 Mar 2026 19:08:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0OvM-0000000CHjt-2F6K
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 19:08:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w0Oux-0005uS-CI; Wed, 11 Mar 2026 20:08:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w0Ouv-004uAH-1s;
	Wed, 11 Mar 2026 20:08:26 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w0Ouw-0000000DV3O-3RQf;
	Wed, 11 Mar 2026 20:08:26 +0100
Date: Wed, 11 Mar 2026 20:08:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	David Picard <david.picard@clermont.in2p3.fr>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Message-ID: <abG9qn4yl5wLV7L4@pengutronix.de>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-1-d26af520ab03@pengutronix.de>
 <96ca3d06-c1ec-4329-af77-5b7eb89047bb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96ca3d06-c1ec-4329-af77-5b7eb89047bb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_120852_592670_B0B4AD04 
X-CRM114-Status: GOOD (  23.90  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: setupc_32: remove relocation code from
 setup_c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 11, 2026 at 03:41:04PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 3/4/26 8:53 AM, Sascha Hauer wrote:
> > All callers of setup_c() already call relocate_to_current_adr() or
> > relocate_to_adr() before setup_c(), so the relocation (memcpy) code
> > in setup_c is dead and also the sync_caches_for_execution() is unnecessary
> > Remove it and reduce setup_c to just clearing BSS.
> 
> David reports this breaks his enclustra-sa2 and I observe also a hang on
> Qemu Virt:
> 
> $ make multi_v7_defconfig
> $ pytest --interactive
> Using -bios device tree at 40000000
> <hang>
> 
> Please drop from next, it's likely also what's breaking CI.

r4 should be restored before returning. Let's try again with the fix
below.

Sascha

---------------------------8<------------------------------

>From 139e75d06150896add0555f2164dac0c7f90e644 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Mar 2026 20:02:58 +0100
Subject: [PATCH] fixup! ARM: setupc_32: remove relocation code from setup_c

---
 arch/arm/cpu/setupc_32.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index c2c3f97528..c3e53b220e 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -10,13 +10,13 @@
  * setup_c: clear bss
  */
 ENTRY(setup_c)
-       mov     r4, lr
+       push    {r4, lr}
        ldr     r0, =__bss_start
        mov     r1, #0
        ldr     r2, =__bss_stop
        sub     r2, r2, r0
        bl      __memset                /* clear bss */
-       ret     r4
+       pop     {r4, pc}
 ENDPROC(setup_c)
 
 /*
-- 
2.47.3
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


