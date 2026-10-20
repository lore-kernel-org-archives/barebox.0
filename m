Delivery-date: Tue, 20 Oct 2026 15:56:43 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAKZ-0013D6-0n
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:56:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7A98E2019D1
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:56:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="IoQHO/j8";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=E2zVdXoF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504603; a=rsa-sha256;
	cv=pass;
	b=SwgmFMmP9ExyFtC1b36cnb++BdyCK3qbwC74yRUqIa8USddOd0+tELY4SPS+ZRj2GIO41b
	6MjEx/G8yCCFLbXNdgUjuE/y5mwNTmtrCR8AmILCOfAwMyml39AeC09Ud0EhwNjLa3KaQb
	+F9WFA67BCPuB67kuLTkAPOFZzrKG5iDVBZ986FNhHhEWKMrXW8eJg4fhte0oDCsOaz/NU
	ZKc739dYEOjmoVXafFXHuFG1RTc8oup7oyqN0Phjgd+DJF+wkCp6CwBw4xLnH6/VmkTa4b
	v+UiE1vRRfpBE8726P99slhPFNlz//v1BwhLK96GY4Y2F8PRHCBItayFPlffxw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="IoQHO/j8";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=E2zVdXoF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504603;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=d3/aiBbzUIDQWm8zTtVZ796J3FlVBA01shR9vHtZSqA=;
	b=Lj6xbZSi/hcTDJxVKZjGv/7UeeDyQlUOVWZt/a9YVVftp7x1/2EGC0f69Pc1E0e+esKP/y
	wl3UJ1tbJvgHINdsQmQd6FJe7UKARogpIPii7C27gc1IU4CsxSnpABD3CyGn00ReZML03U
	U7V1UoEPEQzTssk9KUQoKidVJPNVtjXsBzkzJ+ZCVZ0HnIzXKq6S7hftoKNAym3YzTz5ix
	tciSOUj+Cd12jXerf3kYq0rAKwWtI73J71Szk6xLYl7yG7n/GtmYfNxY59/6toTlHVS+oj
	lWuSuZijcWpi7uqPgL6FmcdOPrbECT4XrKxrJoPJ+9Jzvj32Ykh6Eb6B3Xc6WQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d3/aiBbzUIDQWm8zTtVZ796J3FlVBA01shR9vHtZSqA=; b=IoQHO/j8oBSp7lJVK6mvzNsm09
	DquAn2930QtMUhurVmUR2AzyRmE1wWR2u9l0VVapuqiomwEJGwcSLk1X+82V+buBoMaFTdRUR9tjz
	xhVeYOYnArdHqTBg+zYxgrptDB3wXnnrn0WVXIA8l9lfEZVhof1rSN1UcVCEfcuBeI/erUa72BM+T
	dT1mCYCtqgFhtBP7oDBr7BJHFKxXKnqyEMOLXseI+fEu3BUDGkMvEBuzTG9YmWxcA5z0sYOz07kRo
	BAqeh6N2AF/mJdIvV5irtq445Lliux++Ms0IQV9W64+Pm3U7Bmo41hSMqGjOzb7r0lDdHx8Px04d9
	62WqeeiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAJP-00000009qMA-2pV9;
	Tue, 20 Oct 2026 13:55:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAJL-00000009qLl-3vhX
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:55:29 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 104FA201709;
	Tue, 20 Oct 2026 15:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d3/aiBbzUIDQWm8zTtVZ796J3FlVBA01shR9vHtZSqA=;
	b=E2zVdXoFjdfBlkL29oPOta3KtLaazS+uyoY8uqynQ5aPc6j7bCn27WDNbjI8c8pYmUq9N8
	4QsFQsEh9TcC3Eh7Pn9VPR/dBuvcqdp8eXxAw3oSdr2KheOMLy/vYoq72v19Wv2pQ7yq2M
	NOINm6z7SVYxnx9Ohn4QQbrCOBt/NTBeRKbYDQwOcv9Lp1OSAoOuGCpAKde8FVfOUMbGza
	NXP/x2mV+V84S1SlKrInNpWsm637NRVuE4A3yFT28n5DQ0aDRARfBFAEDsApbtdI4sXaWY
	KtxDn22CNGxF1Om6++17VZ7kVJVM/n4sdzXm55Z98g0WBRqzWf3Qg5yN5kquzg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504526; a=rsa-sha256;
	cv=none;
	b=ImGz1e+q9tXrS5IaRr2rkauGC9DDBPTg0ki3tjfmx7Gpk+Rvxnq8SNEMuWOMioRtcR2Ubc
	De8O6XI7kgMIFRhi/ytZ08zYpNuZBzyZ0W/ndBvEHKP5yjELcWEdQ/OLGWvSBR+J3upV4p
	CJV5SwwHNJNpt5AflMIIE/2RSkds7czaSM9aM2iBw6kB8nAdUtGSTWOsbDWvLIRXenkcG6
	3uV97Vao+5rJ+QAggLpZ6vUBv79tB82JxogSF8fv1N1cF3D6f8EAidUCFBj2zhYfupm+X3
	iuknUd90b2K6kziMy71d6RC5BSHjLoCGOypkGCKsmvtOa6hnubbVfTfeM+LcRg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d3/aiBbzUIDQWm8zTtVZ796J3FlVBA01shR9vHtZSqA=;
	b=DcgGf2iKrtjKbBKRgfYAfWVIIQLo/M7yYW8C/Zmua9iwrNTrb7w8rMXTAoT/aKTTjAdUh9
	GaQy6G35NIYd62OavbjYievPyfDgt932xFY4IJaibssAFRKf571gMuFIBGaqgzDYCwziAn
	Eg4tbBEv9hQXjjiju1hy9T8zpgqojOVjA7EvROXVwWFsghtt01vCahLx4Cqswq+iakf3TN
	Yl2pZQmUwPcXkYnmMdm8NSn8uMKtuOH95dtkX5Asfk1d48NWLzwgSb2VQnv2ShqPFpZnix
	PO4KUK4rOThPJD006ECdYk6iUKk2lI8dg+whjkXu/oBomH8QjZeMYMHk6MtCig==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E9E05FFA47;
	Tue, 20 Oct 2026 15:55:25 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015140606.1181053-1-a.fatoum@pengutronix.de>
References: <20261015140606.1181053-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] blspec: allow devicetree-overlay to be specified
 multiple times
Message-Id: <179250452594.2718059.11089900992392336196.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:55:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065528_180573_0B476338 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:06:06 +0200, Ahmad Fatoum wrote: >
    So far, every devicetree-overlay line in a blspec entry replaced the > previous
    one, so only the overlays on the last line were applied. > > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 7A98E2019D1
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: cb8f1f8onezqhu5pzsg3357u5xzfq4m6


On Thu, 15 Oct 2026 16:06:06 +0200, Ahmad Fatoum wrote:
> So far, every devicetree-overlay line in a blspec entry replaced the
> previous one, so only the overlays on the last line were applied.
> 
> The spec only describes a space-separated list on a single line, but
> systemd's bootctl accumulates repeated devicetree-overlay keys like it
> does for options. Let's do the same and append the overlays of each
> line in the order they are listed.
> 
> [...]

Applied, thanks!

[1/1] blspec: allow devicetree-overlay to be specified multiple times
      https://git.pengutronix.de/cgit/barebox/commit/?id=0aa79ca4e97c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



