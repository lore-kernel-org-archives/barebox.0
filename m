Delivery-date: Wed, 23 Sep 2026 08:29:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GTW-005Ky3-34
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:29:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CA040201FF6
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:29:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=n66KFkPv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="d2yMijj/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144942;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LNObKSHzHhd7qv/CwImgoDjzX0GqulaYNBv/TKntVYI=;
	b=f0ny/uTiuQvlL2uvaiTcB5vuD0hTYI6+h2ADk37v85Ultec7yjXTbDKvWnisA4ySxM7tOV
	H4HljMjG/Aeg6TW2u61amzV4juDLYnxJejjTWvwbHRDbsY7QmZi4CEMg2q+QUwTUsYOtcD
	+BEPWUsPL3h5ZTmoQXtdX4Sc3M/3jHTmdSI8C/34ywFCz+up8lgey8gqxaJmzYbQTlwi44
	87Pm3/GqFA5tNACBRmRcj/1B+bbq9iecfobT0SxyofvuG0SWbCH+FmhjfAIFUhQwbxQ5QJ
	f+lbkbY7xENcm60fE1tMLLZ5nKL5UEdRMSRqPet8D8eedmyfUzJrgwjHnCwyNA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144942; a=rsa-sha256;
	cv=pass;
	b=E2XbiGtZT6BFZlW0et0y/4xb7IsVSllgknH66Ke+2IXrKF4CDl3VfXzFRBeBiQFF1KB5XL
	0C+4rQvwc2qnxi8kie7Zzjb7U4PxhnUP1x9k8ATg52PMU1ZUC/OJgjOm43z4yGH5cuweCC
	6rBb7Y/1yk3RCw/4gmal4QzxyrG8/kNKa/9CdESjZUTuuHn3bXbJnvN0rFhqzotQj7hKwr
	p7kE/ZN966blwlB9fs2EtDb13CX5uVp3SCPVU+d9dwSYMnXYzHCeyf0PmuX4/PPmpXXMKa
	lLCDUh7dLzj1uk2zNRoGrZA8OwbMBKNrzOhfGfs/80uWZ+oCzMWISi/yq8ma9Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=n66KFkPv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="d2yMijj/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LNObKSHzHhd7qv/CwImgoDjzX0GqulaYNBv/TKntVYI=; b=n66KFkPviHs6FLI68Wo9jq4qcg
	w25+ZJph7eZrFVYKhHEoyl+wGVSjfBuWCmXm/o9tpUy6uxxa+0fhEFh74VuCfelYiUUtLFFL5zFUu
	SYyhOiXTROxGZIL4Oag5yyIdamx8so79UhGcIgrF+5Od31zZNwc+xyGYOsrD1eqteZRW7UU8y6Crc
	bFe5GyE3TP2Hy+73H0UH+x+ANa/JKMLH/sqAxHNSkKZQs6XVcjzhS9EGiR5/FLAcaKkPmyzhGQgAn
	15ZUCzKeVcmP+bCKJWwlKmbHgp+CiL1vbYIF2WrkEoJr5MHv+vIY0Vxc4eK/UM5YQnMRYbPU1yXv6
	HQ3TIgQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GSW-00000007Grr-3QD3;
	Wed, 23 Sep 2026 06:28:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GST-00000007GrL-40Dr
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:27:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 590D2201FF7;
	Wed, 23 Sep 2026 08:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LNObKSHzHhd7qv/CwImgoDjzX0GqulaYNBv/TKntVYI=;
	b=d2yMijj/wu30K1fghrMqcDaEvVNS3YC3kPS4HG7eH6vGG5I0Lvb6shVXtb3fjqdMjbD5XZ
	lSRc6QJustD7FAnRwBSO2cIzMAouTM/lYLLPnjKCYlCtukhSwPcIdcFzWthoqtJmGhgtw+
	wX6PSTPX9jMNohd1Ft53jgONGa4NrPKETsDLBsY1tgunDMkQiF8CPCKH/htSR+B3pd87Ne
	IAMQ7hvLaGpUDVSh6bgN+oxqOXRbVCiZQcL2vJpkFz1Nxz2aUpxpWFOBoFRoAbAxdZDj0v
	Zp0Eljej1p55dLDL66qwztSkGVjASf/ESsy5oprzHrq0ccsKQ/efGDpmy2inhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LNObKSHzHhd7qv/CwImgoDjzX0GqulaYNBv/TKntVYI=;
	b=GLrCewhTd7YbC6KTgpisG7Tr7YZZJvJuIUJ6UT/+s/JlbKJCu/jK3AURd1wVcVD+W/ZPPW
	wSPflcffO4HiJmmcJyNFfOy7NlsSesLRJ3+BeVyFMnGZYWXalbXpaglkuOliyZHzDNpGHi
	oVu1EOGds1EODC60D5v/CmVBWdgTSZQluoOmo4wcNqQl8VeiRLfEIyIoShs+P9fYQEY9uZ
	JYzHSz8JYnQLZLVcW4SWSiG5XVfHi5B048YmWPtqfdPuCXkoKlu71+vEhTTxyfsP8TGF/n
	jbwWhLOCCcYyNtzIAY3J8sXjnQwH3sRtMrDp+zFvvOEfmThglLsCT1UGVBTgAQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790144876; a=rsa-sha256;
	cv=none;
	b=FerGNHCnwKoerEXj48w6n9o031/ue6fbD3W9qaKFuy77lBeHUC6zV6Fa87sHDJFTnX4YQb
	ZW0FknHYDfNG1bR+kBX9/Rfio/cR8TQuycX3ESnhYnhHbJOcomcQ3F2Qd1wZn5aGsYdhZr
	YRl1EdyNgGjtsTXBvVH+m2rkoSPdvAXD5c5YHYSzB32lN/3PYZ11qp4J5c0pxul4vOKYHG
	XS1mMPq1+1keHHQox0O+x1k91C6sMN3/3Ob883eI5i7XaskFghyOzB8mbfN2Dg92WFzhvW
	RZapkqhETeTimeAOi7C8Aheop/PfE4Z3V1XhOmh8osANRZcw/A+CRStVcWedxA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GSS-002M67-0u;
	Wed, 23 Sep 2026 08:27:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GSS-0000000BpeQ-0v65;
	Wed, 23 Sep 2026 08:27:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20260918093908.477071-1-u.oelmann@pengutronix.de>
