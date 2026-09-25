Delivery-date: Fri, 25 Sep 2026 09:55:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA0mc-0065RB-1I
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 09:55:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 29E55202012
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 09:55:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LTaD6XXf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ByvkxFNx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790322950;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ZjzRi1RlqbPQee/fp5A2UzZcDcfydrMah27Ot+Xm9y8=;
	b=XWxlKX3yJK6ZrBJVMoMWe64dIszXS/IYd/SmitbtClW2nEf8ayslBbZ8Ciwm6pVyra1n/l
	XOSxnKq0+v18BcuH3O2Mc1Ded0N7UOwnaitqzMOBN006gVRfIgNJJ1jG+wZk1gCAt+NbI0
	MWKWou5D8P0ySBJ9lGXsk6TF1Yg9SomdvEDs17XDtjzYNbngU0vURLsWXsuXkZXOtXhpr4
	wECqIJTsxyMFN1XhwQcl50JiJ0AdyUPYkNE/9JW/1eTNSG8dMk8irec7N+pS4LnOaMcZ3i
	8cFk95dzblH23X2GKoqzDUsjmHtSiu8UcpihJxwIVULNrCTc/2xUCMgYp3xkHQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790322950; a=rsa-sha256;
	cv=pass;
	b=g3zIVX4YG8OEPmmMAsJo39Xg4kk+UnH7m8/tidbnYzRR1s+c1kRCHV64F/ahHhHLlPqD+f
	UsNNwQpg5MIE2wdQQaSUu87bE6jIGDrCnRt9gJcmt+keYWevUyZcv/clSg7rFSDImo+9Rj
	Y587Y1AOL+ap+PaoERTHQyZlEGaCKWWEFEbPAEjdlZvkV9sEtFOwKOUYZo76uFa3JYRaTY
	5X7UKZdoHLW37LEBIxfQ1qCaSptzh1MAEb5Mflnm1QAq7LTBoVZZK/HOU7yqT7zPN9Mkne
	Oiy5jGG32H5zZz0nA09AxC+s53GiDricz3j/5I/hO3fNtQRBNz3pmIYVWHn/Lw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LTaD6XXf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ByvkxFNx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZjzRi1RlqbPQee/fp5A2UzZcDcfydrMah27Ot+Xm9y8=; b=LTaD6XXf6FGzGERr52UdZTCnam
	duOKF6ZcIwIQpITlq24L5xIAUwayozhEWbT+mrukLZvJ6ZeeRmJ4IclgFX0L72jMQvSv8FqtZdkSj
	kDzYbcwRx9oUFBW0fnb7Bo7wNr2apGZkoOTxg4DxDJcC7sb1AwCxgEjr22Fbf2naVkVvwFSXcHBpp
	r6oviDqNNhnv20AndQt1Ego61llo+VoBYRjmjOekGhApZ7o/I4n9NLU5ctq92vVqAQcFhP1nIP5fi
	d4B+3NVYh7wtChTuV80/ZJfHgGNyeJH/xcOHNAmq7tS4mojKBw86PG619LoeCzUTXTJmOI/lZK0Bg
	cUcBbOFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0l5-0000000Crva-3n62;
	Fri, 25 Sep 2026 07:54:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0l2-0000000CrvD-2BIJ
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 07:54:14 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7CEC220026F;
	Fri, 25 Sep 2026 09:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790322848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZjzRi1RlqbPQee/fp5A2UzZcDcfydrMah27Ot+Xm9y8=;
	b=ByvkxFNx6IX1N4pzLYgH6npsfCRKlH9SQyZeE/Y3vqOr2i0/N+8g2Glg9uQ4qIL/ihoxGv
	LKM6Zy+6j5w3OlFz6PDR/X/ncQ4S2/9JPWDQCAjf85RfAF3f0EQygVeVK78sms1NYfX/x1
	EMGNOaJNUton9Yojk2bKn3MyqFGN6zDY7iU+Lydyl60ccxxlBZEpfrXDKT4XYbnf2Q7ww3
	3YA3ooJnwCwGGfDLFJLwNhM+6v9N1Pa/CcZmiojfs5jNsUwoypHizbr1BQbDCXSrN3DHPz
	cz9JciGUEHobMUUvSgKUDyaUQzLpJsNk+MX8G++lVGPkV3qFc1Wi7jkZ4CSKZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790322848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZjzRi1RlqbPQee/fp5A2UzZcDcfydrMah27Ot+Xm9y8=;
	b=Q1ZD+lKS/OnxPcNXuWhAswaGvwghcWER3pA3VCVePxNRQpIHWKrqM8KRGtXS0EsfZTSoEb
	VuPWvuznr+Ij6enwXy7MxHxd+6kpQaqQqaUaHVoZt/aDfl9jWdiBAFG4uHWzzQpzbvTnnc
	zCsgoJpMosux0eoLkn2LfMtr2U539eLIWWL8sb6dV3HyHMHC9YJwcZTcwEB9blfDWFpBTa
	nIQV6MAKMfO7KHDNQnDPBO3w+1i4ow7Q6CP7TH7t3am0US/Jjdbz4zA0g3OLYfg1POsKfP
	Tzp1juORm7cGuCKwetZ8X9niwpAfq3qD5UrWlXt+XZUHOqlOCAxTQu3naNhJtA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790322848; a=rsa-sha256;
	cv=none;
	b=E6DIzrcX9okMsFd5DVNmcYudjhm/bonLNNz3c+251xrKCr+GkRJjmlQk/1oopPYIiubD+K
	5ehoLxVfLp8aPBSlAMzfvcLdaan954/gnNDN2bwysDGZgD3elragsALJURJi3MeCMMhawa
	BoV+ZYec6NpDcHvuR34VAKCFejTS7cLSK3UmLuZp3MlPIu/ypFVUcRSBzmA6ucEJo82la7
	IC2oIWgnL/9igRf8Z3evMp9ELE30BDCnGF5CNXFJBnnQhT7hwg8ws5D2NYxOK6CDiRDUVv
	qDoMhqEn32zh4QWEc0OxeESbjidrmXXcHTQqNEV20/2o9j1r4q5fmyO7MYMr5g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 7176FFF9AF;
	Fri, 25 Sep 2026 09:54:08 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>
In-Reply-To: <20260924-fix-typo-v1-1-9b042a419288@bootlin.com>
References: <20260924-fix-typo-v1-1-9b042a419288@bootlin.com>
Subject: Re: [PATCH] test: fix typo in labgrid message
Message-Id: <179032284844.809758.1535923379204990259.b4-ty@pengutronix.de>
Date: Fri, 25 Sep 2026 09:54:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_005412_716062_DB0C2DB9 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 24 Sep 2026 16:51:01 +0200, Thomas Bonnefille wrote:
    > Fix typo in the word directory which was written diectory. > > Applied,
    thanks! [1/1] test: fix typo in labgrid message https://git.pengutronix.de/cgit/barebox/commit/?id=1bf258a234fe
    (link may not be stable) 
 
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
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.96%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 29E55202012
X-Stat-Signature: huh7iowj8mtfhs1wriyzhbgfwefsutoh


On Thu, 24 Sep 2026 16:51:01 +0200, Thomas Bonnefille wrote:
> Fix typo in the word directory which was written diectory.
> 
> 

Applied, thanks!

[1/1] test: fix typo in labgrid message
      https://git.pengutronix.de/cgit/barebox/commit/?id=1bf258a234fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



