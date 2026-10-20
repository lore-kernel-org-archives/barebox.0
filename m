Delivery-date: Tue, 20 Oct 2026 09:59:15 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ4kd-000wrW-0V
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:59:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 280CD2021E3
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:59:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WK7hSQDF;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=XJ2BOGkt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792483155; a=rsa-sha256;
	cv=fail;
	b=MPASauNul5sApUQk5s2kLDe1dlUZoDJsoiXh5v9e1GwzBWyGDU+vIAIOBhH3MM3NdYh68a
	hfjaF6tzGxhEUoKb4qAsyTVJQOqu1lU1XUrdQfrBy7u86tVMgkws0Ifcuhn1pKwCVj0dC5
	8DdnavzddbSxdBPwn9kb0kGD+nYmfPQUT5CLCOSmw3FI5SFrWXbTTcn0RNX6efoaoUNRJ6
	QZAjpVXuoEfcHVbS+08YvkefRrsdk2RH2pCXrL/HxPnhhtgh+PAdEKmiEOTuOJvq1O/LOe
	YkbY84kdV1HTlWCEzzU2VnTvc1EIbBDUMZVjs0SrSTqLmnk/jQcrA8SR8RFKZQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WK7hSQDF;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=XJ2BOGkt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792483155;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IHiI+Hnrs5tisRZEzZfYRLPUC0lCfnlse4NryDTOQco=;
	b=Br0Bi5zTfT47RxrfAaA4giXGv1blS1WFag3q6FA3TvRFDped9/i4sF57X5Ih6c8lnBH34e
	/bI4NQYLbuJMXb1PkRFeWete9cvS3Gg83G7Lw217bWX/MwIDqAST6Z7B+HNiDbRumoNXOm
	KuL/Fn7kIxxJsy/YbGuCMBhpEbw+j+Is90VNywss884F8zkGyLGXRLdYvYmgir9JMjdaFZ
	8U7/w/lRq/8X6hE7uufGl7T8Pom/G1TQeLARSticArS+hXcXQyzeelCMu7CHraQLcSxAfP
	3CYcEWcVCN55FUxWZt3EoaN+xi5yaesaX2XeL180GZX/ghKR7pMW5FGqsVHVQA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IHiI+Hnrs5tisRZEzZfYRLPUC0lCfnlse4NryDTOQco=; b=WK7hSQDFGf1nLkqApFN9KjtYyk
	calKEwu5st54vNeTb6CRtrbgLxqi2pL+P4NoNJfJjfrWz5CSfTm80JpNJgthvNBTcD81UYC8edwgE
	v3+HZVzbE9od2t8Y1xiC1IpcFVn9upVW9eGFtiHKLy1mjPTcTzv9XtA5VGO8uuqLqx7t8eA9k/k9p
	jljbWQCRM2tjwY0HeIZvfaoYqLL++1cC2fs6QyaVRIZGdG/OtDl9WfS4WhZLLMBj7ZhJcUBxsDBmK
	8AnnIpXwkhGjoT1JWmIqS5++OULj44JQX6gZehV3bnSqa1iTgcJr+ssLc5kSmvv9mvvpiAs41UxUU
	8fhT74Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4S3-0000000947b-2Fnv;
	Tue, 20 Oct 2026 07:40:03 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4Rz-0000000946X-1lAV
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:40:02 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 806B5202136;
	Tue, 20 Oct 2026 09:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792481997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IHiI+Hnrs5tisRZEzZfYRLPUC0lCfnlse4NryDTOQco=;
	b=XJ2BOGktPuuyTdmKctYR3xeUBCDp8Zw1SmPmfzoxKp3kcgnfp8PRj8dFWrfRwysNWO54Cp
	1pvJLwc+PDKbXJAcgYA3bkqpCFK31s82xia7R1NXgkjE4XntDMZBhYhIvb3FRIJz2nmbc8
	9hhlR2DEMZKPWEW8QcTb4lh/y3qwNhzINseBLTZE+8Ah4jL5xo8lbCFnxB/UWIOwaWeu9v
	lUOTTFnD0DNcCUz/8RT/NJd/twmhcLLja7AoQ7mqehH4DWTBY8fwunXxub/sFwTv+3Rpm3
	1+Xv2VuPebptoYBcvEmrBnB0S+wUV2ClcOqQ4r9N1r6ieO1snI4a9Pn83gfVIA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792481997; a=rsa-sha256;
	cv=none;
	b=XKSZfInXaDE1VeC1lau9+yBWFAo0EAJNBBQPJt+mugRv3YLXOn8USCqlUE480lOJm9mbxP
	LBBKsiYC7kDiJdNT5KwwUYzy4sM00ft2FSelFDnn36SsBfrH6oSmkQl1sj5yNSfBgH2xHG
	Ik44hX0mm7z1/WQRWrtMKadcAxTjhXK2Sw1g/SMoMpxqintWmYB68/YMRRqWxitB8CT0IA
	tVQRrIkhykxqecQ9Md0uheIXJejLPNQPTIO1wGSUuBxwWL57qoNxWPIjUc0cW0F5vRuy3A
	cMxUccGrR3I9qL4GiVI43JJogeniGA2a9Aqon12LF8AeCGsjFS+rPPBoOD0ixw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792481997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IHiI+Hnrs5tisRZEzZfYRLPUC0lCfnlse4NryDTOQco=;
	b=AmiZAmBoOIncvrSES04Mkf8GHJQ8nLtoYhr+WRNOr0zQdm6o5jMRDm4iPz0TvkD6HOrXuU
	at4+VxRLSIaC+DwYy14us1YiMxQgdbrJ+Y0rL8mDp06QI+DJRtiyWLX0RBa2mw5Hs1UCNG
	WEByZoOZlFEKXfMmLbcjcoH3nPXhx93U263Q9xrWOr7u33QryKSS7OiOEt/Fv//7Ew1LLb
	KfgyHf5zsCfOTuboGBGqa9i18q2Up1T02LMICIVBVZqAaNl7jOInOrui7TviQ5CT6XCLil
	HyGOaPCgAy+lwcv29Y3kRaY+iQSD6U+4L18WNwFKmrzOFbktSVk3fpg66rDdeg==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH] fixup! mtd: spi-nor: enable module in PBL
