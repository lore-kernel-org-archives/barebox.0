Delivery-date: Thu, 22 Oct 2026 14:07:58 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJraQ-001qxc-0r
	for lore@lore.pengutronix.de;
	Thu, 22 Oct 2026 14:07:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C008E2021F0
	for <lore@pengutronix.de>; Thu, 22 Oct 2026 14:07:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="F4g+oA1/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VKrCdbZE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792670878; a=rsa-sha256;
	cv=pass;
	b=A396/t+yxUnW7QWNywJ1LuxEMH1wqEs7+ujo8GUDPHrwR6Jq/c9HFi/cAjdIFUwWXwXJJX
	ewUfplfX9ddC53GgBR5xERTRCHWdW3CzIeBMyj9jj20Slb5m3DlkbBoh35iGvh9Iz9muh6
	7z7rJLTGzfX8qvkC9UVuVSgwWR41Cn8/Tuvlx2eFVegjBpfWcx5daFt6nbrbg4lmNZfQmB
	YsdP+tnfgG2Xt9mmUPOsq1fFu407YvCbeFMHNtDrPxeR4qDxjaOdY7aeF2rrPXQdghuOpQ
	f+3i0Sxf4Y769Sj/VCHEr0PnPp3k84gchQUfX8P/1hrlQmqVjhx87pWalzGmlg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="F4g+oA1/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VKrCdbZE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792670878;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=msPdzB4l5La9U42uGthNSsOJDyJezFAuAZa/kJJZgEQ=;
	b=fNpMzjxEQza0HiI9oEZzF3FNE3vSFZMUjA1Un/Zdz/CaFfs+xEWPLAgRbrJYib2evrpcYB
	xYxCvtcbBm1dA79kZLoPJ07gYGuZrgvWn33akuvbrJLotOw2Wk8COYcFm01rVglqq5UYr6
	sVijOOwtM+h/rXT6QS2gkcHQlOHLM8bQGHdSkX/KVqe/uewIbAFFe+/o1TAlM22uc6g/03
	65yRvS613ULO42BhdEEyhrpecSMra3ZIyZghuXpBtL5RywGG7+myLlnl/17Mr07IwJ/tbH
	L7/mQL66CIHN2ygXC6b8Xtd0ahzOCkeOfF1RJqEUIgpW1T7QWkha9uj76MbTKg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=msPdzB4l5La9U42uGthNSsOJDyJezFAuAZa/kJJZgEQ=; b=F4g+oA1/TgQDHE
	Md/zylm3aBTiaGw9hNENnmNY31IaLsdlAj056wdkIZGlUo4TN7xqNzIWrhu02uZJjDDVDsAEo0J0M
	oYYRhn54zsdpdgiBBt2tevdPMDucpMn5VNrgSXLsDZ6cJzNsoicxwzuPsQdBwwYRrdgyu398X2Skp
	oHcYoygXv+Zx/UuTON4yuXJFOqDW7hAXepveCgk23oX68A5QDmJPe66y/hCzJ5un+l3MqUaFYz0RT
	mPEO/NbC6pX6Oh8mc0Mv+6sGU0lwxqEr/go63XY4gFjGs2hjFgJDvMsdyUoyba6WfOEpD+GDr9vgN
	iTPaQFUgRbIGNov7B88Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJprJ-0000000Duz7-32fw;
	Thu, 22 Oct 2026 10:17:17 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJprF-0000000Duyb-3I39
	for barebox@lists.infradead.org;
	Thu, 22 Oct 2026 10:17:15 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E80252018A0;
	Thu, 22 Oct 2026 12:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792664231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=msPdzB4l5La9U42uGthNSsOJDyJezFAuAZa/kJJZgEQ=;
	b=VKrCdbZEjoTz4lAZ5Xet7OnBqH8pOG5BrRBT52yJkLQ3DYM5ruYnsgVe//bgAycjQn4JMq
	x5twxaXSfCuydVB9oDl7BrgrBOA40MzfziBmFAftKaK+aRFKPlx5dRDlPc+eCjyqdJjjrv
	6E+uHiT2Etnzt2Tvh695BEf+HdNlnUlTbNs6cHgwfRxOCQXEsN+f9tM7JtIuICN2BZo+y8
	wwosTxli//870TwrxOY99A8EmKaW1fPXti/F9n4pFHvyX6dlV10nsnc+Q+tggEKpaA5XTm
	UCMbDjdILURbPrwTxfyw3ehgx5ITrGZOCUj3OJzJoVuQtE0ljNXYZOserfmkDQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792664231; a=rsa-sha256;
	cv=none;
	b=BtikpvRCludUhUSTPgSk4//mGAkOz/qIiSMTGyWeF1H7vyewqKpsVyo4D12mAzr2SqAO55
	9k4ORkP602suA67giF6mideeDWYQRZQBCCppiimhsZ88zlNPi2msY5v1fUfUndpwsfRqen
	Avkh6cYTcp55Lp55/7iqNOnL1wvPDarfH7HF5xUJIRVNAQZ5cBQGU+yuL2klCN51maSCge
	0kF18jbExFWTsY7ITWxRs3TNxo0IjhPv08HTU5FTmHzXFGFKsis6LiqAJVBilp8uO652PH
	OX8CxY9XYF4LQCy37M5L94d2/utlMqMfQXAgUlL4ZCZMTv++q1e/bnpzsp8KkA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792664231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=msPdzB4l5La9U42uGthNSsOJDyJezFAuAZa/kJJZgEQ=;
	b=OU3sFNBE7p3OqOj7YnHqT7+h95lXg5rOwX9z/ftodnf91Bt29lnt06VtulQLvYU2/C8s0h
	hRnlyEs65NFZLYG9fs4+8POctnwFZLbyvcjnvLv0KV0dBWDwbI09ThP87eHlFk3EgaczZ5
	wqBvHjosNv2Y/1sMmTrHqa+zM8KgoFepeV8tgZngnYQE2Ck1FlfORmtqMZEh7cVlqwyBJP
	SBIAGMV5g+uDWeBpgv2oNVGZpLWQ/RwB8kBNV5oqpbo1EwsJm9c626CRkCLskw8VDAD1Ji
	7tKRnEkEGyngkgW7whcC3iBYxlOrkNfhyAFGv+h9t1mIp08CG5ey10ZXj8g2PA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id CFF14FFACA;
	Thu, 22 Oct 2026 12:17:11 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
