Delivery-date: Wed, 23 Sep 2026 08:11:57 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GCz-005KTp-0I
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:11:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E3359201FDF
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:11:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WmP85iRp;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=hBkfhRtn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143916;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bcpND1wv8FHyOkBQj20XxIsM1hWACqiyGK6AXudYHwI=;
	b=Zzt5AABB+c+u/LzwrVqxKfIKjzT9Acz8RrqQTyNWSM//nabFHXTzeTWl8Q4L8KxVB23Hu5
	7J743WhJiK+ooFYc5JTQTnyE23SQc5YoPo5QBkJfVThQEo83Bo+tc0We5t39VdVcT1nEka
	LNtncIFfJAbw5PMl6lfVblVsR+TgskQ4EpeQNypylDJZsE2gfI6XTVCb1Bi9by8pyUbsfg
	0LjxRRWOCAkss1oxfOIh/LDmUDb9YigPG7M6q51TH3uhX8sYOLczvttHp1dPLoIVbVKiDh
	fkvhcHpOl4NqwR1mqXBSfeXbfl6nEObdpvLZknkd29h7buMIVAbLB7TEMugSsw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790143916; a=rsa-sha256;
	cv=pass;
	b=Z7S4PeXLkfnLiyOkU8Zuu5esmz98Dmj8wD/E4gNV3BRqC71GYOa5yPemEgE3PKQgUb9bmV
	Rji73CAeFzjPQ9YN508rR/nxfn4yViQBH9hYwUnMbD06cD/5AauJeFNtAYavuWbKZ8S3eI
	S0Wk8m9FtHx+Dc9L4CNG2mI4Kevm4nh5pVCELVNkJa1x20uEzOXrP2X3JS40/yF/IrSuep
	huHkgU4gKDQu9JMJK08wC4Uoy0vq4uBw9ZBA+ugQjwP4FwRI0uADXBSXBqvqk8MqDsaQue
	PfdZWBE/QGsJwixDxx9p/FsSkrfgT9vT/TjwCQb0ilP4/i0a02hrQa0gFsCymA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WmP85iRp;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=hBkfhRtn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bcpND1wv8FHyOkBQj20XxIsM1hWACqiyGK6AXudYHwI=; b=WmP85iRpUCz+nSAZXOF9+Gp7Hy
	Ar9uF3apmPZ2c139018Lv4Vy+rqIUxLVza2h1vNSlH6il1bEBQc77nXUcA+hlBSOQgQtstqt89y/p
	uotCxF4/Sz0hmcabVi/5BUBwrjPFCZSCDA2ywJSgKcnrFrXK3lsc1MWlGfjgRAEY7b05odUFzr9dr
	CAlVbMCzYPY1A/HLyt/iSd82DvR9GY/zkKn0XX9TLzf0fb5v9GlCXX4hOLQJjvOKeRBjnTCeKWvn2
	Q90soXrVADLvYD5YcmhtBm/rcX3IYR2Ro5qGQow9AcV7TMHoHxGasRwBGgXHOPDiziOdpOUHSzoNC
	Ih8fNM/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GC0-00000007FHA-324m;
	Wed, 23 Sep 2026 06:10:56 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GBx-00000007FG4-3mHw
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:10:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 566AC201A8D;
	Wed, 23 Sep 2026 08:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bcpND1wv8FHyOkBQj20XxIsM1hWACqiyGK6AXudYHwI=;
	b=hBkfhRtnT+81aI8DdwAkxJ5E12JST2CYB+tKQWWii4Kkwv70TjDLrb4nOslWe5cISD7efx
	IXAoi0zngqMbpA6+RrAVz5Hgy+OQu9ZqR6uwr5Jc3KkRznfMyPy40PNF9mIGdtV6mI9hZL
	vcaYrWDWwyLNyHgJd9t8VHpfWc1r6SVatzGpchRPY4L00nvSmocwpc1BJtLeZDoConvHng
	kX69qBurGeq59TvqnV10aoryeUGgmp8fIWxbH7wI8JRJNvCkpJyb55Idf75r2XUCPmSf+1
	dbmMtz6NjnhTVPOZCMsrU240dY9MIE+9TdSvFf3/0/CuatHv3hndTP1pjntEHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bcpND1wv8FHyOkBQj20XxIsM1hWACqiyGK6AXudYHwI=;
	b=aH/FG1DLgglEoOHnixHSNtlOHIXE+pbX/ONaxUOsEAL+VtrQcszarYz3LCoLfGCzckNCyy
	rvSkwGDDFY6kYGPA+XfrijuC4wDdmZZQTKRlV4TR3cibIvybkUBJf4CD6JUZYdUscYALdg
	LZnxLtBnOdO7do6XXy7fgjV3EKPLsCymGiqRSSxxf8fzHtCWIX4pugvUJnKldzbq93HQ+k
	mPohNzLn+wYMwsnlFCjpQRB0f7wvzBrr1byKH52fjcY7FUqMr8EcUBqraR5sqXJRWp6yvx
	/kNGLNMtPl4jOoPJrfunxT3yJTrs1YcT/ZfvSiZ5/76TgtTd02x+C0iqiLuDDw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790143852; a=rsa-sha256;
	cv=none;
	b=UaBhVWFsJfLCPKtoP45GEFdEB4J0cwxDmFPTeQvIH/DhUSTfOVJEvtf6sEuTykTeI3BXWp
	6JINea15/cFVT5iAuVKTjq9uj2RNE3N7JObL3oJZRFRld4XFYTqGz1sbI2apG8378HmkA5
	04RMzqociGsl1EVI6zW6PejTBF07yNkdQnOttFzm1gqwtGq2GZdYrb4sLx6goSYEe2KhS6
	BRjKsF64RJxYjEKb5fdJHVdu33zLif+i5TE+TcxTAnibUSBO243nyMsEw4b9B7AsDRhX7K
	FuZ0mbJh2WchX9B3L4qnUbj9NcOJM8yGHWOEdOgNqbqO3CAnxJSqvgiegh5jDA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GBw-002M4c-0s;
	Wed, 23 Sep 2026 08:10:52 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GBw-0000000BogF-0qUw;
	Wed, 23 Sep 2026 08:10:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260921154146.806096-1-a.fatoum@pengutronix.de>
References: <20260921154146.806096-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] mtd: spi-nor: add GigaDevice GD25LQ128D
Message-Id: <179014385219.2816380.11549982525787528564.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:10:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_231054_095884_01BA9EE7 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 21 Sep 2026 17:41:45 +0200, Ahmad Fatoum wrote: >
    This 16 MiB GigaDevice part found on the Libre Computer > AML-A311D-CC Alta.
    Copy over the description from Linux. > > Applied, thanks! [1/1] mtd: spi-nor:
    add GigaDevice GD25LQ128D https://git.pengutronix.de/cgit/barebox/commit/?id=bd2a02379af1
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E3359201FDF
X-Stat-Signature: 6erhwzr8bbzcjw9iqyep8zjk4wsamh1t


On Mon, 21 Sep 2026 17:41:45 +0200, Ahmad Fatoum wrote:
> This 16 MiB GigaDevice part found on the Libre Computer
> AML-A311D-CC Alta. Copy over the description from Linux.
> 
> 

Applied, thanks!

[1/1] mtd: spi-nor: add GigaDevice GD25LQ128D
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd2a02379af1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