References: <20260918093908.477071-1-u.oelmann@pengutronix.de>
Subject: Re: [PATCH] include: ocotp.h: add missing include
Message-Id: <179014487621.2820102.17865791370087960106.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:27:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_232758_145557_718B3EF5 
X-CRM114-Status: UNSURE (   3.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 18 Sep 2026 11:39:08 +0200, Ulrich Ölmann wrote:
    > Otherwise GCC complains: > > <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h:
    In function 'imx_ocotp_read_uid': > <PATH>/barebox-2026.08. [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_ALL(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CA040201FF6
X-Stat-Signature: qqjmaqto6inhcitt6eny94mq7omso7ex


On Fri, 18 Sep 2026 11:39:08 +0200, Ulrich Ölmann wrote:
> Otherwise GCC complains:
> 
>   <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h: In function 'imx_ocotp_read_uid':
>   <PATH>/barebox-2026.08.0/include/mach/imx/ocotp.h:47:16: error: implicit declaration of function 'readl' [-Werror=implicit-function-declaration]
>      47 |         uid  = readl(ocotp + OCOTP_UID_H);
>         |                ^~~~~
> 
> [...]

Applied, thanks!

[1/1] include: ocotp.h: add missing include
      https://git.pengutronix.de/cgit/barebox/commit/?id=983608b439b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



