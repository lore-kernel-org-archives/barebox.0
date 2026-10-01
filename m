Delivery-date: Thu, 01 Oct 2026 22:23:17 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNJF-008ZlF-1R
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:23:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C382201E6D
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:23:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oScKAaIM;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VxXo5rWN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886193; a=rsa-sha256;
	cv=pass;
	b=fMsfP7fkAfjvsZ3zTp5U1EE1GVx9ude9w2sNXvnVijHBU5YYFDVhHV8HWZHt3EeG5tUHMD
	Zwmi6HWZG/efVubn2aIvDXJc3IJCbtXMcPwrrifVGcjIuGg4FLGQLq3ExseFscX/9raqtT
	TKvNj3SfQUzSmmxkmKrVCIgoKMc4FPQ9FQ9d2QalsLMxhrkhJespZ6EEUVy4f76tt6MHFk
	3RJt8y/lMAXyocdxWim/FbTLOu2kJWlImuHAAf/fiVeMRCgfoXIbrxX8s31fM+XN84dXC0
	tmcn7hKVudfAdH3X9H7prGKrHiTX/aqxNKQVRd54i7HuUT0crKqeeGmYaIZEXg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oScKAaIM;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VxXo5rWN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886193;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CNOb5I/X2sfbtusEprwdWVgUooGYfO7qUnoMQl1zWwo=;
	b=KIJhXiEipgDawo6J5LRDv3VSuSG1ZStd3M6iB27g4ASNiMKP6vgGSH6orXHGbmb9GafR/T
	9d7z589fIzHPCeNr0603oOUgRcYuhD9Sn7zP7r6teLtQzw3RUqzkfShGo/EHRPOCjBW+mh
	k0yt8yIgpjZaa97RHgLvRs1X4B5le5J3QYz6t+t04t3uGItCgKXVvLEv3U1kozJOlaP1gt
	B/UmiQtpPjatW1u+t6Ss0hQoUoZGKTe4LSUuyZ1BjcrsNeoghpTgYAqdEhPYNT7HmBOerY
	S0M2XswZeSoHp4w6SSkTnDANp6rNU8kvhL/ivqXaVufwG8qAOzY8iym08puJKQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CNOb5I/X2sfbtusEprwdWVgUooGYfO7qUnoMQl1zWwo=; b=oScKAaIMpSvVpgySp2bgPiMV4B
	O+R+xaovOF6kNE8ZRE8DxAb++a/ltAerq6whPgg8W0gH9BNWnb348KIaJ1pkQIgIvXMM5V1W+79do
	nYxaRhpAgasoxIIvSYTiLcQmRm3Y7C32MFMEw+7jqrjX/KulBPwxx75Fd6oVgYHCzOieuQFcPzrN5
	rnSLivYhli9oBzqjmNlLW20J4zy6bAG8JGwzptFDUE+fsYvQsRYwcxxPxc24nPSQckOVmY2Ti1A7u
	No1TMfWU4Q+H9x6KjWz+85wwJRAWQUdieqxV0X7GDj7XrHJbfO/FrX8B4W+sHPOkilnxIu39K7Ur5
	OnmYOp/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNI0-0000000A8jT-3LYO;
	Thu, 01 Oct 2026 20:22:00 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNHv-0000000A8it-0Sgc
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:21:57 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 37EE8201E6D;
	Thu, 01 Oct 2026 22:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CNOb5I/X2sfbtusEprwdWVgUooGYfO7qUnoMQl1zWwo=;
	b=VxXo5rWNLHhPjSc0QuFZg66DmH98ST59InOAZ3MJUqpcebN4Aa1J9UM6wrZKAoNh6HLC8Z
	JnpNOTbOmVS/51VNM/KuHJ2kNvXmWAUTb+XDkwwW8KhYUpWirez27UmwJXQBzoYoI3DAgC
	hfZMrQwf6fy6x3pCpYDn0UbbZEHRsjSojuUPvkYmNmHF/cEunZqgdsFu8n5uwSw/bhf8a3
	n4pYme+s4pXM2WXMooBsWm07GKhktXW6hPPjdoT8gfO5BIJugHH9bS7A4t7GJHMLUTEWOa
	EUFtFDFxXW7zrMQTwGu7A5WEk1IgZGYYeOeRS/OMTUe73mvtIhBIiuhYWinh3w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886109; a=rsa-sha256;
	cv=none;
	b=PZwwm4EPtG4kz+BeXQyLncPd7Yrc7RzmnhuUFCzSBlx2MhRKxGAJNckJbOk7ymIEoFuwOD
	m9dQFLR74HAbP98TqJlXRWvknDjx1VJV3L9L1a/GarfhELQ0YDYnZ6LHyLKbHQdun9z26m
	3y2YYjvy40FEptWnZIQTJrUwwnTULKir/qyZ99KpFz/gRhcMU+QW4gLU9vycUgHuZYM2vk
	CL3YC3TNsbRReP5arVjuSjtAMRl9GczcodXjV5Tm3Yq5hiZ1NnyWmH5AHh6MDNNmnMpJ5V
	EtMWYe4O82BihsPh52TKPv3Ln4EG5BAthVXXB0klsl/80bbTLEo2nrYbSYv5Zw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CNOb5I/X2sfbtusEprwdWVgUooGYfO7qUnoMQl1zWwo=;
	b=dGxUq0Bev3jjnn3EBqLvYpkumMoXW2JwYrWvy+Hzj9I84twrVXdQ/cOxUHHw//HJAWysDK
	zSD4xkU0ASfnqpYyqzMnaoXmE0lzBz6wtFsyqagGuz+QtGX8WybFzDDtCAW1b5YVYeHBc2
	Jfq47CI49kyytS2k532XY+KQRyQHCXXt0kDHKGGdO385mZP1uBXnlWG685D7uw697TwIZi
	aiSch7SmrxnFbXWCTJRTaRD7yc9VRCfoCY0qZgR1vt3+qq45/SRikyHRP+jniMvGiiQHBP
	xKsZKXEZpgHACPACsJpvIGDiDDOMIonUfL/ZEfkyqSX+DzyeNKLR73aigWCsaw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 28F61FF876;
	Thu, 01 Oct 2026 22:21:49 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261001064020.56348-1-s.hauer@pengutronix.de>
