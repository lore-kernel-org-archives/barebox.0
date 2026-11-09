Delivery-date: Mon, 09 Nov 2026 09:52:38 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQL7F-008xsy-03
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 09:52:38 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 356B3201771
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 09:52:37 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RIJ9hgnt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fa41SzZm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214357;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=yaMjCMBlQqfNlm2hmx8mTuoYKnwS4Xp1h2bWgIHHnUQ=;
	b=OOChuVNliz+7qeHVQ6+DvsczRobSH8tq0/7raTxa4LwHFkkMVM9kc1m9BEcHpWYCHeM/Cp
	Id5vxRcONGtiww8MF0Ht+K4Kr6zaU+lIXLVh7WWtRmK95TNYAVyhIa7H/jBWVAl+0OuQbC
	mQUa4va7VAX0I2pagfIaSyssKH6tXQaQMGxB4Rf+Hczg2I10V5J1pj4gqkARlrOlYRnswQ
	OOm2OXU/LHhiT2TjymXWQLr3ELMiM47Vw8NzJt9Qa/dT4y5D5ryhvw2WwLwogxv2D6KNIZ
	yfQBahJSImsxdeVlVONQdeq2Qhyl2IFw3/6nlh8E3gBnIwdmi26CfeAqy7PCRw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794214357; a=rsa-sha256;
	cv=pass;
	b=VfprPWrg3mk2CWubpGBn8+h46eKBcFx37nOeA6drfkMqh6XptqQrwhms/gs2qGz7sBkleT
	ZQ0gFUrT6xd2/TTta2eYuTjf0YUYdFH5MtSfFv7WeIH5EaFMYKqSjrMjf73xoOjpczyR59
	GCGbUGLFlOALajP+dO/o0s5yNf2XjK3xexoPliSuZcIVEoYyJJ4O9EaGGM4Hl3fdXJMyTJ
	Oh8Nu1yQiPwo7Cfj3RCVIyFybf/mILUAphy+bHoS3W9IsVKatQNwsB14xgK7gESK8uVvs8
	4QCWC6w2U5Odp8vIcsiJAPYCc/ZG9spF3B3zDuGasRuLMYJgWzJ39/pWpCdvIw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RIJ9hgnt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fa41SzZm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=yaMjCMBlQqfNlm2hmx8mTuoYKnwS4Xp1h2bWgIHHnUQ=; b=RIJ9hgntOtlBjJ
	TDN9PNjm1VDNs9CjUqa/40xYZEBtZPq/q2FA+Z78Tj2eJLH6QRxVOGoLBJWJUZfW0yAeiJKwWSub6
	CMfC9TwKFRWWAAC5Is6UVagwRyQAo8wlCBP5q7Aje2dR+VKppgcwvYp258ZEcJrq5BHRW3M7QB5oN
	yPz5dectVHdVgVYzedlFadAIsrDI23rZlmPKw3oKa/2+5fff1MrncPyKXze7pUYX3QNrr9xCIKMfl
	fQRwLYjlgcPhsH8TZgmaolP5swCaj34NhDkA0+TBD/T2h1HD+TaKG9M1lGcYehxGdUt1kJCz7ssZO
	2WJWUbQ9LASfWnxFEhwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL64-000000008vG-2G0v;
	Mon, 09 Nov 2026 08:51:24 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL5y-000000008sl-3KXc
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 08:51:20 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 26D29200F26;
	Mon, 09 Nov 2026 09:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yaMjCMBlQqfNlm2hmx8mTuoYKnwS4Xp1h2bWgIHHnUQ=;
	b=fa41SzZmtrhcUKgGX+dqBKgf2LniGcdZOMtAiuMdKcxab6B4qeZmPnSFFSJEjWfYBU7Fm/
	6ESQTNaOtaxgnEfeeU5U7WYrzQAni7d6ZFehVCwMTpFj9T5xPYqf/RzLbznmIaotOPTVx5
	SMUoG7ULcA1PwkBJ6hcEbGS3asRCJ5ERwTSWkh3CbQGQ5iuHZW55OTy/tRmtI8qTPx6biQ
	CsrcUc/wefI17TwWFGEZDfaDlvLg1uIQQ60gX2R2L+Oejuge4knUcdLhtfA37xzQ31F+nj
	duCcHPoNHHyqZrDWdj9fY5by9bpE1UZ0f8MzoMoWETUEwC6G8kCC6G4w9d5MDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yaMjCMBlQqfNlm2hmx8mTuoYKnwS4Xp1h2bWgIHHnUQ=;
	b=KSI+ax5Rn3ih1aVuTNEuS8IZ/fPs0gUPTMYu4PsukOeMTICGSPA7/MlzvRSl2wBVxZlHXK
	YzcSKQdMnRUle6+lOB3WTfXZaoVFheAg903pLmKG1DqdA7coAj5Rp+KD0misp+mP3QaCGB
	uo4UFFNRsU2lN6hLaeM/qScGvrgCKMDRHe3kEKsI5RAQKjd/gNeE2hpx0CEZz22Wu9jlYx
	w63HEy8dA9dm8AeEQDCRkO4f6fG96OoPhEDuqCsRqzc4+a26RoTgrITuW1XKKYdFvlIZsW
	6yq1vg0Q5EcVd2PZxUuuz3rg0lb4Zot+rTb2LdSTqBMJHShAQpElhwg3nwxcLA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794214274; a=rsa-sha256;
	cv=none;
	b=OVhRJvST2d4MfyfN+gOZDdoOgziDVFHTvxOAf9SgZNiLhN2nYghIW8I0rBCZ71qFwx/SQX
	PU6Tx5w5UcYla5TuFAgNladrGkwcMFoREDS1Sj+gNMb8yEHFoDNPy8n1BawZpvE2Zvl52o
	6gBl2A68SRrCb1oe/o4Qj0Rhf24u0GSYCYGbh1Ey1kdGJHGzkoEMlfutyHCyP5PllwxG0I
	yTAInMGlBsSb+uvALhntKKQ5NlGtVZSXp9/s65HIdFA7DfBxslgG3P35+B+2DY5FNtcHTY
	L1mooPJxMRXXqbvjiwGoRKDXSjZwta6nLnPG87g634qQKYd03y05SoAyKfoLMg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 1AE19FF898;
	Mon, 09 Nov 2026 09:51:14 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108202135.1407925-1-a.fatoum@barebox.org>
