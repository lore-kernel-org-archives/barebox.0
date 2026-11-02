Delivery-date: Mon, 02 Nov 2026 11:42:01 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNpUH-006LFf-06
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 11:42:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EA8D7201690
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 11:41:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C6mvnpjB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KAWwFsU2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793616120;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=lfJE6D9IWoaesN9puLJjxrIJYWY4oG/bLJoBGUeIiMA=;
	b=e+akcm2ASwGZvAKK7W6cTR+4A44kacjENROmRMexScueKzUS6+ukyCZbTwH1z+EMcs/g5S
	XUzdWS3mg8lOLEUlZdT7gHxGuVolTLH7S1e2pklv9jFh0m05wP9H83GxvsIt6Rf1LqQY5m
	xBNi+HxlmmlKgt9EbH1TzsOBCcP/jyuDzsjwsU4F6ikNJ27bamZgtj4NyqgGXXlG0Clse7
	2kYy1TvYHt1M/PKRxbuzqpEkj/wiSxb+Un7ODSsMWPS3p/IZ3gu9r0Y2W53na0VyAU50nQ
	j9kP20iZbg1mG5Jqc3lxal4MFRjSVYyf/XZM7YapgB1iooocpy2iYjP/7axIbA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C6mvnpjB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KAWwFsU2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793616120; a=rsa-sha256;
	cv=pass;
	b=DuRsbtBdHnwXW2Vt2Fc9N25hqHG4YJ3CO9vlO+29Y43+WaMkDvAOyoo8/2UdIC9jc1tYib
	fxck5cgzHoW7wiuaxhk/EpBcGMKnmMMKRhRvyXndWNY3Va4gPOCn7aGqEB6U8kr/F2nUwy
	JrigFBjFYpbOcpvOJkrECgmL+2lb8y4EjUf1AfEoTtCml2+cE1/74K203aRX5LteUrVwTk
	ZXXsm4XuMHHRZ7ine+7GpLk5Ez/0f0FXC+kaXxlq7JGqlXCo1etR4Ml6M/6aGt/yqludG7
	l9Qf6wHXW4GuEqyGSj6Zovp+eugdUEn8R+eJpswuXSFjsS5wlZpa29t1WdSiBA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=lfJE6D9IWoaesN9puLJjxrIJYWY4oG/bLJoBGUeIiMA=; b=C6mvnpjBScQWvm
	kRUHRsZqKez3RafqsIiIDL3eYZ9qaxGHhY31B7oPN6sNplWkEyVc6bHsv82Vq+hA3F+hmlgVZWGTN
	y8Q1a9MhaCV2u7lcIhgGomUrzZTakM+lDekAD4NbwH0dC1TOWxJYFSCibAp1CVg60+rLIA7rEy90z
	RlKy8YEo2Lp5yCBmB9B/UmzsXHniVl2iKqOT/oa+sSiRzMeD0TWIye/eUP7y8RmMCn1+qwEvDseY3
	R2llsCkxld0vGK11DSgBhOIAXCKMXsEScLgDZ9skwr/YJ7xPWZHp+A1H4BTeVGtvstIa06JLai42u
	6KawHNURUoVdF7J7bdqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoeb-0000000G4so-0HZQ;
	Mon, 02 Nov 2026 09:48:37 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoeR-0000000G4nM-0uTR
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:48:35 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 86A04200153;
	Mon, 02 Nov 2026 10:48:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lfJE6D9IWoaesN9puLJjxrIJYWY4oG/bLJoBGUeIiMA=;
	b=KAWwFsU2dawhPED77weyftPm/rY7spMElwrEDhj5DItpqIpTQ0MWGooizIFbcWbbD6P0U1
	00SrUR1dbWR46eTqAXFzujMTtZT7NZ/uQFFdX6BeJ/dPltPf0f9r6gS9dguRKK4DQeWbZr
	rr71Bnbn5OIV/SkA0cqI/id9/m5zrcALYtTw1hjG8d2AJ1j7MvmKwWD0b9m1+C9LU7TP/N
	qyafx6dlU9Nx0t4McTz6xltihK/J8hpLz++vEp4EhrTydT1SZSwh61kP0JInHgGV9zafI0
	YM27I7xGXZzHwuTtb54VI1zJbzGCBi25Xf2aWhW85lCkm9jVTfBQtCApX5ACUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lfJE6D9IWoaesN9puLJjxrIJYWY4oG/bLJoBGUeIiMA=;
	b=JRhqOCK5X3xqjn/kkeO+bWsT1OCix7sXITomb7wbGgkgtFOd8AHRIfp6nmivwELhJq/ACG
	9pQvkZNgzL+0CJ+RGF1VfnYdAgBChwFTN3EX334vDd5K5hvghxbR6/iHqqtJ/WNuoftp5O
	N/AW66ioTFCSMFD6HMwWquDW4A1p1HO0BJn8TUG4NWHfUT+GG6xNIbSmX7MTGNhDXpwM3t
	zCK0KarfHCk3XoTvYW5x0fQHUGDvHkt5jbCT5zJP2fgjzQ8nWEKej4NYHyN+gn3Rbz0YyE
	IkV6YF6MxQUPH57J3nyyLjl27gbxG1FZ+KC1qhtvFLo3R3giSLq/I2wtiqpAZA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793612905; a=rsa-sha256;
	cv=none;
	b=JTrFYrKwlR5QaI+UqrULhVZvBeobG48ILL0CK9l7MSEzhR4oEbgReiPLBs02GazhHhxBjx
	G9jlWQC/nTV9TfJl3ypF174Ojv8zpFPZBKmNOoXIDt8ByKFnWZM7/E2iPjWrNCTKqv1v38
	7tHSwooFp3sqWbWz5foVeLv7jKfwWXU2ZxF38ONcytbJU8HfQNQruqVZPk/ZPKOwB/0ajH
	fHjLhGpXjbu3tF5xkvF04X8oTQ9poq7g6Jbz2srZ4b0C8FT0J0zjQGu7AoVZ4giQrQfwHW
	Syq/TNP7lHCcMGFuES7yhaUROk3qISl9depPEKR8uzyHLejp4srfkZLdj1rVPw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 76DA6FF89D;
	Mon, 02 Nov 2026 10:48:25 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH v3 00/12] efi: payload: allow passing arguments to UKIs
