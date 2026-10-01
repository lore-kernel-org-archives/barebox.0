Delivery-date: Thu, 01 Oct 2026 09:12:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCAyI-008MBh-2R
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:12:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 33768201547
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:12:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="C/3z2Bks";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=NQDsrrTK;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="OG/L7Zw6";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790838770; a=rsa-sha256;
	cv=fail;
	b=JQlbxfuvPPsIi2xwmUZaz5/iEXDJCoUzfdae+6uc+OJUNbrAdYDgVWa4ik/kk2IL4qOTzh
	wnjOnOD9LHxPebnD0MdciHvBH/bNJ9TEmd6SCSjL2yXi5/Ug5OSb26t7mlBo9uv3Rnkkk6
	SejOLpIRUrzLgd9DVJyxjKHWYCgs6/uMTGSzeIjrPcIcSaEYGQtQS5DvEGxvV3e0f1rRxl
	lm5xO2Qevj+b2h0ayMqwlaO5er0UWVmLaf5v1+8sqOLds4CTaWu2vrktm+jqSfWVj9rDjr
	CmZrAkoEaVP7Lw0SzOGobCk3Iql3newfH0WAd1DXQNr7N49fBpAIQkOCUu8YWA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="C/3z2Bks";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=NQDsrrTK;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="OG/L7Zw6";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838770;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Tyl9zLU+58UaNyHeDkPI32Nj+ZBEif3e4GsueJttT2A=;
	b=GHviiPMPkAirQTtk0b7TAzVe6UmJFEotfC8XbVDneIcP1vxiQFzNDFb/nC+6Gb8qp4DNag
	EUvas3oEyDEX2gbwrlKcb5ZxFg6EsaQKXap7CFSzH+viAx9+885Bd1mdLVh6rVYQLS//3D
	bS6Zxv+VPcKdbz303cAnxbhx7fwf/6xGUsvPTX5qO6cRoCEz0++oZfWz0wLwZeddUNM2OW
	dPW/TMSDZI8b57L6p3aiduQ2wzf744U1M0OMpGW+DvmNFPysblMzyleIqca/TxiViaWIC5
	vJf3oz9f9gb+Fi3wPZmsfBt1dKP7r/kSwxtzoB6el5X2tvVPEf3j+JaI+5aTpg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tyl9zLU+58UaNyHeDkPI32Nj+ZBEif3e4GsueJttT2A=; b=C/3z2BksEPuDEh5Pdz2mpPnBGR
	lBMRNHVS0dxycf3ZBX2jx33bOP0+Fn8MvBFwz9M4cLBh1SLnopzEM/D1BG8LZ1DG+kyNfY1Nfil0E
	/P5zNqxYIKGsGzAg3WI2blD6uXnU9QZNqZx4d9SCUWXH+synJxdqgEYxWR79cGgUo81aqnhf0dt6+
	fKPDkULoH7gEJ8OnBNSlb9Z0G8eoXiT99kPIYxbrL+/Jq8p41SchLy/DxPR/437vHU3FwDoNz7a3n
	zoSpT4dGDXLmLgr0JQO8hPuJt437EuKkkztQNXYi+pOGqHnfowV1s9lqtqfcUHLFAEwRFZu9oG9mk
	WY8t8aSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAx1-00000007xrI-054p;
	Thu, 01 Oct 2026 07:11:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAwz-00000007xpc-1Yqg
	for barebox@bombadil.infradead.org;
	Thu, 01 Oct 2026 07:11:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Tyl9zLU+58UaNyHeDkPI32Nj+ZBEif3e4GsueJttT2A=; b=NQDsrrTKXWsjtupy7GxE5i12BR
	QRN9qVKyERIItWaynooAb04s3A8WK6Mj6qrtMl+FrL/MfJo+M7eVBrgvdUgroAQjia7D1ijSm9r49
	o5E3E1FN3L+XP0UH3Zdhlb2wtWC2bFcTDomI4PsqSX6RnRMSQ+NS5tIqzN97RmJS7eGB+W2YNC45x
	1G3bh7V3Q6VjD6fPiFu0ut5WgEOscuK76Mt6TlVaWNz9jCvkiyW01VAh4poEAJJN2RlKHA/iwTRVQ
	jFdLNPvbrst98in8utKihdCjSxOctrYYeGugPRYyiSpvhN/aQOYmScppVHSGUzqw+DMKnZFhh/bAP
	kK5ujkYA==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCAwu-00000004fGl-2Jvu
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:11:28 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B89E2022F0;
	Thu, 01 Oct 2026 09:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tyl9zLU+58UaNyHeDkPI32Nj+ZBEif3e4GsueJttT2A=;
	b=OG/L7Zw6QGGEsUEezBq2utAZOzqaHvar5Q29MEYG/WtrV/op50KwD3kWsKTkF1Tya1FRCH
	TuVlg9r1U+j2woh1c0OrM2niiI6vDKscvvo/BFAspUrQfnj0xJAOIjUk/Xsj32E9yjtXWc
	L3H1HVjfGWG9XNMNhhM9Dx6cqLrfdi/5Pd2SEoMYf7YT6iqoK7u8o/Mwfko/cAjyacv//g
	+46LSo6fgo2IEjeh7/xdn4Q6NKZQ7nc7DpyHQf1qdjSdVZHkMT5S+9Z80FCaCvKW+ELvL1
	AXGgftcQT9dclyfiYBtRJBvl+HumYnFSfjElroEnn24cVRXP3FOnjWbWEQfu2g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790838682; a=rsa-sha256;
	cv=none;
	b=YSfK9IG6uMakyzlR4ukrWDeKY2+8YtVeZRZUI3j34RFxe6CLplC2zhJtDEWbqKB26iZN5n
	BX8tYKJQ5ircFRpDDkWM99Xen2ZydftL6L91NaRWQ7fPG/XXFymHyxVJFrApTsja71yU3e
	xpBdsZbEPSX406f3tA5gUlbo2XEc67BpxAAZcH/+qvv32bJLSfBHCjUv7G4cXTbW75UsmV
	ywgMOgB/bSKt9jabXztIZM8z1cCoA74nNqggUbPvdYSwFLC2XNhkaoqpU6+Lm1vKpL1V1W
	1/k9mG8NIhkrErW3du2G9kzKjbhEd2TpchhPCtkln1xnUiVdRXkVK8MyywWreg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790838682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tyl9zLU+58UaNyHeDkPI32Nj+ZBEif3e4GsueJttT2A=;
	b=RYvvhsLqahJQ73mU60RmffWDFYacdp+CQazBgrkY1SbOewz8LGtrd97EUOT148lFI0PeFM
	r+91ooDdDQ54bR9EtBNsagVfWRzos/Q9zevQ8m84aXSrfFgDP4X+j63aFwPUxAlnyXOFyp
	U59LISfSyvHtZcCkOY674+POuo5oXe2ryzuDTFebrrO7UGdchiGVKVSrrnIyF8JX39MPRD
	BOnFUgv5UwWC6JPLCMslDz9QaMBuKLfi5YlocODDbPFa79NGEg+7sqyyNo5CZLIyzsoO8W
	wy59XlxNfA/nodhhspYmfRaTpshsefUg1HCPt1RaHMSMGGse0/xd4PcDz/G7rw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 01 Oct 2026 09:11:21 +0200
