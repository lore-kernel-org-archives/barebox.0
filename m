Delivery-date: Fri, 06 Nov 2026 11:04:01 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPGnh-007y1X-0n
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 11:04:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 75A0320041D
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 11:04:01 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H3O4sVGI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gtXwSvni;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959441;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7nEq2Ld0v59Zrlstbj3YNrSPvalUDZy25aB6s3Ea6fQ=;
	b=TIZ5jleZdNRK15xDTOmmcQbDTZ6GBxLySAkhpsDVptKDwLaJ6ZLAuvW8QGka4LKWksFYUx
	h+Nd7l9C9WhtHgu2+CF5N4Rbdq9mJ013pG5XYF7B7VwoP0TsinsXk/8nMwLhxjMPI2XRnx
	q50n2d/lChs3sbc5EtWxfrMk7+WhmFp5GMohyJM9xfRRnjwbB0lSzasdmWW+wZj9kxTixU
	MkY/IhjiSHl1dGSye7xj3n7pq5QK299EBc1TZmPOIO2km4V9L7X3w+L8VTZ3GMroGd8QHv
	eyXklvkln6QkSm2jiblKoYozoX9GCq1TKsMeP7ZIcdFFhiJrediVjg4GLjuGsA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H3O4sVGI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gtXwSvni;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793959441; a=rsa-sha256;
	cv=pass;
	b=C+2G3TJCneC3jDHeYsdLEkQfbFpU5P0kS0idlnxVm55PTSwzGU7A2pbIEyhZwRSRN67gHn
	voa5cH4SVH9+N2lDYzBIUPaRqyfsxvzEjDfsIowGUvVQ1a00z+sqyW3a7KlvZMNfKb9kvt
	XjFu4y7WzcQVvrYq2BDsr5qMvNOJTa1R/FIlycFb2r0xy+JNbQ/ZFiiaIfMuvSkmPvnEMx
	RGDTKJ96rigboXrDvZMu9GzOLezpkEM8os7XgDlGrpWRWNJT78bZ2GwxSubqQMe3wgXDPG
	394dUVJKOaj8F1F0/LDvFHFN4PIuTdZxvD695fcRKn5nyH1RkBuNTwShZ5zWYQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=7nEq2Ld0v59Zrlstbj3YNrSPvalUDZy25aB6s3Ea6fQ=; b=H3O4sVGIuVDa5y
	16nednim/anGyuO8V8CerC7OZDLypi7Nw5KwtBfxqzomXrAKWAdqw+U6rbCOao4TwAeyIBLFuGUvs
	1kqMQzvJ5ffD45SvknyOuQgXKH78/wVBRpuHvt4JOH/lwOGRYkt9ySPvxzalgCYLoorFCz4LCsgpo
	QaAMJnORuHjZa64g/1xslKgk5hugIAPFkHoTXEGT4c9mF3WwTye9I16h1zvnomuurib9zlkM9FSUa
	1eZlkCyIlPsotaUNG8mAMO5NowhDguEXzwJ0ttY2+qeO/XdtCFmrVIrJwwDqA8a45iiQEpVE3YA/Z
	oRJOOGDa62DBTZe/e6HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGmn-0000000Bq4m-0vjZ;
	Fri, 06 Nov 2026 10:03:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGmk-0000000Bq4U-11Yq
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 10:03:04 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 88B8A200B4C;
	Fri, 06 Nov 2026 11:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7nEq2Ld0v59Zrlstbj3YNrSPvalUDZy25aB6s3Ea6fQ=;
	b=gtXwSvniHi3t+Hg/J30xPUaTZihiKmej1LLM6nMPkrfrZJ9Nk0xXgaesT8Yn1OedCPn979
	hRMY17DZvVv2Rltwi1007A4qe/a1Bv9NuNuGdXc3yzHynW3G0OQwIcgDLtWV+twbD9Wg6S
	7/PF27bKSglcMk6F9a59XQ2H7Y122tWQctg8CUQhwyKPNhWOCIpkhaJVPOEea839Hvh9PX
	qAl+ZsxoUV75EZaAg7xEJU8JxQbFrXNutpescYxZslP0IEqw9fEGUtJ+0ToOHrV+wUCfog
	RN49vhwaxALjlSs+XCTUb/OylxTSQ6sdcAxNzBm8VPxpKGShJFXq3xOBrb2NtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7nEq2Ld0v59Zrlstbj3YNrSPvalUDZy25aB6s3Ea6fQ=;
	b=gv2Z78tFnQXJjFu0rUDvxgbLMeITGDBvC3NqiA/tg6ZSEbiDC14bPpyIxODnNRefDPTu1X
	O3PFj82zmvYilR0nIGsg1/eg1QBp5lIOCx32OYaQK/uf8pguaUhPPxMU+JHRE09QFH096z
	OfUteyHsCVFQDsFaygCJ2O++dyiWmeP4arr/i1ZJ52zMqt9H/8JYVqB8UG7MUzZeg6+acZ
	xsV/qfpeYmFllpXBnZVD3FS2XIU64WZBMH/ePhoziXbpb2I2xgvkljYWrRbKfFz/5ebkRS
	QCei1QWfbcTkXZnH3GWg6dAcmOWZ9KTaa+JeSpZbukVQ7P81gueL7TCZpdLmvg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793959380; a=rsa-sha256;
	cv=none;
	b=OAdK/Fa74xhPs/QJ9RpbCP2A92tMqSvLCHWrlqMf3nP7++hqgccfGouVY0rPQ8VTb0BCfU
	FFtz3v8B2h/s4eXpDs3ORjKMgCmb26xMUumXJs5qAUvfDwQ88h/J+ir1atWRuXEbjeQK46
	Txjk8I3/SI1nJXuxspkntvLoMBk9CYNw5xDpZMLv5+LRTYgyNjO+yN8oQ66e1qdnKOB+r9
	GrDfEEAeNT802VgipAYx6gpJkSwkLYY8HvAM/MP0DoyIvbWGTgK1P//nlNaaXE04iGzpLF
	sI6rHhncZq0E1SqZIBRBujOI+8Pq1KAS0jHS0NZdGgyp90ohHQQ2wJ/iajItYg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 79654FF9DB;
	Fri, 06 Nov 2026 11:03:00 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261103143059.853339-1-a.fatoum@pengutronix.de>
References: <20261103143059.853339-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master] efi: loader: disk: don't install a file system
 on raw disks
Message-Id: <179395938049.4004203.2177741703369144120.b4-ty@pengutronix.de>
Date: Fri, 06 Nov 2026 11:03:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_020302_435155_EE30A638 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 03 Nov 2026 15:30:59 +0100, Ahmad Fatoum wrote: >
    efi_fs_exists() matches the detected type of a cdev against the type of >
    every registered file system driver. Drivers not backed by a cdev, [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 75A0320041D
X-Spamd-Result: default: False [-60.54 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.93)[99.70%];
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
X-Stat-Signature: 4z8jh9ipayr81f1zccixxp5mgkodgwec


On Tue, 03 Nov 2026 15:30:59 +0100, Ahmad Fatoum wrote:
> efi_fs_exists() matches the detected type of a cdev against the type of
> every registered file system driver. Drivers not backed by a cdev, like
> ramfs, devfs or tftp, leave their type at filetype_unknown, so every
> disk with unrecognized content matches one of them.
> 
> Let's skip filetype_unknown like fs_detect() does, so raw disks only
> export Block I/O.
> 
> [...]

Applied, thanks!

[1/1] efi: loader: disk: don't install a file system on raw disks
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4951b1e1d52 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



