Delivery-date: Tue, 24 Nov 2026 08:23:45 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVksS-002il3-2P
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:23:45 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D13D4205A10
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:23:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ogsR9BXu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Pre5peUS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795505025;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FrHrYtsrF2rj6SLH/jUGDD1BnUM+QIObLk6UKVY1rOk=;
	b=M7YlJ2Q3ZKiCH/Pquis4mDPwCdiC7kW/jstYHIudOZ6PcWfwVg26V8H6Sz9fyT3eT2f/33
	SoFvHWjQwpvtzoecTbDWZ6m67+sNDjjm7gmOIfapDwrAY5fMRmGB1gkZJdKIquJpzQOZbv
	8AxHTnnAbDK8rT9DJtvd10HtcwdR58UZ7Y+M4q46U+pW3s8NTBisDCoE34gwDiVtBa2Nx8
	XfEoRiJrk9lqRdM6RGsi33QpKaRY5cL2u8HfjnS6VOr6tZeyK/nl9at8L5oD12ih61ogyq
	uF6td8mAymzYB9dZain6h1HWMP0+EtgI9q87TroKtTzC+yVbH9El52p+WAzrHg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ogsR9BXu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Pre5peUS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795505025; a=rsa-sha256;
	cv=pass;
	b=fF7Je64Yh6ESP0U7C9UUmf4GwU8d28ESZYsXceK09SQjrRAPl6BGluIHk849PIkwBLJol/
	ibGSR8fTfiP9WCWa+ihaF/22iImTn5N/nDaKJvAshYdCKKFQpZgxQqEdq/WEM18ssk/k1Z
	QSFaFU7ajQha6J5bzNVWV41TBuSpvQNjqJusFnWvslNNK4/DSzUmzrj9CEAQXut76wnaAi
	Zi9bbtqiHQn7JXj+cWnEbLnA0fEzgUoNqHCIeJG3NYQ+29yTmjFg+jbAS5LGy6puGN2UxA
	8aiAI+mBhOFP69yc2pnVuCVGL40m60iUSQMxZyvKon5ahoJLh9wm8uGTBAQxhA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=FrHrYtsrF2rj6SLH/jUGDD1BnUM+QIObLk6UKVY1rOk=; b=ogsR9BXuWNE8Z9
	NHEIxb2ViSV6RBZjzKZ6eRgRmqprNAX0MijMDeSA36sGWkNZQpXYg4VNWD847FBWQKtmJyMJmHQa0
	y2EmUAeohCXlID3faCUc6sCbbIpCeVNQgDwDVdKg0Wh8UFMGu/Gk4xcLvIKDXrk2HMCXyIDYgdGlx
	PVlRTPZYmpmMBan6GzutdeD9r5/r4qlmKdidh8G758BcaXZ62g/KamP7psXLDiNBoUp83eEhIwy1Z
	LdZ+oWfAKu6tckWSJjirwmVuzdAblAPCFTvEQ0v2UAEKg3NcVCqd1bJDWRqT5L1kBe19PMUAvYo8r
	87En+imK8oefYaFj7Irw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVko8-00000005igG-1y2V;
	Tue, 24 Nov 2026 07:19:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVko4-00000005ift-0rcX
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:19:14 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 198BD2004FC;
	Tue, 24 Nov 2026 08:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795504749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FrHrYtsrF2rj6SLH/jUGDD1BnUM+QIObLk6UKVY1rOk=;
	b=Pre5peUSISs5CHz1xen+T1eQAHoCfSQQhuykwzMF7jdZYwum5mOblI/tMK+rjVpupOPRHX
	ko1QztBUzfaNetTghlBVTmb1yuT6wGKq1pssb8pJ9L4iv1VtJDdC/v9pDyqG7dMYiuQapl
	S7pLM8LPt8dj5Yd2qcnRg8gdy557kvKkpdPZOmg/JxbAVFFyMLJM2NVhyJKP9nKETlD1u6
	dg/TL8Y2lrnCMghOmAN239SEdy6janxfRy/YmS9Xb3ucBeqM3mJowgG7cf3WGF4jynNOh2
	iVHhyNWYdRD4vkbnJF0kM3sf2q9HhvOskAkRAOQO15WblBPNna5H7SWA0l6s9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795504749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FrHrYtsrF2rj6SLH/jUGDD1BnUM+QIObLk6UKVY1rOk=;
	b=QwRrGotrwTavEhNfQXsJLESZwxU+aap8+vzTbCsCcOEGcQKRyMc2G0vu7GNQBlsVQ+egMY
	znjU8uuxkbi7J3HAQR6J+EiuS5vuRkfB2ruNVVDEoaCH1KbPXmJoAGolH0XIpDObDupXi6
	cyytXKfs8uya8a3Uu58VxOnDG7cfu864JzUiiUcah1VnPnXLpWjXv69k0y/E9yIzeXe7aW
	pmfEjzgNJSxITYa70dZvZyYA5kHcxXe4Hr0fmMui+AfSDTOW1dlQxQlaNQOL+ZDn+HmcIM
	3jJrj+oUcAOhGKFkeWXmiqoCIqBT1MfgqulVa7PvgCo9HjEsajRkMZjQPtHstg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795504749; a=rsa-sha256;
	cv=none;
	b=Ki77KinK7+jvSMz2UcaKgJkPCct/7FGNiGj8uQmDIDQ5d+8+8GZNc/vkCaecDaO2bYQvBu
	lcB4BDif42XcdPHY32ROS2FvXY21k2z7bzyx6OgMyxJCSdGfR4JPR0hznIWiPQj36uJqCl
	5k1HjWDSFQilujZF4f0Srrbo8h7vaZXuq/YcHuIrdM57MqkJIAlG32PogJTFSqjR7XMdBM
	qwFODkSLUl91bBrpdFrllN0YaHGg8nt3msiVUG/XBTGslVH6fXyU2lUjr3GRSdPYsyv/sK
	jcpNT0ITatdvehHNIsu8RH3YOJDVhwsjG0sXvyXqacOPSvIgL4mFuFjHqJdi0g==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 049A8FF9E6;
	Tue, 24 Nov 2026 08:19:09 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20261119185828.92337-1-a.fatoum@barebox.org>
