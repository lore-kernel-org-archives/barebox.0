Delivery-date: Wed, 07 Oct 2026 12:57:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPKq-00AuER-0i
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 12:57:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AAF0E201DCD
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 12:57:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Mzicchh2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DUr1gOJ4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370640; a=rsa-sha256;
	cv=pass;
	b=TIBZHgc/wAlyRuwrNBqElv0DKEJgzyKEBZDWBKa4U3veKBNsYljxpmq64IIpZGjlPKiX2n
	amMgPdl0xyTL3RhE5KZlz5QsBGumplTybGdvMengbBwwVi8iHmwzSMUq8ACBau33zOH69V
	oTpteLtZ72D/arggw4ihu3BXMJoLrMsNd447wnMPZyOA3rPFxHt/G6wALsxsNPskszuqOZ
	LTmTr7r4LVLsCHdqE0tZA+qMODK3Rvaxunctp4ojSAl/DLqo7wYSBB+C52mOe5ah0DKE6X
	dU0vUbtfplJ2RGVe2Y6FGQLZs/dgYMIFlPwiLRwkHye2UfhlRLtLM6ZZgnKd3Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Mzicchh2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DUr1gOJ4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370640;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=KVdWdp1pU5Bs/1jwaVkOtf6F7zV3arPi2VtdL069azc=;
	b=Oo3CG2QqMd4C7cd3ZzPpfs8eG5HHGvC1d3NHoUteLCWyuWMrmdoMI6dEDHEopmgardNGZt
	A/TH+KfRSx3jP5fMAnxWuxhFtynm4d3Mz+7Yrff0mQpSiZJ5xtrK4sdaAwan1cZFdMr/8E
	VUqol8M0IparORGL0E43tHmNixzioovgiLsEty0QhaY+ABPCsarc5volkWM0fvVMEY5lDX
	iOhMGpROtrKMzwGofpmz7X987pKurD1w9VjjQ8hByVlNuCjgxMSV2T4HbRSYYqnyX3vP3F
	hCJPWzWBC9TUKh9z1LzHtSmJheMD0lZ2uKkYx+oNCs3qsATetIhDF5Omfb08+A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KVdWdp1pU5Bs/1jwaVkOtf6F7zV3arPi2VtdL069azc=; b=Mzicchh2UCKukfHa8CLKDKQMvy
	4womaYQi+ROFOsRbTAg2hyTNgX+kYWopMq3NLLgDA71Et6MMB9p+PpCpcUAOvXgCNiSDlhFr4JbUc
	VCBewDpX6CVQ80mVXRKyxwgsAJhZbVJC+Z8qQSP5hBLUzGWEy722OLonDlxEQghUeejvFnpGayTu0
	gTouw8lvC6bQXdioo6QJ0PUVCK2iK44yWp2AjhK7G8d8lH3XDlcvcVrrZ9EjVJf1Tdo76Qyv3R2fb
	KGpY1smxo3A12UF7rtme4/ttsNMKYpTwt0VV8OP3zZn5G/40Z77Y2AlPcUMAp3iXVRlWzYV+4f6bn
	e1H03JBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJd-00000002FBV-2csx;
	Wed, 07 Oct 2026 10:56:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJU-00000002F7n-0SUW
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:55:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2234520235B;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KVdWdp1pU5Bs/1jwaVkOtf6F7zV3arPi2VtdL069azc=;
	b=DUr1gOJ4uf9B54fhZTd/5v/RMlaANsf44vZloQMwLzs3A6DhIKwrLtjuRiKWOP30vC9f4G
	obX/Q5KtybJw6nD+tASaNE1QnKgGUWzqCmJJ3Tou0nyEhON20kSLH55Z8pVeK8A0wpO5+e
	IlyPlo76HtoSJXpZ9Awv1zfTARJt0GIOmq3AADTg1hr4528kAS7jcTHOSfUERdBPglujsr
	xKaSwTODyrUnSChTvKrvMO/PI4KL/wlL3Bix8D/wbfnoAhJ/7aaBTO0yiC8Oa9zla2G9Z9
	iHdu65qdT/1XB6AKYzozmRCM5qdho0HYEs+y3PE5VwxVjO4oich16kIFYOVwVw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=frKGCUjOfrCymRe96c99PsLGFaObwSmXdtl454xSc1Hr7oNW+IlqAPoSvz9rZEk/420JdH
	VMcClDjC88sg6ZbLKT2M75S6afmmLoISuVcTasiq8MzBs8KeRj5tChvbqCpSU4IhTooBd5
	NhZvOtZ1930b+Hpw7YzRrQ9Uqj3w8M3272fBCzbRTdF3Z/1ZZzrRwyhAqLh63boXCGOibE
	odqsQ+17ZTfOqSXWySMMhOCGpcHhcbMbeVSDDAsIthgNAxDZyJl2e4hgRkxP4IWbq70Ofd
	Xud1CgnAGh81sbI/C8q2vXWbCI/XYd5r1H0w8bjq4ZJmNtfBkfnBEPPowIEhzQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KVdWdp1pU5Bs/1jwaVkOtf6F7zV3arPi2VtdL069azc=;
	b=ZHfhsCr9cRNT1cwXZ2W+TehK5KwDmRcr3lXM+Xf02BISRjvEZ4L8MOjN2+iq9LI7jhnqoo
	lZ2Jy16HhprgwqpjqcW+rrG5hTTB/18z0I1a0YY5tj14hTE0Cl6QAiRlKP+HhOUPp8TB/A
	lVXAuCAIxA2Tmyh7DWaR+9DVZsyY8/Zvyev18i0whKH8iXguIWgZnUDCuMcbQAz8fkt/Ea
	HA/v5E4qdVc6BfemrqZ+ikXKySODvd3cKXhpLi4DSw0mYfXcaCGKpD5Ucuu181MMMfImX8
	rey7DhLn+q4SVTc0zRin68+C1eSRGbjbrZnjYQi25HcHQQvZJl/vrpCIZlddbw==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJM-004haR-06;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:51 +0200
