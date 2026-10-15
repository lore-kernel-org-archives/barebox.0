Delivery-date: Thu, 15 Oct 2026 11:24:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHhO-00DrMq-2Q
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:24:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 94460200467
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:24:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="w2GiRM/H";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CYFdmLtP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056270; a=rsa-sha256;
	cv=pass;
	b=XxpqzSZ1R8+uIgQ/5MWZndleC7s+FBxzHde3mPLAfh4Fl9K5u5KLvtgAVmQkEXhE1coR2M
	S04Zr31pG6IQKBcNa26vOZ4Tbz+WSkcDVQZvk/o7y3izWR4LheeAkAv4o7RiucUqUmTjNX
	myQAoIkMNTajjAFHYkXoMZla0vCqsxwa7B5zvGtnLJOnavTamvsiI9zYICQXaAYzPh4LwE
	dtRMQlIij6fzN4hseqi38ErOuso++aNSpsEIyIZG8VPJ+/UHsNyNoEB8ZeBjrVayzp/uEs
	9JMUiyqEfWLSesX3m0jllyl5G9cVzUiavpTGaovr07XRFb+4YdsijrBkqTm6Xw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="w2GiRM/H";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CYFdmLtP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056270;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ZESW7Pfdy/F2xbKLbq4hzShzvJEhS+UqNowYrD/v8eU=;
	b=cbcz38M7yHv+FCMh8A6jW3ty+Vl8o8oCosRW7MTrjpxVAXxWG+Dk3gzBCZ45Z69dqZoh+f
	9JNCikPw5fpuw/jkemkbRZ3WB7OKDA+s7zXSdxCsYhPSzTACoZkuEmlg4/Y7uf4ssZLhcd
	IUnLn9P7Fx2Vgvqk19DA5YMnmT9eIcf8R0kOLp2GmfRKlG2U/frA8SBogpChwKtTDLEyi2
	ctQYmqKHgeuJ+C5RTL1o+Cm9aE4phdqzveiTKqX8YhQ2yCJmGwoFl3D5nNC1pijgwTu9TU
	cNB2nZgwzOkNBoCL9QjYqCuw/Qw1YRiNQL0g0pVAtaD8PtJoSGv8uKf884PGWg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZESW7Pfdy/F2xbKLbq4hzShzvJEhS+UqNowYrD/v8eU=; b=w2GiRM/H5OTB7aiKPDg63GOtvD
	/JEjGJTrcxoHOY88CwnooBOlH/yrbIdKjP9ZAYYUBhCdXPKWMQy2XDHEC59kL/JzXtxXv3O2EF4y9
	y89yz/0RFeafyANG1zqAPPWdKA4vbsS3xNz6hRDuWHBBAtKoR0568IG82UEbnbOfgY2IWWNdSNRHq
	hsDvomnsTHcME8napna53Br3dEDAR6kzcR6KLT1ZaqSWukUiO4ZJGoiYbeEmseyAvgdZC5Uq9Zx2g
	3olOn1vkIXHyBuF/+t0Q5ibe1rpiLbWoDyA38WYlP3bJCTL/MXu8IXmxi93wGoNQWHWQIcFGQSr3B
	VQWiGzog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgG-0000000HFYy-2O39;
	Thu, 15 Oct 2026 09:23:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgD-0000000HFW3-0YCR
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 997552027CF;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZESW7Pfdy/F2xbKLbq4hzShzvJEhS+UqNowYrD/v8eU=;
	b=CYFdmLtPn1+pckA3ncWTzdnsOlpN7LRgRy48vRf1bwYhE5iQgvt3xz5sDhwKy0AGjXmwmo
	ni1mQs4B1OKcDUvaYxSUTLqJXhA3wKyouZ+gHPk02oWy5cM1WJBy6+0LZCJmmrjaaCxN1r
	RiAs2EOSZfCur7R2z4Uj3b405sfO1Z9lYmyRRDLrhlk5VAnOn24SRoHXkzjoHNx+ZKYNHA
	Et4yoYY6UnCQrCxrtXneY1ZBIQKQXfLRblBtdPwjAGCq1YKyiha4mmXtmEtSi6czvG0X6x
	J4YMpPToBD/nxG8BD5Hu5YDFpUAsaG8QKD3zEsuhGPyGhj3JOowjBpPlC9CU3g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=CGihOddFBGN2vvHvnyObSD801ehrck9RH0GndC3qKaeK1XWffb2hZJZz60z35QchcnzGqs
	OJMFQjpBi8jFLCUHcezkO8cbcayYE4nQ6FvzxqsH+f+me/g1pMg9nwHuVDUApXSsH8TUqy
	34aE+Lj2/qZ17T0dU8X1olsR6DzrZTR+xbXjvT18g7CPkstZtkqH1oJofsSsz9Rfe91Qjq
	+WzsdA6lXdEHs8vdPVNSCsJdfEduFQnPK1MBpRufNENblOwN8O5jWTGMxWWHN5ND/cwutl
	zHD8aE0KZtLOOd6pLMyMfg+1OKFsIDz3uyohHT02MO1RO8dA1htakrxQZakmAg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZESW7Pfdy/F2xbKLbq4hzShzvJEhS+UqNowYrD/v8eU=;
	b=UCvYkSPmz/K1MbXA/NFMY/x+Xj3kDLCcziiM6gfJamaL8a+Alnkr5CivR2qY86V9qAg9Cx
	fDVfXEru/JBGrmMR9Kq10DxvppVHeaBgLriYuJDG/XjMp6FGDkTDGrTBXDFBS4B1nvf+2X
	EqxfidDUqpcZFUI4Afy1bFxVTmFmjJi02HkiqZLe+udpZHkU5Rv6eaJsYoliNwEjyJcaKq
	q6nTCkODNMOdL6K6HaRgXh061MbTZrp61y9XEpev+3DHVY7LUoHUTIf8SBeEINjK+JL/DU
	sA5TABXAoDJ1AvQsw9Fsu0mJHcNznqKcRe96tmGaOxGvySwqNinp0IruOx/Dgg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 7A735741297;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 05/10] efi: payload: honour bootm dryrun in the EFI application handler
Date: Thu, 15 Oct 2026 11:18:47 +0200
Message-ID: <20261015092308.146516-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_022317_330671_A36E3365 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Unlike do_bootm_efi_stub(), the "EFI Application" bootm handler
    never looked at data->dryrun and went on to StartImage the application, so
    "bootm -d some.efi" ran the image it was only supposed to loa [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 94460200467
X-Stat-Signature: mpy1hzp5epzqeimxc6eqcdhbnab79yi6

Unlike do_bootm_efi_stub(), the "EFI Application" bootm handler never
looked at data->dryrun and went on to StartImage the application, so
"bootm -d some.efi" ran the image it was only supposed to load.

Unload the image and return once it has been loaded and its type
detected, which is as far as the stub handler goes for a dryrun too.

Fixes: 35fb1743f5ac ("efi: payload: bootm: add support for efi stub boot")
Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2f9cc3cbf76b..3168e07a3dc1 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -220,6 +220,11 @@ static int efi_app_execute(struct image_data *data)
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
 
+	if (data->dryrun) {
+		BS->unload_image(handle);
+		return 0;
+	}
+
 	return efi_execute_image(handle, loaded_image, type);
 }
 
-- 
2.47.3



