Delivery-date: Wed, 07 Oct 2026 12:57:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPKw-00AuF9-0k
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 12:57:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9BBEE201DCD
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 12:57:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FkxhWxUS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=evw6XjkI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370646; a=rsa-sha256;
	cv=pass;
	b=YXbXuKRepw6hkaFIOWBnCjvTkepAPt8dcsvDI7lJysDkIjNVXTHnsA7STxT+STANPkQBdX
	EHZWJ3WZQkPLNcN4EKo5jAnBDLbDZva3QpWDHXwhesNR7wn8eIEk0JTz+/cKGWt9PFobJ0
	hmnZjiQCbvqDQbvcXjl9jZTxLSzoZyZSgrFS5VXyVIXte5ST+0Em5Wfz0REtF7T9qW1WN4
	pZHChkV4ZSX0PTjIdxo5Djw5WXijiSuINUtMEPfR7GfXsztmYShTy/AHaF9YIgYJ+oUUZj
	nstJ81aPQFSCeQJw2jO8GzqgDTYE6pVPJPw3i46L4PtgfUOpR150lfyz4WUS9A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FkxhWxUS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=evw6XjkI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370645;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=O0Pf6lzOt/cK8cLEM9SbIVrmLJOsgX8h5K81BWh34XQ=;
	b=Jel79QSQRNAwrhBAaWCccLlc9Eh1MUscnkA9e8C15Ji5BobN56geXYy8GdeVKWHOEARpAw
	fcc66w6gv3RP52iD6/feZpdkKoDwcsea3oT3IwFWPd+23zqsTfr0ZnlaBzl8GDeyPuDZzA
	O4rzdk/sXCp5dFhSKikqDYXKfwHz85aM/UVXqVUo7Yu3G9Kc/fU7z7hGmNuSKXyGqQ3U4B
	6CFymGUXIwzEAM5wD1fNDCXlYNv8xJp20VGp+Pmy6PbQjFt9AvimDUF6U99dycq/mOg0q4
	a0DDqCZTJbpYuosuE5ilE0ub8RSdKiRiARgd1YAUpmnUuCB6Y+vBRCNLk7x2Ww==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O0Pf6lzOt/cK8cLEM9SbIVrmLJOsgX8h5K81BWh34XQ=; b=FkxhWxUSxQ/ZF2aGdIykHgPnBV
	sWE+6jvC5oLk3tptOifmAYSLyMk4OMlFyNS2U9yKrpqLVufR0JrVBOOJhiZDTd5KAeR/qDmFRKsHc
	hUNWT13Ez21MkGg1JN38Usgu0jzHJPD+ZGSzJAoNQQZlfl5A5zbCeSfgsnGC4FusVqSBSDQTfH2qn
	p+wM14GhNcj8a47zRwY7v4Ex1iTFsnTnRO4zHiTVflB93x2JnoExawGuW4LARp/6MuWYD1kyiMS9t
	nGe5AwsnoPpzpk0ujKkOQbfJmfNazaVwtYEpJww23mrARpzEiVoWGNlDkfaxFmuHQB/ts6dbTmEUy
	wPiipKTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJe-00000002FEB-3rOy;
	Wed, 07 Oct 2026 10:56:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJX-00000002F8i-3kTc
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:56:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 478B1202363;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O0Pf6lzOt/cK8cLEM9SbIVrmLJOsgX8h5K81BWh34XQ=;
	b=evw6XjkIYgibg48FDi9HP6XgfFIKy14lnewLQjj03nJNxhtHHVfx0j3Cb3I0oyvLyUKPE7
	HdxMO4fCCN0q+lm15ZGpycuDqWB8QCfDOMtjzuPEZM5IUV9mA74PV8ekUBbN/3zYTapVAr
	73NJq2icrl7eLdJwmdIqWECftHVZ786ZGd9297eXG1+uE6fC3lmw2Q82iQC1L8Po7rnp6v
	2GupqPyqtnTgiyzDtLUDpnJaDFdplyvH/Yyh68soaU2/1BkRq0xq2453xe5ACn413ZFae4
	II9RDWtOKlvc3BUiqpZmGquTxPUaeMWpXze1etPt2PFwlqdZ4JbrORlRB/RvKw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=Qcqp0JW31Lo7pzM/45lBr8t4IzB87KlH5EfNiymA3rA9gxe/zn99CzhURyDeUVtYOVafZ2
	Wv9Z4X38K0PUn+D5JCW2oolRlDuMTgK/VKMoySsO50/324YyZylXang+6us0lSOISQkcqS
	F8XTGmx+4vXaEQq6tNF6NRL+GBLZXDipumEKcaERtO2Ic1v//YlaBI7S7woyUDXfq26ymt
	KcaMUnMEhPX82cGAnwuoJ50AblONLFR4rMT+nhgKb/FNh9sMLgxb1BBPatVBTXPDGMMaPy
	D3ROYQWCwT+MjLygK3fQ05QMrScjO7rHpuIpKNxNRYgOioKdtrrXaluucO37sQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O0Pf6lzOt/cK8cLEM9SbIVrmLJOsgX8h5K81BWh34XQ=;
	b=VnLabvqIemyq/my7dlGU9aAk/Ev02wXJ08n7S3bOt1D/e5uqiDTUHe0B+9w29cv4sSfH8A
	D9vywQRy228hA2WxfbKlSKZGptuuxgBalGV+kSx+x1SbAnuZkusLU6osX1cvWYVAQ07/j4
	zTNyM0P3PLYMhQpt0p5Sr38Ocgmzoz6s+vyh5hsAffM3dp4EsjrOovO2lgX4JMwrw7JskJ
	KMO3NwpNLNXN/mZ5Nj4Ewcwre1RoLpGKTtrPAD28+KP61xlFTAQn7bJ9I67BFApqadXr6Y
	RFuVMjg2Z+ljYMApmvXLeeg/GbWXkAlTs2IWD7GbT/0hdyKNE8UzCvK9owG8vA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJM-004haR-0g;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:54 +0200
Subject: [PATCH 09/11] arm: socfpga: agilex5: add
 agilex5_barebox_entry_xload
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-9-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035600_150264_19FE3970 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The xload function allows to build the FSBL without piggy
   data and load the SSBL from QSPI. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
    --- arch/arm/mach-socfpga/atf.c | 10 ++++++++++ include/mach/socfpga/generic.h
    | 1 + 2 files changed, 11 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9BBEE201DCD
X-Stat-Signature: ts5tim3bpf5mms5kdf9xr9s81iq4zeth

The xload function allows to build the FSBL without piggy data and load
the SSBL from QSPI.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c    | 10 ++++++++++
 include/mach/socfpga/generic.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index a59a73d1c31f..7583a20b16f5 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -128,6 +128,16 @@ static void agilex5_el3_init(void)
 	agilex5_start_image_via_tfa(bl33);
 }
 
+void __noreturn agilex5_barebox_entry_xload(void)
+{
+	/* Using xload in EL1 is not supported */
+	if (current_el() != 3)
+		hang();
+
+	agilex5_el3_init();
+	__builtin_unreachable();
+}
+
 void __noreturn agilex5_barebox_entry(void *fdt)
 {
 	phys_addr_t membase;
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 16e117f4206c..a2a3fad58b18 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -101,6 +101,7 @@ static inline void arria10_watchdog_disable(void) {}
 
 int agilex5_clk_init(void);
 void __noreturn agilex5_barebox_entry(void *fdt);
+void __noreturn agilex5_barebox_entry_xload(void);
 
 static inline void __udelay(unsigned us)
 {

-- 
2.47.3



