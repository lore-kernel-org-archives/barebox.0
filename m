Delivery-date: Tue, 29 Sep 2026 09:00:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBRpC-007aHI-0C
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:00:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A00E6201548
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:00:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2QGadRNn;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RjVE2G2g;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665225;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=imlAypL84QRa5J5mwxv4FfXIpZ9jNZmcYeKZ9+gt9/U=;
	b=QWAqPaO3M13AsGZp6dSVhV8RLhSST3SAma2gqFAZZjAHvN+LlqyK+qnLAyUNh7rF8zNJ53
	5hzRj6J0yFmn/VOlwnWWi+8lSHPWUuvDEcwguI/Xn//+NFxXeOLwMMdj3DDb9lLL2b9hA7
	DwygDKpdN0imYvV4PvQsGzQ3ZHlBUrsSr7ccCHElPDgVjyx4hl/gtFsm6X46P1wltzhCcg
	T5zZOhFGlRi1l4aQCYRXnxOUD8j7Lo6/2yILwT6eGYOSMHu4u/t7jZmYwzesUwADIo7nFU
	Kg86y15HbUkgjXdUBXLx3oCIc+SuDqGoCUUsI9vrMQzCNrYUt+ZMBB4yMU1wGA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790665225; a=rsa-sha256;
	cv=pass;
	b=EXLNi5F+y7tuABWDvU63YvdUcO/zwXr1ImnypS+eXfWSU4b91rNC4z5mnCkd+iYwqLoWKR
	DxPnVtENF/1e8+ze5InKUXaJp8OGW0a80uMcfeE+a2RYKpl1TOvAV9hHc9g+nwnC3ctWHD
	L2P8lNoijlimlGjPBRBRRRUKbmL6fBjFnpdnqxNIJwCsKF2KhO10d8RJBrvObyJfpq8ZUM
	+TGs289aNeKT7Okn6KkPoWOc3V33/frm1FprgK+lWFCNQzptjFSn/uBv88j6KAXHxGUsau
	7HltLPsV1ah8X6WmECC7yyJY55VvMKVnG+zj6QC/1rDt8gVEznu19NeETniFdA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2QGadRNn;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RjVE2G2g;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=imlAypL84QRa5J5mwxv4FfXIpZ9jNZmcYeKZ9+gt9/U=; b=2QGadRNn4VPZ87/wYugzvJQSH+
	XWaEYk9upuRcUhTNBD8H8M6WBISDDQ8JqalmmHfPQDd3piYxTr/oAFyPZBB1BOa9YhEePuqjXT4mj
	EwaPw5Nl9ZyzamL0s2P4HyaZWPiPX+F7rvj+3VPv7EPEzT95IC62TGSkyPZwxWbtaQncomy1JkYNY
	+3Faj/iFN4tjAS2NzFC0XfBkWmN/UDeUCrr5DvdPtAkKwFs/S54BGuoFE92nIHyrEe9lbc1jEz5TL
	Lo452CeAXkNuZfcZnK/LEumnUJfcHd2sMaRKk/jmD6F6/LX87mNwrqNp+q5NHC945lzzctey+MAQJ
	3Q/GtxXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRnp-00000002Xfi-21KQ;
	Tue, 29 Sep 2026 06:59:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRnm-00000002XfF-2p3v
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 06:59:00 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 41D93201F03;
	Tue, 29 Sep 2026 08:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=imlAypL84QRa5J5mwxv4FfXIpZ9jNZmcYeKZ9+gt9/U=;
	b=RjVE2G2gLt5NuJihZRfO6Zf4dLB4GV5fxW2mkypcDw0fm30a6cqJpR4phOe7/q26ktFMWB
	QknX/IbBAvJCTCmA0MmGmudLmjHPd9JqRWv5q7VFnOLxC5pyfcDTkwHJSDkPJmEQbZ0NkW
	TyW+lTWRG1sZJLZk9tMCG1umvJS8++GNGobLJuqRgGMwPa3YFtf9JjzMbrNUqIzJG30jyW
	+0zwP/4DU8CtKNgWQ9d39G4wHdKS6NwsrYPUgePUwB/TZmkfnBPwSY+vkyJKWKNhgBNZ5F
	8BV+qK08n92t+DNEhRPDO2KOYp/+8OjoJoz9BONG3zGZmxHq2Nax5IXd/V0REA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=imlAypL84QRa5J5mwxv4FfXIpZ9jNZmcYeKZ9+gt9/U=;
	b=R8Ea2iOqHQbK1yiDgusJqAC3xfrXwrdKJfB7XRVAAJ0BefhYyRRJ+Dt/lvt8ifk/BZvbBz
	0ZO8lXZvVZGdTd68CeSBKNqRgiKgqWC9fYjHKvp+22i2zsJuD3hxliusBLECvS4M8YbFNX
	b2s0aGBeh8rZ1mC/hm6QheW1dctlwg4K4fCoow2gY1JQM5JUt3GcuUKDcgREj+GfBjRih/
	ZsMu56I9axS9UZp4g9BROLSsMPPHbe2gwGtCB/nPbpq6feEltuu9r8ghBH9yVypXejIV/3
	pcSUJzpjj7oirbsApftx2HE4v7utId23dA9MOyywl+zY2EFvvtjPwScq0tBurA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790665136; a=rsa-sha256;
	cv=none;
	b=OegwR+ij+gLUqbaFrpUuaPFymnj6LF4WSU3pCo0sVIDYC5HTDaZ2IPHDbrLwl9u4DhEM6V
	6380G2kzbRkBnK29gS10k3IC4L8O+uCn3mZILs0i3/NZSjKL3PfS3ivExlVIx5wEkufJ7k
	ykhCSqjlksDIhoO6MnDEOsj9OtSHhN0RmFfAkzuZKY1C6ql9HDS/CB355WTr6JD5MYrfAs
	1BTYOapzl4cGDGwJgIyVE4AUAiQeBLoDbyGJ51XWDuSJX2EOWci4S6X9ReWBay4/9Y/deR
	VrzDTlFJin+HuIIwdRIP6RmsJtYc7tlTdmndMLftenupPKiSRinp9UUHJ5vesg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 3663FFF954;
	Tue, 29 Sep 2026 08:58:56 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260928-socfpga-agilex5-qspi-v1-1-fb12552e04e4@pengutronix.de>
References: <20260928-socfpga-agilex5-qspi-v1-1-fb12552e04e4@pengutronix.de>
Subject: Re: [PATCH] arm: socfpga: agilex5: define QSPI flash registers
Message-Id: <179066513620.712148.15940701170864632300.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 08:58:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_235858_873782_5F86B79B 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 14:56:13 +0200, Michael Tretter wrote:
    > After requesting direct QSPI flash access from the SDM firmware, barebox
    > gains memory mapped access to the QSPI flash controller. > > Ad [...] 
 
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
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
X-Rspamd-Queue-Id: A00E6201548
X-Stat-Signature: e3cxaue8118j4wbatgmffxrdfj4aq18w


On Mon, 28 Sep 2026 14:56:13 +0200, Michael Tretter wrote:
> After requesting direct QSPI flash access from the SDM firmware, barebox
> gains memory mapped access to the QSPI flash controller.
> 
> Add the registers to the SoCfpga memory map to be able to use names
> instead of registers when initializing the driver.
> 
> 
> [...]

Applied, thanks!

[1/1] arm: socfpga: agilex5: define QSPI flash registers
      https://git.pengutronix.de/cgit/barebox/commit/?id=85af7d074a5a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



