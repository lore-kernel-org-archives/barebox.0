Delivery-date: Fri, 02 Oct 2026 07:58:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCWHm-008jQr-2t
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 07:58:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 45F33201F04
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 07:58:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZAaMqF5b;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fB8ekwnP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790920702; a=rsa-sha256;
	cv=pass;
	b=ag2l886MHEbInIMG743jypkswZ3zozsuCO4t3OZNvvMQXQ96YxXh+13+MsjOMvHAWEJgpT
	WJQ85N2CGim+tNJPnG+dTjYo1yF4U7s+IIaXPD09blr5qi0dUNQi12qOFCkuxGQ+895gTo
	k+bmBuovN7gz8jw71LDtUsr3GIgB7tFNueDuK/ntaYfrhZ2yR1QAjWrqdBMwoANgpeC9bC
	Dgj5XbuSYeoxEPlr57G0EXDFNT4mCdTR5c6td2fyZA58m4CatnKwy5xkaCdABQtly8ONFh
	sMkyut4LgZnTe4zrSu4YAv1xvx4Yz3dnHFfqA6p7H/sU1st8PH9CQ3KVooDIog==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZAaMqF5b;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fB8ekwnP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920702;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=o+G2mx3i3VXoiPWPTqi8VIGjwvcGrfneZqi17j3nMF4=;
	b=gdwMVaq5Fl5fV++1hOz6bn/qgnKdwTQkDNTKGhr/pqP2+Gag4kQif6fr3gpPAis/OQ1Juz
	n+yBdTryHfHnM1naqdf9BuVyciVxJJH6/oUBr6bi5zQmQKuyyX7114YFAKyB+GFI+zn8u8
	fI78LtrN30yBZyv6T7Etcfdy1bsg3e9RHXX5hFTCT7EArDrEMyNxe89FcRXoeA0O4Ey10c
	jUnCD/YDGjqn0e9gmTvgNnOI56mB8ytXqf9Jdi9yhFzD+LujPOYKW2lmCwBkrLvPm5u6oY
	EqzwzSdEjf3lUMkNPdm9kYLvXSX8CRc9o9DDU7Gq/x5a6v3qIRByjFukKnZdDw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+G2mx3i3VXoiPWPTqi8VIGjwvcGrfneZqi17j3nMF4=; b=ZAaMqF5blSdfAWzvixdVCYy4h4
	vHlYGFSic6QLacgTgdApLTLuY2wm2EfPFFc7Pnddfa/ts73Nc0bmBki5tS32kVT+f1zYkyn5idV6G
	vPPqtySbtcVwnYRtFdEkcbBTX6ulhA7KEsvOAP6ImOMLl2HLlqW/lEHqMzXQvUt3iLNzZeQYN81+t
	vGIE+9bsdqc/iqYDN3DZzxu7xfbkXxFE4Nma9P9KeJkFgZh8cux04fvnbB93RPihvOFJtFYtsoUaW
	xoWXNnXbZkLselH4JBFsCFvmWvyz34SQ8s20q7kVng/kBn3eGMqARZg7mX18HfdEJaMiaOf/Aposa
	o95nprAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCWGj-0000000Ag2t-3x6r;
	Fri, 02 Oct 2026 05:57:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCWGi-0000000Ag2X-06zS
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 05:57:17 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 63156201547;
	Fri, 02 Oct 2026 07:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o+G2mx3i3VXoiPWPTqi8VIGjwvcGrfneZqi17j3nMF4=;
	b=fB8ekwnPl8fHg/6EsCSuEgqyGA6cjxnhPv/JIpU2mnQD+Sn4u9NklL7M/h995URvlrBjbS
	o/Gy0GPpZuEsKdogFolf+GEDSHmB5+ur+uADfnlXj1bD2ZUURmexbDmLFI/+6ShwJyzF0I
	u4jfZ90k/PWXLq4NtcztEA5LMbxSBPklvIc+SXqfDeYEI9YxDEfb3U948ktNz9QqJLsAKC
	eW0Onidj/3RHoPvq7ZpMXt+KYTnQMAvytqXR0L/SkRq3mcJCgGo1dx8PyAusXRXkiMcfGA
	lGYi4flPTM7e511bj7J3dkLYxtUYu6NpEfFlFacrUM6HZmKatIN+lPcdp9UDLw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790920634; a=rsa-sha256;
	cv=none;
	b=f0XBN4RB8tjLEd/oFOts0rI/Uka+q4OXW9BvhVL2erz5MfxNeU8LRTbLQ7z6tDXnzw+hBh
	Z4agguStDFzOqsqR2zSAsmmkMc+wIa6do1EM/e8W9d4t1xTZujELdyxOKHDNb2XSTDYPtw
	eV+Y5ZBjA3rUptEo7MImz2Y1L/JroO7zsserVInRGu+Uc7gD1d8rFXazC0LN15jN7gNtid
	msWx57PbOYcKriS718zPY5dcnL65l9rbiu/PnoEswaqDLkd3yY5DNjzbcMWdktXbucWQuG
	sFDGCh5l2vkc60UUrTaHxWX2INJ+ipAI5yUelJUt5gfqZ8OuyKo8m2MechpZVw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o+G2mx3i3VXoiPWPTqi8VIGjwvcGrfneZqi17j3nMF4=;
	b=coTBA3vwljLt68GYhUSfAGQxKR9HPgfOqd9JRbqn2IW8eYVP6uV3a/IuX+4yKKtuk3VLej
	idcQ4dwWaNn/xr4xrrXtjLNi5HRE6cynHcIDyynpcX2+viYLfaLg6ebzB2yAPhz/1xvHU4
	WPc7RQB/s8+nlQuGx6OAv5MYTMmNc3xcXQ8HucOXHYohZ/lIxgbihnptWFT0ZUZbcj6Jx9
	TidzW6Ae+2cYhELXJGJbbHrlvJqKDtoOGwsdgPxqBF8JhZfU33uu5/4w5ayhqQ/95dpRhY
	Ss2Oz5OtVvBvqb0ZSJ4h0NuuRsSl30xO3+ng89UnIHiRwsMVSa8t9ueIJGGYqg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 5370EFF876;
	Fri, 02 Oct 2026 07:57:14 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Tobias Waldekranz <tobias@waldekranz.com>
