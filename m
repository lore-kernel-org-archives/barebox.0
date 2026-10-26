Delivery-date: Mon, 26 Oct 2026 08:58:51 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLFbW-003Qj3-1v
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 08:58:51 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CBAC3200BB9
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 08:58:50 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=B65qB0Ec;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=S7kV+Eh8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793001530; a=rsa-sha256;
	cv=pass;
	b=YYrKHYgItb/xvZ9urZ9MmwkiGuwvHujXKJF+xTxXUtyodpUNfVfYM5v3lKrzsW/r1Cngeu
	737KtsTVAwtuvnGQhP9LfOgfQpXuXogz9dBGxJGrpPSnC34fm6cN782RZG6W42rvVBEJgj
	a3GPHsPwRqQLygZXYkmxlPwjXj/jNd8LWnm6cOB1qwnjnss3BVVOkxB5QiDNMuoucnPn3F
	4cOzhQ5RBt6TtLTZ0Rd7cbwLnLv6un4sf90Vi7hGI5SBgMfDe8Vk2ykmGWMtN2p9Rgxfjm
	Ax5706/m26x7fVlRz4XXeM16Zm9+jlGp2pOavdeul7xcZqoTkcZuZcRsUtdsEg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=B65qB0Ec;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=S7kV+Eh8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793001530;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Fi+5lwKXW/zgYnkDL9191tdXVcHHnbNS3rAnsj61t4E=;
	b=PCqlTIZtNVRnNuu+lc1Y1FKsoHe+zoohXWhO6GiQkTleKGj3SQD6enQgyeERSOj+DjxcwN
	MIHkQRlvHb9j+HvI8757I+NtIzeB8Wd5SGXSYZET1BJj1jiQe4/eDpy+qsuDaZWB7cxcPR
	xowwciwV70KXZlYWbbd4dK6iZ45fFXDlgGjmUaI2RuLv4iNE/qfMuP+3nE7l3jeSA1EJL3
	eLirhDb1qzV+kfGLKe2VFgF90XdpUYBTAm4bFTr74kI6WpQeQX5JyFeDLUh/6XJI+Hi1qB
	137rr8TAPzg66IkSRykEucTt6+lkPdoI3oJ0gxLsVTAvInPyxXfNPWxTWMjDWw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Fi+5lwKXW/zgYnkDL9191tdXVcHHnbNS3rAnsj61t4E=; b=B65qB0EcZ5Z6at
	NqVtFCaoaLRbysWA4MZxU9ciu4fb5jbpS9SJduG95BqgUXED2nSb0+OaXgk2PgG4idr6JYjh3pTZm
	5j1uoi5Z5fwm2L5dl6lKdQ6wBdSxia+SUoh87oMfjz7uDbja+f/nsh9dc75qb4OhD5tlTrc8L2QwY
	X98NxzCgexapJyR72euF6HzR/FBbNWxNghrzjvSHqY7M3zXfkfqjvWUoFFSIZZW1JYK6MUv8DCjf7
	HeqgfuTcvDV1/916FbQC5aQgq/BNT6oCLVaD30ApaYpMS5zte93MJs3Upifno/eA2UwYcYx6FDHji
	EsUaWy0IQY1TOS/CFNyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFaH-00000001uVS-21wx;
	Mon, 26 Oct 2026 07:57:33 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLFaE-00000001uTh-0BEd
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 07:57:32 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B99312008E4;
	Mon, 26 Oct 2026 08:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793001445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fi+5lwKXW/zgYnkDL9191tdXVcHHnbNS3rAnsj61t4E=;
	b=S7kV+Eh8strcpYvvhazsy+tS8/XksU/rXop+fhCv9sHaNIc+nccmWzGLOzOiFHUQg5M5gU
	VaI+5lYfC/LPKRGXMCkGx6ftb2cZP84+xppC74zvGmCtkLU7Xi51hPeAWyF+owXAQIXmou
	dxW2/DDqP8ldkrE0S48HDlrf3L7kB601tWaypoujWnu9IAOJtXgmatRPxH077qanW3SzFU
	9d9LZXlwB1Be4dH5TWRGBqa43myZC6YDvbO720wDd8jvGJwwGiDZGuY2O6X9coLPDk8fIW
	vb2Y1cNXcJ+k0vYTkr12ls5SwKMBWWv0f2VAmQ4i3bIbt4vtcR5MC4Auw5JeoA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793001445; a=rsa-sha256;
	cv=none;
	b=HI5HiMFFijRXmSNxjjTL7oAjv7BC9Voix4ZInTmyYz30sOQMwQaZ+fRvIoN+2XO9ecPwRh
	iAkqVG5t4avUBwDBoAJJSLQxKHxWrWeU4/+Sr3RtG2YCpQfmAmX4j381X4FXzt7XU1EB7i
	2IwLPDkQ9m1gSArnF8jwa2bQ4IXnEbB4+j8QuOIj7d6LzeeEdZcIDSTm0CtgXS5UWAy2G2
	cVXZfgn+V5DI7DenJSYEyNdoSddAabJg8miVvT9x2Wgo4WLJWcJaA0RlhefV5Q7Bn69W+/
	2Clt2WzMVlEEv1JLq07A4/xn56dogprgm2zDdCv00RL7AbwAmXI9/7WnP9j6RQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793001445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fi+5lwKXW/zgYnkDL9191tdXVcHHnbNS3rAnsj61t4E=;
	b=HV3X8+fcJ1Vl7QGndggg8z34s7NA4izVpT4Du7zaGthcoTUotxUMsNjoXzvNHGWPTiY3o5
	zA1iSGSBkm2GHBsDR/PP9zHXM+UO542U7NCULXk+YAf0STz2UWQQSz6rZZPKJvA7AqMg7X
	axJyN/ECSsqEVQoC1vKRSU973875bh2b1AlBQdCJcAdL8ivXE9lwZRWxZ9rAOSBHbjY+97
	3pxVAxifY8PxyZPm8eFm7DgWuaryhhQFYs1uJks8VOm7LhrVuKsuysQX2JVtxX5gp4Q4er
	QZ9uDcRPI4bUHO8mqOnxBV3+NR4RcyHcBdFkhgo+FHunWgUE70bmumX/Jj7Wiw==