References: <20261108202135.1407925-1-a.fatoum@barebox.org>
Subject: Re: [PATCH master] bootsource: point bootsource_set() kernel-doc
 at /chosen
Message-Id: <179421427409.486874.1085620438770034306.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 09:51:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_005118_989467_01D0E3CE 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 21:21:34 +0100, Ahmad Fatoum wrote: >
    Commit cf893b54e65c ("bootsource: use /chosen instead of > /aliases/barebox,bootsource-")
    moved the barebox,bootsource-* > properties to /cho [...] 
 
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
X-Spamd-Result: default: False [-60.37 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.83%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 356B3201771
X-Stat-Signature: fzps1dgfngxfuj84najwoj8imm98dg19
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 21:21:34 +0100, Ahmad Fatoum wrote:
> Commit cf893b54e65c ("bootsource: use /chosen instead of
> /aliases/barebox,bootsource-") moved the barebox,bootsource-*
> properties to /chosen, but the bootsource_set() kernel-doc still points
> at /aliases. Let's fix that and the name of bootsource_set_raw() next
> to it.
> 
> 
> [...]

Applied, thanks!

[1/1] bootsource: point bootsource_set() kernel-doc at /chosen
      https://git.pengutronix.de/cgit/barebox/commit/?id=8edac5c8b862 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