Subject: [PATCH 06/11] arm: socfpga: agilex5: separate load and start of
 bl33
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-6-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035557_809511_210C919D 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Extract loading of the bl33 to a separate function. This allows
    a cleaner separation for adding the bl33 xload from another medium. Signed-off-by:
    Michael Tretter <m.tretter@pengutronix.de> --- arch/arm/mach-socfpga/atf.c
    | 37 ++++++++++++++++++++++++++++++++----- 1 file changed, 32 insertions(+),
    5 deletions(-) 
 
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
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
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
X-Rspamd-Queue-Id: AAF0E201DCD
X-Stat-Signature: fsiuhotrsxcje8czaz4qy5dfje5xowdu

Extract loading of the bl33 to a separate function. This allows a
cleaner separation for adding the bl33 xload from another medium.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 37 ++++++++++++++++++++++++++++++++-----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index ac69fb7776ca..4bf13a464657 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -12,6 +12,8 @@
 #include <mach/socfpga/soc64-sdram.h>
 #include <mach/socfpga/soc64-system-manager.h>
 
+#include <pbl/bio.h>
+
 static void socfpga_agilex5_qspi_init(void)
 {
 	unsigned long master_ref_clk = 0;
@@ -36,16 +38,38 @@ static void socfpga_agilex5_qspi_init(void)
 	}
 }
 
-static void __noreturn agilex5_load_and_start_image_via_tfa(void)
+static int agilex5_load_bl33_piggy(void *bl33)
 {
-	void *bl31 = (void *)AGILEX5_ATF_BL31_BASE_ADDR;
-	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
-	struct fwobj tfa;
+	/*
+	 * Do not use input_data and input_data_end, to ensure that the
+	 * piggydata can be stripped in the FSBL.
+	 */
+	if (barebox_image_size <= barebox_pbl_size)
+		return -EINVAL;
 
 	pr_debug("copy bl33 to %p from %p (%zu bytes)\n",
 		 bl33, __image_start, barebox_image_size);
 	memcpy(bl33, __image_start, barebox_image_size);
 
+	return 0;
+}
+
+static void agilex5_load_bl33(struct pbl_bio *bio, void *bl33)
+{
+	int ret;
+
+	ret = agilex5_load_bl33_piggy(bl33);
+	if (ret == 0)
+		return;
+
+	panic("No barebox image found!\n");
+}
+
+static void __noreturn agilex5_start_image_via_tfa(void *bl33)
+{
+	void *bl31 = (void *)AGILEX5_ATF_BL31_BASE_ADDR;
+	struct fwobj tfa;
+
 	get_builtin_firmware(agilex5_bl31_bin, &tfa);
 
 	pr_debug("copy bl31 to %p from %p (%zu bytes)\n",
@@ -63,6 +87,7 @@ static void __noreturn agilex5_load_and_start_image_via_tfa(void)
 
 static void agilex5_el3_init(void)
 {
+	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
 	int ret;
 
 	agilex5_initialize_security_policies();
@@ -74,7 +99,9 @@ static void agilex5_el3_init(void)
 
 	socfpga_agilex5_qspi_init();
 
-	agilex5_load_and_start_image_via_tfa();
+	agilex5_load_bl33(NULL, bl33);
+
+	agilex5_start_image_via_tfa(bl33);
 }
 
 void __noreturn agilex5_barebox_entry(void *fdt)

-- 
2.47.3



