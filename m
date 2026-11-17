Delivery-date: Tue, 17 Nov 2026 12:47:23 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTHek-000PI6-2b
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 12:47:23 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0835B205A39
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 12:47:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Mu+QzFTF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dKzghHBz;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794916043;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xeUlNmdJLlaID8JqvzpFLcbPBgUmYM9iChdQlafk9Rc=;
	b=EQzeaQx5WWfGvrgTUZpljhFMySRrA0BeT3y8aNi/NWDrCR7wDoY0EgDN3o3fe+tZ/cGF5p
	v2Glab46JPBgeV0/7UFnKEEUp20LuwtQECRBtIcVaY6jLJOlD6QaUAVxU+IWF9sIGUvIoH
	MYTrPA4JyNx8NhIwwfPxNcH3XMOiX9tGln34FrQexlQoUQzJfC5n28gvrilGZNmLnwE9zB
	EYCG3ytZPwLwB3XnGHzXinFYWTxhcIXxS+f8cmaaIev5QivtbRVkHQ66XcOmziGxKl1VPY
	713KeZtZdc3t/MZZS0MBkdbuZUhZjsGNBK7S7AR80y/G1mgPJQ6eU4SGmY1dmw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794916043; a=rsa-sha256;
	cv=pass;
	b=drCQATx5afL35UPD3leWw8Z+D/xx+RqgzzJ5lSIm444FbEL6yE2qa8jE9GLqI3CzSALvJp
	HAiQod0HGsxG/nWY0hGWPttwuT+OnAsRRvJDUSzmLYC1VitkCQZz2FcPuIdNCRvgBJZgHy
	V+tq3+b9iX3UwHDmTHjWwbtKPRlk6lNwHjdKqKfmO0tIjq2tKIbOMYSJKrIelYnJ5/tHQa
	DAEYAksvqmQ2owZUw4Fq9/xY/Ku+sTkxvqzeJTrSafj373yJj70CVZtzz9dP4j1OZ1BA8Y
	NcOa+dD7Ly/JtJy0CJr5zqonRMVX6fjavbCkPQNcgJjGdsp8AoHTdDnJyxz0Ng==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Mu+QzFTF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dKzghHBz;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xeUlNmdJLlaID8JqvzpFLcbPBgUmYM9iChdQlafk9Rc=; b=Mu+QzFTFM/hk5cm913TgKbyOPf
	Bm2lrLDUwz1SUX5J1gkwLzumqGD443PTCg0AVqaMWANNizeh2VG2dGgTz4fHMXYrKAlwdp6jthEQ5
	AXhsPzkKLfckby6baqB//jhcw5FPli+8K47zBhQ9MsKUZ8xWlJfrpdPvcUDG20l68HEZdbMDVWw1j
	YoOIRP4DSni4xO80aMrqvwwt0zEek7pbVHBXKrxm0O29ynFlFjO7j2dbj9oBCSxF/jbKKR7VxR1GB
	//RXssbRxMUgjQ5dCoH4BozticRvMtyCG7NBk/IMQA3Duj3ZmAQi4aCsm/A9IEy+n0bUSjkFz8h/S
	u2MDc/1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTHdk-00000005Upo-0hpD;
	Tue, 17 Nov 2026 11:46:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTHdf-00000005Uoj-35Q5
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 11:46:18 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 98E45205A5F;
	Tue, 17 Nov 2026 12:46:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794915973;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xeUlNmdJLlaID8JqvzpFLcbPBgUmYM9iChdQlafk9Rc=;
	b=dKzghHBzAlZnELrg6fi23jgNgBKhaQ5fXfNhLxT3zlmelinITMvhrvZ6RfP6WBlvQ42sgw
	23O44QPr87VpeX96UGgCRctbnlyCYpwU3XUn4dRI06Kklk9KVCvUsr5f/aClOAJmL67Yem
	s/XywLWIHOInJP++ulRkFQfpba5uF9lY7iCfgs8xQBmjed5fz06JkN6g5WJXzgEmcX06As
	3T/5hcmemoFVqzy0/gqnTtZleS3ZtAx0kP5q8EFZzBrceNwaJnDBEL/Wok/6HFEoz+8mg/
	QyxZYfZtYPD5moEQwSyHzJ5/iSsEfPug1hHJhZrYFa6bkTQYB8wSJ+ODOxUeqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794915973;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xeUlNmdJLlaID8JqvzpFLcbPBgUmYM9iChdQlafk9Rc=;
	b=LqKA5p0u3yGEQ7HJSIkJGKp7mihZkoMaq3SwrRGb+cpkpYRgv+Fn9529TauUvwqU5AiGN+
	tVdNzYwd7jA7/hKY2FW+Lpli9GVpbuf17hi4hs/Xmmb3+HZsr51F+Si1TbPAS/52wnX8Nb
	KpRYFGzIA/aMCw6ngiDnJcu7uvzj8LiJGjH/h/F/d8ABpDzsyHFiIYL7HtSls2k3E3smsh
	HOMcqqVt1QyaRtrvf506ul0o/IVueZIBxzI41oMplPU23EJ5U4z5snL4BQheiBfjzSlL2r
	4Kpm2cxlEAGINkwDRt5Z4HUUa0JTHG/NB925IhmihI44lOzXfeyuYjruOWgC7A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794915973; a=rsa-sha256;
	cv=none;
	b=MthVktAAjlJPUzqTuH712vOeo/T9jbTRQiCczrkRcFsCYQ3Oy+QivRl23425yZ7gNrRS6m
	hjs94IPa7MkdY624I74EUELNF9EKum56PeeZiu1vhicqF5I8QJi1HAFZANYosSznpcCZ4d
	wFiaS63Eq/t/GGxdro1SrRvN0Ulvi8w84Ll6es7DELJIXFggn6CnzDxptZk8eg3GOjsCxY
	+8x4jfHlFw9yMijTiWWg6ndEdU18SC1Am7xP6QFPyLXiWyI7AfQyqZCHrapCYF72VORJKl
	LNRvwv8eI8P1S6mylRSU2jIKxjJSq3U+llxdUaBzZlmIWbIh/m4rsoq7ewf+fQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <19f0a52f-ad0f-44fd-b97d-644b925eff29@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 4/4] commands: stusb4500: add USB-C PD control command