References: <20261001064020.56348-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] treewide: drop PRE_IMAGE linker script hook
Message-Id: <179088610916.3011224.12884392431704393948.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:21:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_132156_160669_93384AF5 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 01 Oct 2026 08:40:20 +0200, Sascha Hauer wrote: >
    PRE_IMAGE let a SoC put data in front of the image, e.g. a BootROM > header
    at a fixed offset. Its last user went away with commit > 0900665e [...] 
 
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
X-Spamd-Result: default: False [-59.08 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	BAYES_HAM(-1.67)[92.94%];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
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
X-Rspamd-Queue-Id: 3C382201E6D
X-Stat-Signature: 1yzp8kdbrf663jabpg6e5dn6yae8mfnz


On Thu, 01 Oct 2026 08:40:20 +0200, Sascha Hauer wrote:
> PRE_IMAGE let a SoC put data in front of the image, e.g. a BootROM
> header at a fixed offset. Its last user went away with commit
> 0900665e01 ("ARM: remove ep93xx"), and since then it always expands
> to nothing. Remove the empty default and its users in the ARM PBL
> and MIPS linker scripts.
> 
> With PRE_IMAGE gone, __image_start and _text are both at the start
> of the ARM PBL image.
> 
> [...]

Applied, thanks!

[1/1] treewide: drop PRE_IMAGE linker script hook
      https://git.pengutronix.de/cgit/barebox/commit/?id=b58c9842d047 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



