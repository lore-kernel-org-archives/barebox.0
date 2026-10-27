Delivery-date: Tue, 27 Oct 2026 08:41:29 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLboH-003pJE-0T
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:41:29 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5EFEB201CE0
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:41:29 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IJnfkyFM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086889; a=rsa-sha256;
	cv=none;
	b=ZZMP03ZyDOBuc0m5i8yhHwW8bfi2JWhtvp1Ucyco4h53D9ujwtPRCaU+WkDJ05M2FNXrgk
	RZG30H1PHCwUi0M2yvlO+RPulJKaB6k4tEYVgp6x6JX5uuZ7GYwgXvkspBuhQiptgZ4gW/
	KrwQ1RN7/BloM/T0JtgpWVbOBfzXPEh+qmLuY9X7kwq4owmGY/rU4jR+5KYh7JiC+mTHpY
	Xyogy8rIJXRNY10YnPTR3EetdZif/HwOddy41jT9kjnCXzZdm4VauycQVWd1YA8wdgRZvo
	umvB1M+iz9wevKqiGyVjesvHtBgLO0L+ZSuj/q/UQeuPAjmFkWIcdE5grCTPfQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IJnfkyFM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086889;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=XV/JbGmQHRqcptNMjRB7hnWo8ITmBpE3BHH4uk/7oMM=;
	b=CAB2/9fnylU56VIpKihBnRuaREc0fO9wBe5DrcjRYavlBvVwO/1XDjwt5y+2QPI1DpTEeD
	Lldcaap5VMF7Vw9kGRdITN7RE8ZQ/mIY7Hgf4OnfxuoTbuF+f6fvFIVhP9BmXuPwaQJn16
	8/EuO1Qe/itgcD3FfKOrwJRHSltc2c6n409q61rg4HxWa04yJx2lm55v0N6G59NzaV0s/I
	nhUA0TXZLCH08rAvuIWu+R5GE2vNoTyLbrN2t4pk1B80n5i34uY28cxDaHaphETh+r+ktr
	OLX7i8Ol2RrYJXMFXQUiR70ELog9J5H15EW2q3/7r17q4YQtVHhRdTGlD8zNOg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=XV/JbGmQHRqcptNMjRB7hnWo8ITmBpE3BHH4uk/7oMM=; b=IJnfkyFMIlanA1
	R7/XfoRiAMX/nElODxAZqMUD1W83UD5DiFpTQhRwsvk+KhUQ2icAPgn3j90MB3Tn6hYGujjTNp2B0
	BMNdBUgvzDxznGz2JQ8C+g/XEqqNa2Za4+HQLSd1Lb5xifvwXDpd7nK05Kyrckw3HO55SjaNc9rdz
	b+Srky4xeeeW1Hm8HEGU8Oga4EotrfQSoAJHwNEpcOWQswZPoUg88aIgAdHc/uBuHLpVllOBfArXU
	vhxuOPUozcOMuK75IeNOr4ck0S5/U0SEruzupkAjZlIZk1wcKDQoeHJmq/mOsAMw4EAoYm2v9t3Hf
	Qp/8Ol/Fi9WWZktb+PDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnI-00000003v1R-0VFP;
	Tue, 27 Oct 2026 07:40:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnB-00000003uu8-00ru
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn8-0003zV-Tn; Tue, 27 Oct 2026 08:40:19 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 11/17] RISC-V: allow relocating the PBL more than once
Date: Tue, 27 Oct 2026 08:24:44 +0100
Message-ID: <20261027074014.3280396-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004021_065705_104A02FD 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  relocate_image() doesn't update the relocation entries, so
    a second relocation applies an offset relative to the first runtime address
    to the link-time addresses and writes wrong values to wrong place [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Queue-Id: 5EFEB201CE0
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: qjbtzw81mkupba53epfy31ioxycnp9d1

relocate_image() doesn't update the relocation entries, so a second
relocation applies an offset relative to the first runtime address to
the link-time addresses and writes wrong values to wrong places.

This happens when the PBL is first relocated in place and
barebox_pbl_start() then copies it into the memory it was passed. ARM64
has handled this since fab26e665163 ("ARM: aarch64: Fixup relocation
table for the second relocation"), so let's rebase each entry after
applying it the same way.

Like on ARM, relocate_to_adr() now also copies the BSS, as it's already
in use and setup_c() won't clear it again at the destination.

Tested on QEMU virt with an image whose stage memory starts above the
address OpenSBI starts it at, which used to fault right after relocation.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/lib/reloc.c  | 6 +++++-
 arch/riscv/lib/setupc.S | 2 +-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 99dde7bfffe2..9eede11b3528 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -46,7 +46,7 @@ static void relocate_image(unsigned long offset,
 
 		switch (RISC_R_TYPE(rela->r_info)) {
 		case R_RISCV_NONE:
-			break;
+			continue;
 		case R_RISCV_RELATIVE:
 			*fixup = rela->r_addend + offset;
 			break;
@@ -63,6 +63,10 @@ static void relocate_image(unsigned long offset,
 			putc_ll('\n');
 			__hang();
 		}
+
+		/* Rebase the entry, so the image can be relocated again */
+		rela->r_addend += offset;
+		rela->r_offset += offset;
 	}
 
 }
diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
index 68924f2f94df..ba9193288a81 100644
--- a/arch/riscv/lib/setupc.S
+++ b/arch/riscv/lib/setupc.S
@@ -53,7 +53,7 @@ ENTRY(relocate_to_adr_full)
 ENDPROC(relocate_to_adr_full)
 
 ENTRY(relocate_to_adr)
-	lla	a3, __bss_start		/* skip piggy data */
+	lla	a3, __bss_stop		/* skip piggy data */
 1:
 	addi	sp, sp, -SZREG * 2
 	lla	a1, _text		/* a1: source address */
-- 
2.47.3