In-Reply-To: <20260925105510.1431927-1-tobias@waldekranz.com>
References: <20260925105510.1431927-1-tobias@waldekranz.com>
Subject: Re: [PATCH v2 next 0/5] dm: lvm: Initial Logical Volume Management
 support
Message-Id: <179092063433.3100211.18305048568604878122.b4-ty@pengutronix.de>
Date: Fri, 02 Oct 2026 07:57:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_225716_233469_A9ADF507 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 25 Sep 2026 10:54:22 +0000, Tobias Waldekranz wrote:
    > This series adds basic support for accessing LVM logical volumes. > > Example
    session: > > wkz@spa:~/src/github.com/barebox/barebox$ ./b [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 45F33201F04
X-Stat-Signature: czxjcddi4s9acxpmdbcq87kzfzryx48h


On Fri, 25 Sep 2026 10:54:22 +0000, Tobias Waldekranz wrote:
> This series adds basic support for accessing LVM logical volumes.
> 
> Example session:
> 
>     wkz@spa:~/src/github.com/barebox/barebox$ ./barebox -i disk0=infix-x86_64.disk,blkdev
>     [...]
>     barebox@Sandbox:/ lvm info
>     VG "internal":
>       UUID:    sN8htx-oD18-wHWH-SuCU-1EWy-th1l-5WPU6j
>       SeqNum:  1
>       Size:    132 MiB (1 MiB extents)
>       #PV:     1
>       #LV:     1
>       PV disk0.2:
>         UUID:  6VHjVF-WVt7-Gk4Y-oTrK-lsgY-ve7N-GJ0CUn
>         Size:  134 MiB
>       LV "infix-x86_64.raw":
>         UUID:  Xp76Ig-9XXj-aBfK-Xv2U-rbsY-nEWX-omt4Bo
>         Type:  linear
>         Size:  132 MiB
>     barebox@Sandbox:/ lvm activate internal infix-x86_64.raw
>     [GPT warnings...]
>     Created internal-infix-x86_64.raw
>     barebox@Sandbox:/ ls /mnt/internal-infix-x86_64.raw.0/
>     mounted /dev/internal-infix-x86_64.raw.0 on /mnt/internal-infix-x86_64.raw.0
>     bin       boot      cfg       config    dev       etc       home
>     lib       lib64     loader    log       media     mnt       opt
>     proc      root      run       sbin      srv       sys       tmp
>     usr       var
>     barebox@Sandbox:/
> 
> [...]

Applied, thanks!

[1/5] dm: lvm: Initial Logical Volume Management support
      https://git.pengutronix.de/cgit/barebox/commit/?id=22c2baac6396 (link may not be stable)
[2/5] dm: lvm: Add fuzz testers for metadata parser and binary headers
      https://git.pengutronix.de/cgit/barebox/commit/?id=fad8dbd73014 (link may not be stable)
[3/5] test: self: lvm: Add tests for metadata parser and binary headers
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a7b015fd6b4 (link may not be stable)
[4/5] commands: lvm: inspect VGs, activate LVs
      https://git.pengutronix.de/cgit/barebox/commit/?id=0aebdf94bcfc (link may not be stable)
[5/5] test: py: lvm: Add basic LV activation test
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf82822866f5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