Message-Id: <179361290548.2644098.224958851316819081.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 10:48:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_014827_479303_4A5CC05C 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 26 Oct 2026 13:09:51 +0100, Ahmad Fatoum wrote: >
    UKIs look like a kernel image, but barebox doesn't detect them as one, >
   which has barebox treat them as it would treat e.g. an EFI shell: An [...]
    
 
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
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
X-Stat-Signature: 4i7mk8r5yhmetstxoys6ormc3rstds93
X-Rspamd-Queue-Id: EA8D7201690


On Mon, 26 Oct 2026 13:09:51 +0100, Ahmad Fatoum wrote:
> UKIs look like a kernel image, but barebox doesn't detect them as one,
> which has barebox treat them as it would treat e.g. an EFI shell: An
> executable it can start, but can't pass arguments to and that it assumes
> will return to it when it exits.
> 
> This doesn't hold of course as a UKI should never return execution to
> barebox.
> 
> [...]

Applied, thanks!

[01/12] efi: treat EFI zboot Linux images like other EFI-stubbed kernels
        https://git.pengutronix.de/cgit/barebox/commit/?id=e67ad7c31771 (link may not be stable)
[02/12] commands: devlookup: honour global.bootm.root_param for -k
        https://git.pengutronix.de/cgit/barebox/commit/?id=d4724374233e (link may not be stable)
[03/12] common: bootargs: don't leave linux_bootargs dangling after free
        (no commit info)
[04/12] common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS
        https://git.pengutronix.de/cgit/barebox/commit/?id=286e6c1d6a13 (link may not be stable)
[05/12] globalvar: skip empty variables in globalvar_get_match()
        https://git.pengutronix.de/cgit/barebox/commit/?id=62b4e20dda74 (link may not be stable)
[06/12] efi: payload: honour bootm dryrun in the EFI application handler
        https://git.pengutronix.de/cgit/barebox/commit/?id=4e99f46490a7 (link may not be stable)
[07/12] efi: payload: always shutdown barebox when booting
        https://git.pengutronix.de/cgit/barebox/commit/?id=be6b9f89f48d (link may not be stable)
[08/12] efi: payload: pass shell arguments as load options to executed images
        https://git.pengutronix.de/cgit/barebox/commit/?id=ede89fe2fa2a (link may not be stable)
[09/12] efi: add global.efi.bootargs for bootm'd EFI applications
        https://git.pengutronix.de/cgit/barebox/commit/?id=78328bc61cbd (link may not be stable)
[10/12] Documentation: efi: describe load options handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=30011672ed2d (link may not be stable)
[11/12] test: py: efiloader: check global.efi.bootargs reaches the kernel
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ac2685e7a1d (link may not be stable)
[12/12] boot: report exit status of failing boot scripts
        https://git.pengutronix.de/cgit/barebox/commit/?id=c6ca8f40798a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



