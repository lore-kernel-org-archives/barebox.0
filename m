Delivery-date: Thu, 15 Oct 2026 13:42:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJqW-00Du7E-18
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:42:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EB1362027CF
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:42:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mP2aji1W;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AKXkJ+G8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792064523; a=rsa-sha256;
	cv=pass;
	b=ae8GPEDYbCVAPnxG9kGQdVluOf+KwTlxusIvd3oZvX88bKvkUe5r9c3w1m9I7ZNDaUx7Vd
	yqdS18pOIpb5CF5bmrw4wNRI12xAiHU+w5HhU6SdDSHPwFR5dvHYS6xYZMZ83Tylp4za99
	5KkuHAz/+hpXXDsEXRHl+/hWz2YiT0Vg3I49cM7GrI3Rvg9YxZv4OFZDk31EUaElrEE3OO
	o68ionQZVfnFqewNCbtE341PTzeS3Rv3j80x6G2J/c9w0xaLgs4n/teHY1te7PkhVDSGrk
	FVBH0HWVEVFNkSS77wNl6CzDRtT65UHtcMa1SmglJxw0eI14dqiwPPqu6hIpXg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mP2aji1W;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AKXkJ+G8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064523;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=hs31rfRWTzi8+zBwGnWvlKBMYZSQRLVtBkG5p0Kj9Ss=;
	b=S0aQApqIYCTrJeAaQYh+NLrgrCSLhnJk8bmt+XaQprg8HKfzz0EKgh0JWk2gd1pfZl+uwc
	4DCBllI/ykVRBqTtkHOGEQU2CSXvlHWcO46Wcy0KP1CVHU5+J6j6wLBAa2dVNpuJ5Mcx5J
	zvmdg7HYV/dt2y8/6JQmi+Sv6tuDHJj9ITCEaKVJiwaiUjCddX7NGoqcXpU96kJqK6PrK0
	gYj4A4UAjmnAtPxoX2CNOrlJJNe6yOFLzCRGmpOWVfISLGTYInCnh2Kgo8wiE2Tj57YPlV
	fi0EEPzkhBuH7tkQS1mLZOz8dpbAUyP1l+anfYYrTRodO1OHFgyw8uyb4Jf/Tw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hs31rfRWTzi8+zBwGnWvlKBMYZSQRLVtBkG5p0Kj9Ss=; b=mP2aji1Wimt3Gac8aIgn0aZaGt
	duY0zbRNueCztNJBUM68TGhKtlQQ+rULU2d1eYwFgDnfaSm8aUCjHgQAKACaONoNL0ovDuk0ZWEC/
	kuA4Q+FKK5kERKL0oc6/FXKtowulQ4MzGtasyOsip8G6MDUMpcjjmn8mVA5mqAqSEMJY9kUycn+Xr
	fg8Qn0wOP6J7w5zMVwmpzQ473OYw1Qd9a6ZXk3LnRkeX+y3xG1iNdbifxh15bh/tmD4btFBSbMBdi
	M0/Md8nVmipOUuCqfDCLyt8gxM7Jf/uWRr7/5bT/Lb70uMXbfV3hzv98RvaFKZcljE1CYNlSjs7/H
	gz++g2TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJpO-000000000CG-0dpa;
	Thu, 15 Oct 2026 11:40:54 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJpK-000000000AF-25Md
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:40:52 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D199A2004B4;
	Thu, 15 Oct 2026 13:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hs31rfRWTzi8+zBwGnWvlKBMYZSQRLVtBkG5p0Kj9Ss=;
	b=AKXkJ+G8Ipu4NO7CSQmurmQQ3wvLcI+R8qiPWAWLIj4i9Cld9kbVqjD72wxV100cLXbToz
	ZYqVTQG+4PCGie8Aa4lP5o7lE891mrECp3+aqqOrmr5JrwVBf1ODStVJCUtIVvrM0hGI/J
	YntiynKqNwxrtRVcRZDYzHnTgU9e+++LQA2JC6dfuu45kv7+GUFcfK3c3sJl1K8MV6wiK3
	KY4ReTk5vqFrdTnQ2EhAzLcZJzc3dAb53xXk9u96XsVbjh+zM9k2c6L2oCLkNC92iXHYp2
	IgoR+5x6mQ61Sr8YxLRMfu7YDhiqvbWX6gZDXtZFXp4xrSgvdbfsqe8YMb8Trw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792064448; a=rsa-sha256;
	cv=none;
	b=PMbh8kSTEcEtC0KO/PDiss4Pg98aLuuxwSZ7ncRPlQSLR3Ke/6RD/eDoEn1VUi2uQPiocz
	6r3bH29lXUcUBICqfjEHRp+0mgRGL3btbUZgTEFQyRUr9oCl+GvVN2uzvcOTCyZdpEljiN
	bIpTw5aD0cNrYfM2bw9ydHJKBhZqxlv9bTULIGkbft6qSlue660KqCuIOFsW2NyeFi8PMq
	0mdqE3HaK+PQAxUXGCXRXfR6UbM498o1IYY0+J+ErKjgcOnZxOI71V2Cq9gNKcSuLHOMVH
	6QYKqDs8qQtnPQdOf4HFM9ig3XOeLs3wdQDzbmlGh1OAPcL8GnMBDY8cOKdoGQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hs31rfRWTzi8+zBwGnWvlKBMYZSQRLVtBkG5p0Kj9Ss=;
	b=AyWciSE2pYlylaxa4GEEYPqBiOFcDcamLT583w1+Y0aDLYXUyLcI3KoKn0Tc1GSXL6/JZ/
	EJKzHKUhRZFk/oZWUtFOajjZ+WdFCjDvDgYdn5Gz87xo90Q/NlHg+O2Nk6541JWEizXn2F
	nXkJU4wsu51Cu8eL75WaxJgfNeLHSHjq27pF7u/GbQHhmsHZFrLgfnbVE74sKwihZhjQ47
	99xEt1gTjGG6mhKydAaAqPYWFM+r7/i0pJVa/RzFw0zXEQUsuvlB71pGtSA3Gup3VIZP9m
	JFi5H1elk8WE0/00aZHJ4uushmS0Xu3ZWnlpCVPsBPDVUJ73ePnPBlcPNMqzsQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id B8CBAFF88D;
	Thu, 15 Oct 2026 13:40:48 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
References: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/2] Documentation: migration-guides: add
 heading for v2026.09.0
Message-Id: <179206444874.154876.10824558513819619681.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 13:40:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_044050_692719_B0342339 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 13:03:30 +0200, Ahmad Fatoum wrote: >
    Otherwise each entry is shown at the same level as the other releases. >
   > Applied, thanks! [1/2] Documentation: migration-guides: add heading for
   v2026.09.0 https://git.pengutronix.de/cgit/barebox/commit/?id=8ba0d28dcd92
    (link may not be stable) [2/2] Documentation: migration-guides: turn m [...]
    
 
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: EB1362027CF
X-Stat-Signature: qiddw5sr753dtkkh4qdjdgfgzd4xbcgr


On Thu, 15 Oct 2026 13:03:30 +0200, Ahmad Fatoum wrote:
> Otherwise each entry is shown at the same level as the other releases.
> 
> 

Applied, thanks!

[1/2] Documentation: migration-guides: add heading for v2026.09.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ba0d28dcd92 (link may not be stable)
[2/2] Documentation: migration-guides: turn migration-master into directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2af2723dbec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