Subject: Re: [PATCH 0/9] symlink fixes and improvements
Message-Id: <179266423184.1236212.15186542461421072295.b4-ty@pengutronix.de>
Date: Thu, 22 Oct 2026 12:17:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_031714_003257_4E50AC31 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 20 Oct 2026 09:09:25 +0200, Sascha Hauer wrote: >
    symlinks in ramfs are created with the wrong filesize causing broken > symlinks
    on envfs. Looking into this revealed other shortcomings which [...] 
 
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
X-Rspamd-Queue-Id: C008E2021F0
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
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
X-Stat-Signature: pyiz6nnsxz7zj33x7sg73d87c53wfw7o


On Tue, 20 Oct 2026 09:09:25 +0200, Sascha Hauer wrote:
> symlinks in ramfs are created with the wrong filesize causing broken
> symlinks on envfs. Looking into this revealed other shortcomings which
> are fixed in this series. As a bonus the ln command gets an ignored
> -s option and also the link destination can now be an existing directory
> in which case it behaves like the linux ln command.
> 
> 
> [...]

Applied, thanks!

[1/9] fs: ramfs: report symlink target length as st_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd15bc4a65fa (link may not be stable)
[2/9] fs: qemu_fw_cfg: report symlink target length as st_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=faf272c35164 (link may not be stable)
[3/9] fs: ramfs: create symlinks with mode 0777
      https://git.pengutronix.de/cgit/barebox/commit/?id=ed5758686e31 (link may not be stable)
[4/9] fs: follow absolute symlinks from the root directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=e07c292387aa (link may not be stable)
[5/9] fs: allow trailing symlinks pointing to the root directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=c70e06b18b0e (link may not be stable)
[6/9] fs: symlink: drop references taken by filename_create()
      https://git.pengutronix.de/cgit/barebox/commit/?id=5dd90a4b5928 (link may not be stable)
[7/9] test: self: dirfd: add tests for absolute symlinks
      https://git.pengutronix.de/cgit/barebox/commit/?id=057ba9a10c71 (link may not be stable)
[8/9] commands: ln: accept -s option
      https://git.pengutronix.de/cgit/barebox/commit/?id=106a564387c0 (link may not be stable)
[9/9] commands: ln: create link inside DEST if it is a directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=d10ed69b6c4a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