Date: Tue, 20 Oct 2026 09:39:55 +0200
Message-ID: <20261020073955.3715289-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-2-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-2-f8fb2d2819da@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_003959_607462_CF6F4190 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Building spi-nor.c for PBL breaks the sandbox build: the PBL
    only provides get_time_ns() and is_timeout() with CONFIG_PBL_CLOCKSOURCE,
    which sandbox only selects with COMPILE_TEST, and sandbox links t [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 280CD2021E3
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 861dgjk6wow6hk8jd9x44316ittobjta

Building spi-nor.c for PBL breaks the sandbox build: the PBL only
provides get_time_ns() and is_timeout() with CONFIG_PBL_CLOCKSOURCE,
which sandbox only selects with COMPILE_TEST, and sandbox links the PBL
objects with --whole-archive:

  undefined reference to `get_time_ns'
  undefined reference to `is_timeout'

Use the read_poll_get_time_ns()/read_poll_is_timeout() wrappers from
<linux/iopoll.h>, which fall back to polling without timeout when there
is no PBL clocksource, like read_poll_timeout() already does.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1acf124cd0..221fea774f 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -12,6 +12,7 @@
 #include <driver.h>
 #include <errno.h>
 #include <linux/err.h>
+#include <linux/iopoll.h>
 #include <linux/sizes.h>
 #include <linux/math64.h>
 #include <linux/mod_devicetable.h>
@@ -371,12 +372,12 @@ static int spi_nor_ready(struct spi_nor *nor)
 static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
 						uint64_t timeout_ns)
 {
-	uint64_t start = get_time_ns();
+	uint64_t start = read_poll_get_time_ns();
 	int timeout = 0;
 	int ret;
 
 	while (!timeout) {
-		if (is_timeout(start, timeout_ns))
+		if (read_poll_is_timeout(start, timeout_ns))
 			timeout = 1;
 
 		ret = spi_nor_ready(nor);
-- 
2.47.3