Subject: [PATCH 2/2] FIT: do not cache uncompressed data
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261001-fit-cache-fixes-v1-2-568bd214e5b0@pengutronix.de>
References: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
In-Reply-To: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790838682; l=2142;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ox/Z3R06uOnF4ieY9rKXTkK5qiPr5C1iKKAsGC5YWM4=;
 b=A76EW/4eF4GxHAMpzd9EGeKMvpOV6Lm3jdXSV/hIR0XotYhM9dnkvmWSHt2vfIfhRUKhTRED9
 d40EYT3T3pKC3SfY/FoWXP1C0r0cpGx1NqbX3d7SlHOLiIa2yDBm94t
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_081125_130173_29AF0EE4 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This effectively reverts commit b1babdb15cf0 ("FIT: cache
   uncompressed data"). That commit kept the decompressed data around, so that
    device trees decompressed to match their compatible did not have to be decompressed
    again later. Since commit 5d7d60c4961c ("FIT: do not decompre [...] 
 
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
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-0.770];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 33768201547
X-Stat-Signature: 4ihbdpk49b898yigpf1z99rsius3zzp7

This effectively reverts commit b1babdb15cf0 ("FIT: cache uncompressed
data").

That commit kept the decompressed data around, so that device trees
decompressed to match their compatible did not have to be decompressed
again later. Since commit 5d7d60c4961c ("FIT: do not decompress device
trees to find compatible") compressed device trees are no longer used
for compatible matching, and the FIT loadables now cache the opened
image themselves, so nothing benefits from the cache anymore.

The decompressed buffer is still attached to the image node, so that it
is freed together with the FIT.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index d16d805d53..fdd4b271cc 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -754,7 +754,6 @@ static int fit_handle_decompression(struct device_node *image,
 				    int *data_len)
 {
 	const char *compression;
-	struct property *pp;
 	void *uc_data;
 	int ret;
 
@@ -774,21 +773,18 @@ static int fit_handle_decompression(struct device_node *image,
 		return -ENOSYS;
 	}
 
-	pp = of_find_property(image, "$uncompressed-data", NULL);
-	if (!pp) {
-		ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
-					    fit_uncompress_error_fn);
-		if (ret < 0) {
-			pr_err("%s data couldn't be decompressed\n", compression);
-			return ret;
-		}
-
-		/* associate buffer with FIT, so it's not leaked */
-		pp = __of_new_property(image, "$uncompressed-data", uc_data, ret);
+	ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
+				    fit_uncompress_error_fn);
+	if (ret < 0) {
+		pr_err("%s data couldn't be decompressed\n", compression);
+		return ret;
 	}
 
-	*data = of_property_get_value(pp);
-	*data_len = pp->length;
+	*data = uc_data;
+	*data_len = ret;
+
+	/* associate buffer with FIT, so it's not leaked */
+	__of_new_property(image, "$uncompressed-data", uc_data, *data_len);
 
 	return 0;
 }

-- 
2.47.3



