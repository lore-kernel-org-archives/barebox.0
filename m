Delivery-date: Mon, 02 Nov 2026 10:39:11 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoVS-006K6r-36
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:39:11 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3053620046D
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:39:11 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oO0gSYYA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NT6QfTov;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612351;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=2+GrKqV/Tm1mhkLLEXSsgMpF5liZOXasS9N19beyA40=;
	b=SmkUNc+5b93L9kVby7/vj+GFF/I936Aljgcnjd3ugxj9OfAtN69Ofqq2yVtGlLE32GBdCD
	X9oYW2/oPUDEm1wnHnaIwBnJLzF2x7+4yuIZnb08hjZkVa1a/p3OBEzaxET2Sr8pzW4FjN
	UQ3sM4KpOi5yws7/zgPfLhAKV88aoGsYMkj39nbRoTnwKvq+TyZq4KD52PqmP0IRBHxJjE
	zp7Uj+3g1VoP7HF/BLYpSS3Rnuqcl4IvYsVMVlUVnq8b5BmJdEGgC8v68UuVB9msWrQ5Gk
	oNeUdxwncDD3Nu+NjBLRhw19Kn+WX5/mi5kh69FH6osFAsVUig47znnN7lz0eg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oO0gSYYA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NT6QfTov;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793612351; a=rsa-sha256;
	cv=pass;
	b=GQfYzPaZr1dtPO/1tU5O79og6qF6R0BluOS1Z9D4yTz9Mrw+6Iw1Ow+sXa5Wr0jtnrdRL8
	9KkbmmRqRrW8ji8SrR3pnoce/J45uAlIvqf9lS3FX0ZH1R3WOfszjkBCn8nTlduk3dZEgs
	S6PSAVk7NHGkqbim7wjRxrX7wUD63eBNatjulpHJqW6C98/KokBGLUxbmYaj3oqSqKi504
	0Lr7ZoGfu/VHKz8LH8uJtGZgQu6EMI3D2bMhZ+XgPRked+/ClMQctPqH89THcTPOCfqslb
	WEBIdW52bUlO9QGyZs1AuIQOvCIeC6hB70Tbj5Spld12B6WTVQ9+Xu3z2vZ8Dw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=2+GrKqV/Tm1mhkLLEXSsgMpF5liZOXasS9N19beyA40=; b=oO0gSYYAxT1j/U
	iSRF301w2VWRIiqCzmbthJyISWnJKGTThWmYkq+utPinTtXf4oI4ZJDAKKr6Y/4Okglu9Kt/QWI6e
	jGwP0sp61NaDI2/e2rrcngYpPuIMq3C+hY3UHADvnyQpjCuKwATBUC1hddC4t0XowUa/HJxEZpA3B
	gmlEXSpqsDRhEM9uz5LsaTTzY0vgdhK7dVopqw77g0sTG2gRYvYmYj/TbSabkgk/dBURniujL7q3e
	aK3N6CeNC6nsWXr88mHSur+HBcbcWFhMowxCDK++FYCc24qu2oNLzzqTN38S09Nici9i1K2t6JrF0
	Yvfpu6xLkdFxF+Kn+htg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoUU-0000000G2Qu-0dnF;
	Mon, 02 Nov 2026 09:38:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoUR-0000000G2QH-0lpj
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:38:09 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1857C20046D;
	Mon, 02 Nov 2026 10:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2+GrKqV/Tm1mhkLLEXSsgMpF5liZOXasS9N19beyA40=;
	b=NT6QfTov03TYcutkEBiCP2uBXeN1Q1lUxAdwjAY/T0arKl8SScYwc1oLsFkX3HZ3Iu78uj
	fTdOkApQ0K8Zd49oP724lj3kyjFNmMdYtVtx9a0QboLTudZmPiB5Un6cVQqrBzvNWuu1LR
	HcU2NQekSEsjTYaNQ4Ktc6WCC0r0o5Zgl7cUQiZZjNMjWnKv00Awu+PhGow1uS1MVgQrxL
	iLoDnzNtHPaWRdQJuznghXwsXLsOEMMjTRXSSAi7O0OBcvILTFMWfM2A/kXR3kmDcRvNac
	NQ6NRKo15OQQD8SyMvCzVFw58Rzl6A3xbJpJFsc9T4sY15bd0ub6b0yRfHGhpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2+GrKqV/Tm1mhkLLEXSsgMpF5liZOXasS9N19beyA40=;
	b=P47VEbJl4aySW2oHt7aUBjd0IXZkHc55TKWNLpCkoV1symLKR6d/DpYKx+fMpmpBMCV3aQ
	/rLgl7QtokAIiu+UHAN3ZVbJgblveY/FoE6BrHHQ89z0P6xwE1BrUGDZvV2TBlftx+/5WT
	J1t/vwpJXAf59nu8/GBgRLfeVUZyEgnjuqYEALv+1Fvhl5Ja8zQbwPTQmru8IewLWIogJF
	2H7STamCH2DkSiAxbzxnYieT62BH2+BGTEoEoXM3XHOZ/h77cdR6Cze7OqErlzS+ESNVes
	ztqLj2pzvnTwuvITvkERnJHLl67DeIskpSZUdSgAfWbaj2KQahpK2j6zo2o7TA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793612285; a=rsa-sha256;
	cv=none;
	b=BgVBVtjHGE0ZyvsaD6KgJ9gnp3h9JUmKaMYzGA7kADEJoFAgw7rSLYnvZuYVjecpcAecW+
	IHi9i9ZoUN2iUT8OX7k/DdzFfFc3ngLXTZXz0mRkfivnYehiAP53jArRrZgXwtt96rEqNI
	2mNetv2z/7KDMnn2bvKqzwNAyJI870tgfwY9aKvfGG8TNQN/WAlIKJoPLmlv3FvsorBVEn
	3NL77FgJ2V5foJ3H0bb46pm+TOIfFuglJvGsDIpDG5RwGOalc1zNHAf0jlxOzgygkB8pKL
	UpqOVUFZbYjB7Hv5t9Q3k3LVhO04iwknIf6fjWY9N7uhihWKpM5c4ApbYpZ3rg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 0D78CFF89D;
	Mon, 02 Nov 2026 10:38:05 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261028131201.411183-1-a.fatoum@pengutronix.de>
References: <20261028131201.411183-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/2] defaultenv: devboot: name module CPIO after
 hostname, not arch
Message-Id: <179361228503.2635988.9105122434216067800.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 10:38:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013807_381882_C28F7DD9 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 28 Oct 2026 14:11:58 +0100, Ahmad Fatoum wrote: >
    It makes little sense to have the kernel in /env/devboot/defaults > suffixed
    with the hostname, but have its module suffixed with the arch > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: zdsgsdhed4ct8zerz8n55i1bwpbkxcmg
X-Rspamd-Queue-Id: 3053620046D


On Wed, 28 Oct 2026 14:11:58 +0100, Ahmad Fatoum wrote:
> It makes little sense to have the kernel in /env/devboot/defaults
> suffixed with the hostname, but have its module suffixed with the arch
> name. Use hostname for both.
> 
> 

Applied, thanks!

[1/2] defaultenv: devboot: name module CPIO after hostname, not arch
      https://git.pengutronix.de/cgit/barebox/commit/?id=e9025c67942f (link may not be stable)
[2/2] defaultenv: devboot: adopt same variable names as in /env/boot/net
      https://git.pengutronix.de/cgit/barebox/commit/?id=7beef07a8eef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