Message-ID: <982f3816-cac3-49d3-837b-88cc25095dcf@pengutronix.de>
Date: Mon, 26 Oct 2026 08:57:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Mount NFSv4.1/NFSv4.2 filesystem in barebox?
To: Martin Wege <martin.l.wege@gmail.com>,
 Barebox List <barebox@lists.infradead.org>
References: <CANH4o6M1zvtGcz6fDyWoj5wi3OLzgFJYL1BB52qb-DoCUsWcnw@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CANH4o6M1zvtGcz6fDyWoj5wi3OLzgFJYL1BB52qb-DoCUsWcnw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_005730_240399_87497F44 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Martin, On 10/25/26 22:07, Martin Wege wrote: > Hello!
    > > Does barebox have support to mount a NFSv4.1/NFSv.2 filesystem? No, the
    barebox support is for NFSv3 over UDP. This does not prevent you from using
    NFSv4/TCP during kernel boot up for the rootfs however. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CBAC3200BB9
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	SUBJECT_ENDS_QUESTION(0.20)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:martin.l.wege@gmail.com,m:barebox@lists.infradead.org,m:martinlwege@gmail.com,s:lore@pengutronix.de];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: osi6bmpp837tx66p6a3qsopz87xg5csf

Hello Martin,

On 10/25/26 22:07, Martin Wege wrote:
> Hello!
> 
> Does barebox have support to mount a NFSv4.1/NFSv.2 filesystem?

No, the barebox support is for NFSv3 over UDP. This does not prevent you
from using NFSv4/TCP during kernel boot up for the rootfs however.

We would like to support NFSv4 eventually, but given that the we had
to fix a fair share of security issues with the current network stack
and NFSv3 implementation, we should to try to avoid repeating this
in future.

Incidentally, I just created a PR for rust support in barebox:
https://github.com/barebox/barebox/pull/96

The goal is to add smoltcp as TCP/IP stack on top of it.

Then we can look towards supporting TCP protocols like HTTP and NFSv4,
but it will take a while.

This may be the third time that someone asked for NFSv4 support on the
mailing list and it would be useful to know how are you going to use it
and where NFSv3/UDP falls short. Is this because you are using Linux
kernel-nfs-server and NFSv3/UDP is not enabled by your distro or is it
because of something else?

Cheers,
Ahmad

> 
> Thanks,
> Martin
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


