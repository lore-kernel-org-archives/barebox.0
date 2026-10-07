Delivery-date: Wed, 07 Oct 2026 12:57:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPKs-00AuEn-2B
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 12:57:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E402B201DCD
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 12:57:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HQiKcHTf;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=qDShx4+6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YsAZ5DCI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370642; a=rsa-sha256;
	cv=pass;
	b=AvBsPga5sdBgt7NPXjhQUpd6y8AVtJLSpvQrxaLy5oE6g/3wSy1v3UD3G/2tp+AzpBh+Gz
	URzG2nGzynhM92RwJd56I0ubZFfxpf+Upy9ltcj/+l/I+wUe6SEb6wc/Mz100Es7fJ5y+Y
	eadLxUFOPlF1ldChp2EBslZ0csKst4HEz+NWqJloOd/IXOkflLHc975fUeqkABkY8ODiGS
	9lZ9auFwNi++me/898kWY8S+/SCwe/6B1PKlTGt8ViRFkLdFiv7KJ/ijpdKBa7poB4c+1x
	3Up8P+iYEaJzogVvFSri+vamPjoLEKmiXB7BE6ykT51pFSuzGxTqEO+so5lm1g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HQiKcHTf;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=qDShx4+6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YsAZ5DCI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370642;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=q40nVOXQ8j6VL9C9jCG2bk31PV99G18fbG8kpNn7chs=;
	b=Veff8fzVOPYtW92b+odn7Oxwca93AR1iD0ao+yjD1DLEk4dktfIc1/tQmN1FOc3CRNBrB4
	c8IyIwFk5YKQLXqsuPVGKqc7v8dbB2JdVCbKTzVCyPzQYiz1jhZ1vl/xYIOYPP/h2wFNE5
	hxqU96d4eXDh7pamDE7+g0Dgmj/31xmadiSmfTiSSiDUoWkTpux1kfCOqgIXQq4fkJTuyG
	3flCmsQOrZDRfpoDymXejNvjohDVteQAND+721U+t0c9M6+FLP1DvXo1sFgmDFDN5IEXsp
	ZOtkYaogTQHHQ3NLr2NgKdmOqVvAl/QwKEo83AFfDuN/d5vYOaUhtYJoeKS3Gw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q40nVOXQ8j6VL9C9jCG2bk31PV99G18fbG8kpNn7chs=; b=HQiKcHTf0dpQe3Sxg5/ZCRwqkx
	Eb5/nZZSWrSKxQuHtGLOLF5nAEVjIYvrz+aWhFp6+mTRik6UqnMpTY+EohmBLi6ixvV8lJzRMb7Og
	VZdHxlVJcLJAx0wBGslLYjXd0wwFFgOiPZXHbojIn7yXwSzBUSniM0V+p6E5qC13b5qx4TSihUpXQ
	ldojNsegFkWKVMFH/acH86ZCAAFlTOWBe64I/6L8X1J7wsd+SnCfszgxehjFRURlJmpnjqeG6dNF8
	aB0UMIprYgyJ8mdMu3OLv2p6ZxBZbpg+yqaQDTxnyZFwc/QfnRvQoVF2HekzClspSERQ3U0DrdD9p
	tOO7qBgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJe-00000002FDi-3Jz7;
	Wed, 07 Oct 2026 10:56:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJa-00000002F9p-0a4e
	for barebox@bombadil.infradead.org;
	Wed, 07 Oct 2026 10:56:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=q40nVOXQ8j6VL9C9jCG2bk31PV99G18fbG8kpNn7chs=; b=qDShx4+6yB19bfDaBQfhi6oEj6
	FG9aByVU0G5XBfmkJyKNz3EDYssZ7nJBy1GAGFfvYAbKJ7LD9f4BtMNW9Q+TeyilQUkz+asZrjB0V
	Vx4hdHwTVHdtJtaMZJzx5DU0b5AasbqDHhzwFksqQAY+AjNRIHsk7D9FMbI8q5azf/DcwtxYivQWk
	naXXPZCMlYy7QnK3nZ6bXvK52C/TUtW+iSIq3HEJW4xmeG60HCLcDWs+3+erNd3ODSvu8oqB1Kp7t
	WO+Nx8cuv7692/uHjTOxfK9z9CUjR4IehgXDuv1ud7GaIXz3OI/XtwR4CTQGIphntG6dMbFj4+djS
	GqEJU1Kg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xEPJX-00000009Sbl-0Ehm
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:56:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 413A3202360;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q40nVOXQ8j6VL9C9jCG2bk31PV99G18fbG8kpNn7chs=;
	b=YsAZ5DCI1SgKmI97XiiEvMlfutW3kBhio/KW9i9SWyENUioyFsIOkg9Nkq9urOm+3Kuz5C
	TNpx9PQAr4oN18rs0n7r6oLCqYl5Mv/+JoqbIp9vI1VL0ycUr2mLJX1rVJjCGKsenFK9TA
	xxRLcFRcKMY+sQGmtuUAHpuuwTGYPNZQanznoJ9JMrzahttou8n/UNjlZIhefqwO+In42y
	rvJABRY1dXkK+jdGeuYWW6/p4gGNjENymAW/Qp5xQYdonaW7wUghxqzq3dBLM6kBU/83ir
	y8ijSGssW3Apa2F0plWKgzFlt+eG5zY9aRP1kF0V+09QUyXizRlxmQD9cBTwhQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=CXizG/z5hRZmveQxebbCbceOJyuUD2qIlLTJsEWkUwnHmt1BEjTE8o1mQg1uuKYEVsn1Z+
	sXUpsxTypmg6K8ZMuuIdfwAh46dQGteyismHT2irXMmfjzLzE36iC8022pQ3mjszDb0tSP
	lG9s+e6rBvHoOpcnEgW5hfmZCjPRGVuyzMz0MneEpSs7hvdUP9maiu4qDojsu92TYR5dzx
	UuAsM0UzLoP3XWBRF1oER0IRAItefTCl2o66a9yhTYx5zM5sdP2kv2BvDj1SmBHU/TYKCO
	ThMI6dvSBNKl0MFVVu3TtELUpMn8wKE4wdlclv6S4mcplPp0deUk1rA+r7ikQw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q40nVOXQ8j6VL9C9jCG2bk31PV99G18fbG8kpNn7chs=;
	b=VrDL9+RUPhupgQM5zmzldhmNQQg5+IhPKESHQqTu6S7ECgMTpXrE2SnI97hr9kg3wGCz8z
	edoeFQAuN7vX9FYFL++hWDNpv6vRcP2glVBuAhUCCw8j7e6Q5KEPuZHPFl0g4nkCOY9Wrt
	r65uIr0Z3sMdR/GoWcmoI5Bb9bkXTj1EhWyoyFC8o2JaB+6fTgQrgoyYp2voL43Wj+JpJH
	xEKvKk3qga9GR9U98pxcy6oHtXiaUvONWeSwLCjPzckfu9BoR6NZApMbMIrhLzHcfswbHw
	TspLyqxdbVzj9956vybc+ZDX3vC/oZ57G0NbAyTA/qTtKSf+aFcPb9n5fBG5nQ==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJM-004haR-0M;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:53 +0200
