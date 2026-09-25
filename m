Delivery-date: Fri, 25 Sep 2026 11:08:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA1v2-0066eC-20
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 11:08:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6A521201A8D
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 11:08:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ANzr3y/i";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O9NhpHcV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790327316;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Xpz+MSFWb2WzkfqCljgE/DJn1esJThYIL95A4WRRCR4=;
	b=e5PcNu7egCwK8hWkb71l5pbe2L5CKNOBNlp4ZadVur+oh8BXb+kTa4vXAWy0/B+MNEdg5t
	vTQwG1VxRsaT/tNtnUrfwugO8yBYhtSurNIbaXlYT9k0KuYtP6mad/C+DqQkSiPJerEdR3
	18vWC6eMKzHOR6T3MzEuEKjAQ4rqHtoaP7mirPo0FkCgvNVeo32UbA4sAma2Dv9x0YhoPY
	HVKPd83kSb+/8PWfGmMXLcvLXQeYgwcNRVXC0cqtiZVfR/NEVytV/BPA8OuOfQIqbAGIJO
	Kj59FWu3xnxLSn9Vo44ksUwgnEYDiais1wNrWKa8UOJt+dYfDAPcJ3CGfNTeMA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790327316; a=rsa-sha256;
	cv=pass;
	b=PULOo476hYrgmVWZBrzvOP+3ttY+QyjcTZrxIYoFua2rwKJvyOUnQoX6/14gGRNMR48Ivu
	P2fmqhcRxe96qGN1pN/SCk+DizF3qvURE9C56jBQG0tyURhPqFYSibVBv6JQP27bevRhgW
	MDTGsEiKwfoIpMzujrHyjAqyVzuESVRhUQDS6NHIazBriGCco/wzhUpIWf07MATU5k7AHH
	coV5wvztvR0hHPHdWjiWIoNXc1p41tbM4OqE2KV2+Xv1GQXFiBbt/V9ejyTkHZXyAcGLq7
	MrXqr7xNt3IuKsNKfVs3i8gk5NF2Xy7WwZYIIjhJZTF3CwMPncrOMTKHduuEBQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ANzr3y/i";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O9NhpHcV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xpz+MSFWb2WzkfqCljgE/DJn1esJThYIL95A4WRRCR4=; b=ANzr3y/i6fUETDIcSeqaJYxjx1
	07KchKxypyBuYEonVbkv0dyo9mQSZ/5wTgMO22OQ+osB7Z0wRlsNiC1ZM2BrYbNrG3yvZAEoeb38p
	oA++zZ2MB9IT4usX0mqf7k/pLcV+Rno+PS8cUr5deo6lwkeM/B2xQPekJSngRychklIp7aXjxPEwH
	c1k3I8nIG5vzHxmyqEhAASUkbGbKn+oAInWLLHPjvkdSR6ERBFtDNnoKQDh80laPQXaUCSQne8CCn
	f4BtBef+ePpWyOgeJ9jVPMYfkSjwYXQ1oT1VKpy15peEjetJkBLHOs5sQufReVWoH28gpXcAKjRNt
	lS7+2rew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA1um-0000000CyXu-2hFh;
	Fri, 25 Sep 2026 09:08:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA1uk-0000000CyXM-1qak
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 09:08:19 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AC34B20084D;
	Fri, 25 Sep 2026 11:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790327296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xpz+MSFWb2WzkfqCljgE/DJn1esJThYIL95A4WRRCR4=;
	b=O9NhpHcVomZVMbrWwCix/ypHkD5X+H/0+8Aq3x+3Z4YFr/kcFVg7hwvR+y4eDBDC4l0cjG
	WGp/V7Gjaz3nV5Xbv7rM5mJVAXGudOkRJliWO7OdF3wa8ddem6NkTGebOpk42N9xN5pHLM
	BKHxshCDp0KjGxmvp85yYZw3zohGheDCTQUeuW9NpgvF9k3j2vhf5aaHO3jCMMMrP2djxX
	qhSpRxDWeqIXZ1WjTwdIpm0rmGPfxZ5G5XJdaV9ILHekdFaPGwrglYBOPVmmPOB7iv4qT4
	vKNZl7zayVFAmPZm+Igpq0sMhqQfCI7+1dlpClg3duepl82pePLW8COs3bJysA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790327296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xpz+MSFWb2WzkfqCljgE/DJn1esJThYIL95A4WRRCR4=;
	b=IcMtiSul6vC/VCi/w2H7M80UOEuGWxIgYnlQdh3H6XoEldi5hKx1Mqix0gALzo42vwIBEn
	13yG+MU68cl9KN5WbEP83Mbjm+mCTJ5Bw9TDDdDsKGzehvPkal8ZcJCTxd38o4qFWyrhFv
	r9VZ0Ar+e6zWaNEl1bYvwF8jgqNICtenPoEwI3PC9ILkMZE8Fnuj4MScCur7nNMLeafkO1
	KmWklbFjanrGegugUUpOyCANYoHm/1JkbiaBfXTBvIuV6+Cq8uQ3W674mNtznSLOvfzXf/
	8M9QQ0CU6gN/GN3OQfQvmmWkQQNLVznOEMPT1Hb0eHUFaop+PoYnErxb6nP7JA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790327296; a=rsa-sha256;
	cv=none;
	b=GrqUYbaS0Hkvq5wLmhHbXdkORUIxkB0deHh6rRnGST0VNSShqpfZjytLhjDn8qAUS/gYDR
	uVAQf6PwEN1VM1SW/se1FLsSPf8zCVQVe6llkrtoVkz2KYoFo/p3kKSkdkq/FUXwS6pab4
	BcKEZThy8jsGs2Tap5D5GQv21s4zofwwzTDfrFyr3SGD7dqZdBZLGCjGwDg6RHltNO3VH0
	iw498AOSkhraDLOjplDBPUWdw8XQ6eIMjPa7jSYycYyWiJqZTZ3TKawQF8rdtTeR7yaSgM
	XZSJX6k2IzjzcmgB7M9/R5ZnSW+X4QqPDC8Rr2v7nitG8HRV+KgFMgj8rmXHKw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 9CC92FF868;
	Fri, 25 Sep 2026 11:08:16 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20260925081337.880619-1-u.oelmann@pengutronix.de>