References: <20261119185828.92337-1-a.fatoum@barebox.org>
Subject: Re: [PATCH 1/6] spi: fix NULL pointer dereference for board info
 devices
Message-Id: <179550474900.376317.11014962293023062259.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 08:19:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_231912_444004_69D683A4 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 19 Nov 2026 19:58:11 +0100, Ahmad Fatoum wrote: >
    Devices registered with spi_register_board_info() have no device node, >
   but spi_new_device() unconditionally stores the new device in it. > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Stat-Signature: bp4mhjcuj36hz7esfskg6fwiter9habm
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D13D4205A10


On Thu, 19 Nov 2026 19:58:11 +0100, Ahmad Fatoum wrote:
> Devices registered with spi_register_board_info() have no device node,
> but spi_new_device() unconditionally stores the new device in it.
> 
> The at91sam9m10g45ek board, which has the Atmel SPI driver enabled in
> its defconfig, still registers its devices this way. Let's add an
> of_node_set_dev() helper that only sets the node's device if there is
> a node and use it here.
> 
> [...]

Applied, thanks!

[1/6] spi: fix NULL pointer dereference for board info devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf00a1ea1bfc (link may not be stable)
[2/6] driver: pass the requested node to the rescan hook
      https://git.pengutronix.de/cgit/barebox/commit/?id=22d993692cd0 (link may not be stable)
[3/6] i2c: factor out of_i2c_register_device()
      https://git.pengutronix.de/cgit/barebox/commit/?id=91246097b638 (link may not be stable)
[4/6] i2c: allow creating siblings on demand while populating the bus
      https://git.pengutronix.de/cgit/barebox/commit/?id=6433a89b6339 (link may not be stable)
[5/6] spi: factor out spi_of_register_slave()
      https://git.pengutronix.de/cgit/barebox/commit/?id=b09871d81629 (link may not be stable)
[6/6] spi: allow creating siblings on demand while populating the bus
      https://git.pengutronix.de/cgit/barebox/commit/?id=940243e14d3b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