Subject: [PATCH 08/11] arm: socfpga: agilex5: initialize QSPI flash in PBL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-8-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_115559_432402_05886C8F 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Make the QSPI flash available in the PBL to be able to read
    a second stage boot loader from flash. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
    --- arch/arm/mach-socfpga/atf.c | 34 +++++++++++++++++++++++++++------- 1
    file changed, 27 insertions(+), 7 deletions(-) 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-61.01 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E402B201DCD
X-Stat-Signature: 1ezcxt6gbg74feshkdtk69o8bpsnnbqy

Make the QSPI flash available in the PBL to be able to read a second
stage boot loader from flash.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 6d036d20d4b6..a59a73d1c31f 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -13,29 +13,46 @@
 #include <mach/socfpga/soc64-system-manager.h>
 
 #include <pbl/bio.h>
+#include <pbl/mtd.h>
 
-static void socfpga_agilex5_qspi_init(void)
+static struct pbl_bio *socfpga_agilex5_qspi_init(struct pbl_bio *bio)
 {
+	void __iomem *iobase = IOMEM(SOCFPGA_HPS2SDM_QSPI_REGS);
+	void __iomem *ahb_base = IOMEM(SOCFPGA_HPS2SDM_QSPI_DATA);
+	struct cadence_qspi_platform_data pdata = {
+		.is_decoded_cs = 0,
+		.fifo_depth = 128,
+	};
 	unsigned long master_ref_clk = 0;
 	int ret;
 
 	ret = socfpga_mailbox_s10_init();
 	if (ret) {
 		pr_warn("Failed to init s10 mailbox: %d\n", ret);
-		return;
+		return PTR_ERR(-ENODEV);
 	}
 
 	ret = socfpga_mailbox_s10_qspi_open(&master_ref_clk);
 	if (ret) {
 		pr_warn("Failed to request QSPI access: %d\n", ret);
-		return;
+		return ERR_PTR(-ENODEV);
 	}
 
+	/*
+	 * Failing to store the reference clock may result in an unavailable
+	 * QSPI flash later, but is not fatal.
+	 */
 	ret = socfpga_agilex5_write_qspi_refclk(master_ref_clk);
-	if (ret) {
+	if (ret)
 		pr_warn("Failed to store reference clock: %d\n", ret);
-		return;
+
+	ret = cqspi_bio_init(bio, iobase, ahb_base, master_ref_clk, &pdata);
+	if (ret) {
+		pr_warn("failed to initialize bio for qspi\n");
+		return ERR_PTR(-ENODEV);
 	}
+
+	return bio;
 }
 
 static int agilex5_load_bl33_piggy(void *bl33)
@@ -92,6 +109,7 @@ static void __noreturn agilex5_start_image_via_tfa(void *bl33)
 static void agilex5_el3_init(void)
 {
 	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
+	struct pbl_bio tmp, *bio;
 	int ret;
 
 	agilex5_initialize_security_policies();
@@ -101,9 +119,11 @@ static void agilex5_el3_init(void)
 	if (ret)
 		panic("DDR initialization failed\n");
 
-	socfpga_agilex5_qspi_init();
+	bio = socfpga_agilex5_qspi_init(&tmp);
+	if (IS_ERR_OR_NULL(bio))
+		bio = NULL;
 
-	agilex5_load_bl33(NULL, bl33);
+	agilex5_load_bl33(bio, bl33);
 
 	agilex5_start_image_via_tfa(bl33);
 }

-- 
2.47.3



