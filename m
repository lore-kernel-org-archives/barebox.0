Delivery-date: Wed, 07 Oct 2026 12:57:31 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPL1-00AuFu-10
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 12:57:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F124E201EFE
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 12:57:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aj2YoWGy;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="R28kUE/2";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370651; a=rsa-sha256;
	cv=pass;
	b=cfSaEKc9TzCNXvIQE3YO9TkyJWqGBDpc9a0SdnWAKVy2U8/r76buzTpM9SW+QTHeIoWKqF
	dzUji1DYfnrfjiPA9O2lGNOst9S2ptnkRyhJlXQfoTJEBe3yPdESodhsx5BXMzLt/8rxB0
	hbds9ccyghiY3qMIdedldjCkIT7Wgm05FKWQ9ME2TTPuPD/7njFJYDYq+yni6VVbJFRPFQ
	le1Wulja8NSnBfxtkEIFXprNP/usqywggKa0K8JjhIbiJAHzjWGP8q4YrdVnKCw+Hp9bQX
	ooCc/aZ9230sV4sGI5w/SMWxwae8nG8ngvS+fcwJsvoNP8UZX6bhgpaFJJ/w9A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aj2YoWGy;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="R28kUE/2";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370650;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=wJRqAvAeWW+5HSnY3v6n++1eo5G0aOoqRpkUG/u2BrQ=;
	b=DMz6eG7cKRAygMiqsNxrzGp7KAWvDb39D5kDFf/QzIhzYS/M27z7qbwMTH0+WSWxtHnbjY
	1QW9/mBqwBgQIrCVlWc8KBdTLEGOIaFlUWm9xNdE9/mRg53cxQgLdSsPjz6W3nNqk52CYh
	5DkhQBNx2unpK+whoib1esUwMK+kycAIjw1M/w3wWKVWuPtP0oomx9rAOe9w1YHf12t3JT
	mU9PEb6eX137KD6XlB5M08s3H+h1HYvdMESfaWtgkGpbXF7Gou9EBrPVOmwAqJmsetq2Bc
	g4Y1D2E/NpwamQWH57cnbgSr3WS0WUFHqj+T3Eo6A0PZo7mJhJ2Yq+u0ATarCQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wJRqAvAeWW+5HSnY3v6n++1eo5G0aOoqRpkUG/u2BrQ=; b=aj2YoWGyLiMUeH5YmyC28+l0zr
	yq4nDZQVTFcgsnxoq6klRbzBMPNPyvzdmCnDxjNJMPxSalylCyuzqGWCyZHnMXAqhUhtAg/Tq/HPE
	aNMVbXqLijd7FsLqOf7KKVTbDL16RZwbMgA/5Duj1OHrYWO/nhyo9eP3UxeVhUl5iYNGuNuMBCWOB
	VmSF+RvmZjMb1PgjTV8RfMpsIomA8l4SrrJQdf0awziv9tlVb5EMW5HKrkl1KYWpWwGQ9mcoaPtr8
	brgXTkI6YE4ZqJ0Y5q0nnmK3E9RXlNO9Pc3xcXZBW/+aLAlXREjHdqX8Nz7/z4QI5EK9orrrWCQis
	0WNiRJ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJX-00000002F8y-4B5A;
	Wed, 07 Oct 2026 10:56:00 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJR-00000002F61-1NNk
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:55:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EA96F201DCD;
	Wed, 07 Oct 2026 12:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wJRqAvAeWW+5HSnY3v6n++1eo5G0aOoqRpkUG/u2BrQ=;
	b=R28kUE/2NmP8dw6o/13EVG01bF37OMWDflcdwE50s4bwbZEzYAOhiOYIs4CtRDimQnkn6j
	9b+TeZXdzlvKBnxVdm9C1+NrKLaYUxXfRmbmmoA2hW3ie15rk52UetLr3uBRDJ86vW6EZt
	6VJJvR77eDKGDdpkXrlwLd/faKHVi+YoyjvhnA3xRwnwi0+in7/48m144i10XBMD+j/Fz5
	wuGpLeoxfNzhSy4rfnJTxp1/dw+xwjgjFq6dit8T4P+if5S0VIRInS540SXR/zSN81dEY6
	abw3s9UiOvZ95pu3y0IaULGESphMTD168LaIjyfrazI5lettlD0q8KImsPoYmA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370547; a=rsa-sha256;
	cv=none;
	b=Py7pHBQ3G3Sme8yVEAgLnSYF08clFuRCwapx1x9PFezMUPAZtYRkGWqQSxciYTGZUv03Fz
	lYtPuKjDBLnNfkvQE0bOwebja0m58sRz0zUKmtIhvfv+nUYrMa0Nlt3qgB2cTl4Ph2qcdA
	IgJSlw71boVKGzvsaBrZ3ZNMO0iIKC0zm/qpds/gctJ6+1VufN2cCZQYCOyXT7j/MV/ha1
	+wv6xHaj9WDPruiD3RIBrzfI093cyycZM2f1atSwaK0QkNCLUlYJO1Nj+/TJiDtDC8bbkI
	ht3oBmbY4NaKCRPRaGB+f5ub3urBa6eHZYqT8MWlYQjaht4xy7iAaecI9QYioA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wJRqAvAeWW+5HSnY3v6n++1eo5G0aOoqRpkUG/u2BrQ=;
	b=g/gI+Mnqo9sPcB8Py4CKsN7Ubqm94/BO/3U+orRpuRw/OXR6UqOdGPrtsDWRyo3JAK40xr
	oWT2c4dPgniEpTiZsqT9VqDAX6HNlLRwbg38Qv0I/beMRS7/qY5CXlm5VCl8MifnK2Vdaf
	7/8Se+ZpVWSX5ud6EbmQPTnsEVlqTnNfNy734Ivyr4fXb8Y0OnqUQsZfaRHLtvB6zD99x3
	rPMTTlKNtYxwHTh6HEljozP5lwaddz8ZCY7eshHK/ksLYuseyHj/TSSVcrjuq1aeMqhQau
	lUCUCQW+J7K4CJ26ZlXYlK31tIbqWlzWI4B61vTYfxq1yTf+1FJEABT5tAuJgA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJL-004haR-2k;
	Wed, 07 Oct 2026 12:55:47 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:46 +0200
Subject: [PATCH 01/11] mtd: spi-nor: drop requirement for device field
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-1-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035553_898316_70BBC18F 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The device field is not actually necessary. If the device
   is NULL, the logging won't print the device name, but the driver is actually
    fine. Since the are no devices in the PBL, drop the check for the device
   field to be able to use the functions in spi-nor.c in the PBL. 
 
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
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: F124E201EFE
X-Stat-Signature: ixrtdzofun5pk8tycd676i4rxwhgffiz

The device field is not actually necessary. If the device is NULL,
the logging won't print the device name, but the driver is actually
fine.

Since the are no devices in the PBL, drop the check for the device field
to be able to use the functions in spi-nor.c in the PBL.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73c27df51dea..1acf124cd0cf 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1086,8 +1086,7 @@ static int spansion_quad_enable(struct spi_nor *nor)
 
 static int spi_nor_check(struct spi_nor *nor)
 {
-	if (!nor->dev || !nor->read || !nor->write ||
-		!nor->read_reg || !nor->write_reg) {
+	if (!nor->read || !nor->write || !nor->read_reg || !nor->write_reg) {
 		pr_err("spi-nor: please fill all the necessary fields!\n");
 		return -EINVAL;
 	}

-- 
2.47.3