References: <20260925081337.880619-1-u.oelmann@pengutronix.de>
Subject: Re: [PATCH] include: ocotp.h: add missing include
Message-Id: <179032729663.822380.10736245129081096560.b4-ty@pengutronix.de>
Date: Fri, 25 Sep 2026 11:08:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_020818_665294_4719B105 
X-CRM114-Status: UNSURE (   4.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 25 Sep 2026 10:13:37 +0200, Ulrich Ölmann wrote:
    > Otherwise GCC complains: > > <PATH>/barebox-2026.09.0/include/mach/imx/ocotp.h:23:33:
    error: implicit declaration of function 'GENMASK' [-W [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.94%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6A521201A8D
X-Stat-Signature: oqzkprh1cw664uhho1a7nfmxag15kjg5


On Fri, 25 Sep 2026 10:13:37 +0200, Ulrich Ölmann wrote:
> Otherwise GCC complains:
> 
>   <PATH>/barebox-2026.09.0/include/mach/imx/ocotp.h:23:33: error: implicit declaration of function 'GENMASK' [-Werror=implicit-function-declaration]
>      23 | #define OCOTP_WORD_MASK         GENMASK( 7,  0)
>         |                                 ^~~~~~~
> 
> 
> [...]

Applied, thanks!

[1/1] include: ocotp.h: add missing include
      https://git.pengutronix.de/cgit/barebox/commit/?id=df89e37bc2e5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



