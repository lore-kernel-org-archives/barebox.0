Delivery-date: Tue, 27 Oct 2026 08:41:34 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLboM-003pJd-1e
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:41:34 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BAD6F202922
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:41:34 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xB2NVJMV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086894; a=rsa-sha256;
	cv=none;
	b=HZPnH/6eeWfssAf+QpFq5OKy6wvwRU+WNw19LIC9q72n8YBb6wLi6ENH1SYyJDY6XprO7V
	NocckpLNn5S1o+hupLcWCBXWTz9oNAVuAj5NVM0k7gyCbe600d15GIHkE340b6m6gg9iV2
	EFL0AvbJybHgG/AwTxCi1/PwmjXVhh4bkgCzq7Jzc8QTQW3b7PSSQOSwql8clFh/MmY9Cw
	D0RJhH19u6qsWqAM4nIE0+QOn7K9qm+KuUpxlATIANCEYEkeWMN2apSNVchB8wUqm/5wYx
	ZsBgUIgDRhyWzFetc0NSmqleLBLEVM1lyFU3w/XGRGuPDIXiofTLTtlGw7+ktw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xB2NVJMV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086894;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=BXixvSiU53YdaQPEbNtYWTmqMvDfJ6eBnuQ8HuReckI=;
	b=W9iPtYeBNtxpAUslsHdizSD4/0B5eObMEYGX+dR75GD6W/AeXWON4HoXZ1JVpzr5m3oFbs
	8NG+nLIUrrFoyHjNwNrqDP/K0kLlIWKn2CT8ISHFsB0o7h8AM190DlWD1JNtyPmDJTzX/+
	dDPPAdqfbMJ0MQivzHSId+OQRvAV+T8H2yKdGcmh4Tx7a2oAwgXgoX64Qk3zitgWazMyN2
	1SJHFKxUkp9FO9g2+6iZBtbVzOU6lYKtjPlweUhOFloQpzGK1gFKsLz3+4QdKspjCE4SFg
	2m/Ll2SpkbrAvUVZinDGFCqhazARQaDdZqscrvkj1HNB+0gKuS/gqdl5WXPAug==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=BXixvSiU53YdaQPEbNtYWTmqMvDfJ6eBnuQ8HuReckI=; b=xB2NVJMVghTURp
	/k/4zAGR8K4Kvl4jPWhNWgG5+dPPb0K72GoZ3ER4wlOgSSYYICt2ZehE7/FzkFmTnoSgjpgYUgiqR
	0g4Py5VnLFDO59dIsupCUt5lb/nv9ffcgNtX/pcBTVTbCY0wRTwsCwv8Ec5mSKMm9BIwTmK6H/93p
	j4M7V7PC4fEEQIWO8Tthv6/Fyo5EEGD07WooElcdZsZ1XAdm+kfD9YmvTp0oxaC47a9u4u2brze7F
	HOOGqpWJGLVvQROrw5ac2tnZ+mAgVQL8dCRsfH71//RhgPrKrGZD4Ka/Ql+Dp05QrQvZrDzRw7bFN
	HX3MANkC9w8A74eoaLxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnL-00000003v6D-38dX;
	Tue, 27 Oct 2026 07:40:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnB-00000003uuB-1Enp
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn9-0003zV-78; Tue, 27 Oct 2026 08:40:19 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 12/17] RISC-V: nmon: preserve s1-s3 for the caller
Date: Tue, 27 Oct 2026 08:24:45 +0100
Message-ID: <20261027074014.3280396-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004021_357480_35D614EC 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  nmon clobbers s1-s3, but barebox_nmon_entry() is called from
    C, where these registers are callee-saved. With NMON enabled, BeagleV thus
    starts barebox proper with the 'q' that left nmon as hart ID. Th [...] 
 
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
X-Rspamd-Queue-Id: BAD6F202922
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: q77ahxg81ymhm9zbmeou6jme6edifroi

nmon clobbers s1-s3, but barebox_nmon_entry() is called from C, where
these registers are callee-saved. With NMON enabled, BeagleV thus starts
barebox proper with the 'q' that left nmon as hart ID. The upcoming
stage dispatch also keeps its state in these registers.

There may be no stack yet, so let's stash them in a4-a6, which neither
nmon nor the DEBUG_LL macros touch.

Fixes: 1e29b4d8024a ("RISC-V: make it possible to run nmon from PBL C code")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boot/nmon_entry.S | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/boot/nmon_entry.S b/arch/riscv/boot/nmon_entry.S
index ae017d2a1cf5..54ff3d48d299 100644
--- a/arch/riscv/boot/nmon_entry.S
+++ b/arch/riscv/boot/nmon_entry.S
@@ -8,6 +8,13 @@
 .section .text_bare_init
 
 ENTRY(__barebox_nmon_entry)
+	/* nmon uses s1-s3, keep them in registers it leaves alone */
+	mv	a4, s1
+	mv	a5, s2
+	mv	a6, s3
 	riscv_nmon
+	mv	s1, a4
+	mv	s2, a5
+	mv	s3, a6
 	ret
 ENDPROC(__barebox_nmon_entry)
-- 
2.47.3