To: "Giandomenico Rossi" <rossi@amelchem.com>
Cc: barebox@lists.infradead.org, "Giandomenico Rossi" <rossi@amelchem.com>, "Nicola
 Fontana" <ntd@entidi.it>
In-Reply-To: <20261114161953.1457428-5-rossi@amelchem.com>
References: <20261114161953.1457428-1-rossi@amelchem.com>
 <20261114161953.1457428-5-rossi@amelchem.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 17 Nov 2026 11:46:13 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_034616_632916_BB6B5711 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Giandomenico, On 2026-11-14 17:19, Giandomenico Rossi wrote:
    > Add a Barebox shell command to inspect and control the STUSB4500 > USB-C
    Power Delivery sink controller. > > The command supports listing and dumping
    c [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rossi@amelchem.com,m:barebox@lists.infradead.org,m:ntd@entidi.it,s:lore@pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 0835B205A39
X-Rspamd-Server: mx1
X-Stat-Signature: 6ikgmzu7t9qe9zs5zwsfqbrf6b45yr4w

Hi Giandomenico,

On 2026-11-14 17:19, Giandomenico Rossi wrote:
> Add a Barebox shell command to inspect and control the STUSB4500
> USB-C Power Delivery sink controller.
> 
> The command supports listing and dumping configured PDOs, updating
> sink PDOs, forcing PD renegotiation, and displaying the negotiated
> contract. The target STUSB4500 device can be selected with the -d
> option.

The command as such can not be accepted upstream. It shouldn't be
STUSB4500 specific, but instead call into the driver through ops
which can be implemented by other drivers as well.

I think the driver part of this series can be upstreamed quite fast
if you remove the exported functions and other stuff that's only there
to implement the exported functions. If I understand correctly then
that should already give you the base case supported with the PDOs being
configured through device tree, right?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



