Delivery-date: Thu, 01 Oct 2026 09:43:24 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCBRs-008Md6-0m
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:43:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 97176200758
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:43:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="HP3SnQ/I";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="SGz/Qtac";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=OpTdPVMs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790840603; a=rsa-sha256;
	cv=fail;
	b=KXkYQIrftqTyeA1i6C4vaaPM2TXmdpO5VqIdGORlZaoK1xABJvMtb05ujM9/pvlui4hgAq
	v/gXWdwWUKjZF3doEFnbekVooRpdDgU2eKvdEHHkeEgz2fCqgmHdpstjAF3hOzsADLR47A
	G8GtxgPqg7uAQAgrXUvHl93vyYfc5dauO76nBPuIB73yqKa/XbZ0Ql3vDkMOxhxZydvmog
	pQPqhZUSiXyP0MxFQ5lqiVrL9x0iZtkWCJFiuFOR44/1J39cefJECQ7yvGmtI0yeGI7ATC
	30+5d+RXdi1iq80Z1uCKxJq0HB9WHjok4bcCMPv1AKkPdCtK1zT2/AhlgEJe9g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="HP3SnQ/I";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="SGz/Qtac";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=OpTdPVMs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840603;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7UOrDAymFdSXqqdC5vw9eAMuaS1KJPWYntyvEwkrfA4=;
	b=A3Gx5X5E4sal/3M6RcyH1d2WeF8sYPrfGJcsmJ2gXNtZ6Bzv5aOqeCQcjToD+1bDDPgwM6
	0xWc2Do18oTLlpcdmhawux2O8oErwy926blAK7RVlYpEeyYGxAxvRF9Bt/cB8vjZ1fUlNh
	BnWudX1NaR+KzH8i2v3V0O3f3/RPhgFcbqG5B4cFYFvLY6u0UfWtnHvlxfYPY4c+Ixxshv
	+8hE2NuvV7B4ti8orQvv21zxUn4RW7un/Q/J+vGHlXdntVGMWEwMHWK8JoccAQ2sDZZv8s
	ysAnVxUzXuYC+417TS50cposx4U7amEqoKVpqpKGM54z3S35uJm5kqdMMQ8ESQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7UOrDAymFdSXqqdC5vw9eAMuaS1KJPWYntyvEwkrfA4=; b=HP3SnQ/IH3dAfCYiy29S1N9eFt
	5If405aXx93nmIDeXhAsEnIXqelOJDbp895oYC5o+MRrjM/ojP9nIua9xbwnrSs2zoIwgNdhgeRrF
	D68RMVU5YGXuxdA14qtGIPBAignBVvRqwDFHzNnJ1AoxUoSQYVNBpiiWjHEtCJ1RPQ00MfcdwJj4H
	EogUTWA/9BBwkp54mEATuqmgVb0Ugi5KVtCUDe3nOVQU2CfnOzOrwFN6LsEvIiSJ/LTz1Om5VX267
	FKLNEh+SdgW2b5EGecq/gnus0Gy/hQ1eB+YcqoePSV2ig1c6fWnLeTlO5LhoOs87AN4QfkYD6MMDG
	qOpxFaYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRX-0000000823R-0E9a;
	Thu, 01 Oct 2026 07:43:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRV-0000000822N-1aQO
	for barebox@bombadil.infradead.org;
	Thu, 01 Oct 2026 07:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=7UOrDAymFdSXqqdC5vw9eAMuaS1KJPWYntyvEwkrfA4=; b=SGz/QtacKCG/s5NMlJFjjqhYcF
	nuol0sQgs4ohlwoaqXKZNsDmU+p3pqG5yqslR8GanJELS6LoQu7UkpUitjnSCNdSlGtihL3ZtjbEE
	A7jZujTNnJLx4hYAMSRjlMJW2E9NhDdPTHv8poOlcOSG3tpmAluQD4d/DpoTuSS7VOB8SjuVjI6X4
	lACQlcyBXh+dZnjFKi8jiqD1SAkPEEo9TsrArcSc6tn1VF1jyk4fCek8NI4sqHQvaxWPWCN2TnvwT
	5c+nqbn8dieZK0GzcrJNPXoIwzku7T6m9L5bj2jUmTT+x/k12iIm/9cS0pOMmRXN7CcM69y+posSw
	C9xa55qw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCBRP-00000004gtp-1lIs
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:43:00 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C248D202013;
	Thu, 01 Oct 2026 09:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7UOrDAymFdSXqqdC5vw9eAMuaS1KJPWYntyvEwkrfA4=;
	b=OpTdPVMstzgWKCuhauwH4y50K4hivimj3O+LmuV7PneDm6Tzd9dYLFP94tywdp6FbcHpU8
	JxMxq0T95s+1LBs6LjKaPa2VXPzGncF5A8ANcCuR7y0zl49r4UMBgwoCuahuWsqi43Sm53
	lAVvaD9RYssCbHeA06qPxoX5sVHRg1xz2p4DF+ae9rlMkHb+sdpnIsAmzTsti1S5JP9r/y
	KDisE3N2n2Hb6kGdGhM3XX4umuXSzk8C3jjJjllS0+ywnQpSxzmFZ/U3ZwqjHVErhWl71x
	C0kVoYjvmRzM3+zBXNShj5+6yzhl0E9LxhSDVV0yHnv+xU6a6rq4UbtsMSrfKg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790840573; a=rsa-sha256;
	cv=none;
	b=Fxu49Z2tpGaQYlxRCvDlZotThTqPJfAJBggTrDb5gg9pkQO63KlFTygJLZtHzdEBM38k6J
	U+uygLL1vfUWuhCgzCLWqwKVwmOtr/Xi8e/lYzFdQouqIvu2mjNoWtpZCk1TjE5aU2ISin
	td8GtB/fBq+Y0XWqoQlYlK8aEo4U4xaER3KJEsyvkOn6A6kwxBoQ7FdEmrR4ilqgTa/evU
	bNnZfr85LJv+PbimTLfq84qYDmf5Sn6tDasFj+xunQGOV6DoWZEx0sTzdpeTALmIIKJFG3
	MGxhohSQrOTY07YYIcLoJctmT9IoNPOcKGfsxlJAGcckph71egpOwYc2kkihcg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7UOrDAymFdSXqqdC5vw9eAMuaS1KJPWYntyvEwkrfA4=;
	b=V6CdaZTXdQplN0u9GX1sZXVh+SrtvoiY8UbHdnohtGgMHLvTXqykCBgE2tNhdvr55AgPvO
	6FF/gxj+hRUpUuFJXVD1hsqD2QnMn33dEdgKuAEX7YKusrxoy3iE1OQfBvtu/3yJ7Rlygg
	gcbv2WKYPMAj6yL2g5cE5wFZlszLlZ0U3tmvzEKJfyBkonFAlqXHKpXRjbyHNie6Q6pQUU
	Y6XKItcT6uhn4KC1FtwoHwkw5HbWzqdIfI8VU5Ha5eZ1mVPTFmfx11rHpTIbH+bxKL4x3H
	2U2ztfO2oGkhg0LJO04DJuy+CE+nzBaTbT0oY7VguyIbGH5DAeolLZ7HRgVipg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 01 Oct 2026 09:42:51 +0200
Subject: [PATCH 1/3] ARM: rockchip: move to the load address with the MMU
 enabled
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261001-rockchip-early-boottime-v1-1-dd891bcdb74f@pengutronix.de>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
In-Reply-To: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790840573; l=4492;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8O/Jnx2lDfqLUG9/U+5AJbLeja/b99MTiugK4IPT/Cs=;
 b=IyqgurxiCpXPzSgsAWt3qaFv3lPQd3yUr/X5dZLRcaRND37zX+QMtJQVL9nYhteq3dsUlN6pv
 csteLRtYRmEBIzqU3O6rogEy4bvIVKnYOUiovvysq/cln1ZlQPyZJTR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_084257_286081_09BC641E 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The BootROM starts barebox at the beginning of DRAM, where
    TF-A and OP-TEE are loaded to later. The board entry functions therefore
   copy the whole image to the load address with relocate_to_adr_full() [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.795];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	DKIM_MIXED(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 97176200758
X-Stat-Signature: gz7wareswti616bym4qp4xm7grkcpyoh

The BootROM starts barebox at the beginning of DRAM, where TF-A and
OP-TEE are loaded to later. The board entry functions therefore copy
the whole image to the load address with relocate_to_adr_full() first
thing. At that point the MMU is off, so every access is uncached and
strictly ordered. On an RK3588 moving the 1.4 MB image takes 674 ms.

Add rockchip_move_to_load_address() and call it from the SoC entry
functions instead: it enables the MMU, maps the rest of the image
cacheable and copies it to the load address, then restarts the image
from there. On the second pass the image already runs at the load
address and the function returns right away. The move itself now takes
a few milliseconds, and loading TF-A and preparing its device tree
also profit from the MMU being on early.

The SoC lowlevel init clears SCTLR_EL3.M and C, so only call it while
the MMU is still off, i.e. on the first pass.

Boards still calling relocate_to_adr_full() already run at the load
address and are unaffected. They are converted in the next commit.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 38 ++++++++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 0b4566f8ae..e1ca197430 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -8,6 +8,7 @@
 #include <asm/atf_common.h>
 #include <asm/barebox-arm.h>
 #include <asm/mmu.h>
+#include <asm/cache.h>
 #include <asm-generic/memory_layout.h>
 #include <asm-generic/sections.h>
 #include <mach/rockchip/dmc.h>
@@ -131,6 +132,27 @@ static uintptr_t rk_load_optee(uintptr_t bl32, struct fwobj *bl32_fw)
 static phys_addr_t membase[ROCKCHIP_MAX_DRAM_RESOURCES];
 static resource_size_t memsize[ROCKCHIP_MAX_DRAM_RESOURCES];
 static int n_mem_resources;
+
+/*
+ * The BootROM starts us at the beginning of DRAM, where TF-A and OP-TEE go.
+ * Copy ourselves to @load_address with the MMU enabled and restart there.
+ * The SoC lowlevel init clears SCTLR_EL3.M, so it must run before this.
+ */
+static void rockchip_move_to_load_address(ulong load_address)
+{
+	void (*restart)(void) = (void *)load_address;
+
+	if ((ulong)__image_start == load_address)
+		return;
+
+	mmu_early_enable(membase[0], memsize[0]);
+	memcpy((void *)load_address, __image_start, barebox_image_size);
+	sync_caches_for_execution();
+
+	restart();
+	__builtin_unreachable();
+}
+
 static uintptr_t barebox_load_address; /* where barebox is loaded and started */
 static uintptr_t optee_load_address; /* standard SoC specific OP-TEE load address */
 static struct fwobj bl31; /* TF-A in barebox image */
@@ -202,7 +224,9 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
-		rk3562_lowlevel_init();
+		if (!(get_cr() & CR_M))
+			rk3562_lowlevel_init();
+		rockchip_move_to_load_address(RK3562_BAREBOX_LOAD_ADDRESS);
 		rockchip_store_bootrom_iram(IOMEM(RK3562_IRAM_BASE));
 		ROCKCHIP_GET_ADDRESSES(RK3562, rk3562_bl31_bin, rk3562_bl32_bin);
 
@@ -236,7 +260,9 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
-		rk3568_lowlevel_init();
+		if (!(get_cr() & CR_M))
+			rk3568_lowlevel_init();
+		rockchip_move_to_load_address(RK3568_BAREBOX_LOAD_ADDRESS);
 		rockchip_store_bootrom_iram(IOMEM(RK3568_IRAM_BASE));
 		ROCKCHIP_GET_ADDRESSES(RK3568, rk3568_bl31_bin, rk3568_bl32_bin);
 
@@ -273,7 +299,9 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	if (current_el() == 3) {
 		void *fdt_bl31 = NULL;
 
-		rk3588_lowlevel_init();
+		if (!(get_cr() & CR_M))
+			rk3588_lowlevel_init();
+		rockchip_move_to_load_address(RK3588_BAREBOX_LOAD_ADDRESS);
 		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 		ROCKCHIP_GET_ADDRESSES(RK3588, rk3588_bl31_bin, rk3588_bl32_bin);
 
@@ -308,7 +336,9 @@ void __noreturn rk3576_barebox_entry(void *fdt)
 	if (current_el() == 3) {
 		void *fdt_scratch = NULL;
 
-		rk3576_lowlevel_init();
+		if (!(get_cr() & CR_M))
+			rk3576_lowlevel_init();
+		rockchip_move_to_load_address(RK3576_BAREBOX_LOAD_ADDRESS);
 		rockchip_store_bootrom_iram(IOMEM(RK3576_IRAM_BASE));
 		ROCKCHIP_GET_ADDRESSES(RK3576, rk3576_bl31_bin, rk3576_bl32_bin);
 

-- 
2.47.3



