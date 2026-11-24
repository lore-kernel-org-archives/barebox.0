Delivery-date: Tue, 24 Nov 2026 07:54:06 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkPl-002iBX-0q
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 07:54:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 60A67205A1F
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 07:54:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DPnBXfbq;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EA9u5YMx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503245;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1XLpvLYKfnfkWea9auD7zVjsp5SRfhxaD8/9AqfeYYk=;
	b=TFEsYtA7VtHbIGx9gcY0HLDS9o9m1/pZyraZvmKc8CPh/Ja4TWudaPlaTMzF2f5xdiLVw+
	Pm3CtCtnYhLHFLZpQ1QniPG8beUdJyRokRXRfMiXyWGKpPMnC5bwLr5M6EsjBwNqQEng7R
	ZJDjY5iZdV5R32ozGKM/p8SXMKqgHWQgxiyaed9/91g7BqxyLRj9OXkqJ+qkkmzeV2LHdx
	isSQe3Qf60eUT6FRHfsOEwdSMAwIVJ3HXyQNt0M3SNYwwxWd94NhGcKPstoe0FdTF56fjY
	qH1M5LYKt+wuy77UqjeD/ZazeSJapaGHA/Nuy05v6SCmR4OC5vT0VAM3NEvbXw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DPnBXfbq;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EA9u5YMx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503245; a=rsa-sha256;
	cv=pass;
	b=LHhrPUxmdefQ7Ixe4e1un5qvlcV5pHrp9iOkFz/kpvvSdDjHmJ75C/lIrY3iDThJBmS4LB
	Eidu7Y8z3IyAuCGhLuOqIEfoxN0SJJjsyo1iAf4TavC/Yi5NSQDAzt9ROmkpUVLL7uFR/Q
	VSSOMYFBNj3MPLrnmQeRuEEfh9EUj9JJQatVAH+iROTeaoMQu/a5be21jRmdWwGAPlkJIH
	OVwafHd/ovYqVhbf2GxriADrBKEmqXh/ZQMKjYpPimI/GUgaBphoQ03XvAeAEpFY8u3A4m
	t/Z47W/Sjn5+m2vSWJgEyGSB9++pJvxG7dMxclXfWUEhagMH2Oc0SX8UEACbYw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1XLpvLYKfnfkWea9auD7zVjsp5SRfhxaD8/9AqfeYYk=; b=DPnBXfbqtk2RkB
	83vOv132vjlzNPJqMIfoKHBadoShyqIQzioqm5yQ1XW7NPbAAgRCkeDOMMN8RJAFsqoqcHNKZ+x4Q
	DoYPCOZwyVw3rphwppBEof5sFl0UPDBNeZdhnefo47ymBy/j6tJKLNlIoftdxgQWIhdUBdekBsb7V
	0MGwdoekZZ7ta2Z5G/GKZT9e4LsRZIz3Aqik+cOPB4md0VBf2bRFJbmfBv6NhjFSS9cpYdXT1Rc1E
	YuSI+bmmibVp45+cdbEkgt2qb8Eu7i03g+7msPVhXU2DRJzW4jK+qbJYcl3kwWH0uGW8/WOu9Adis
	nkrDof5J8LEZoQirdsUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOY-00000005g2X-3CUw;
	Tue, 24 Nov 2026 06:52:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOS-00000005g0b-07u1
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 06:52:47 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2449F205A1C;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1XLpvLYKfnfkWea9auD7zVjsp5SRfhxaD8/9AqfeYYk=;
	b=EA9u5YMx48uZ+EyLArOB5Z34jgt5r/dUOEqVMoORlSw0zbT9wMFuGn5VYPNxQbAVcpIQOn
	sAYpmzx/5hzLwDN151/JeWAnHJP6EOgjvbD9Wt8Y7LfBJ6UFWSK0PweuhXpv5YkWG0m94D
	6uKFMwiV4ZgqaY+ai3u/IFw7UgeXYNj9qH4jl/BtC/7P1bdUZXP8R4hJ++kX1UkRC3I9rJ
	/hoP7HLaVGL83SLZc9wrAEV8w38qvANNmWA8Mcjq4d0HenupWanznPpWDM11RTe8DbFrVY
	xKgpd+yB7IEBYZ3rsrgk7nTHovmTMGbMfF5ZigNbaS/5zF9zW4WdgNvyt0iiiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1XLpvLYKfnfkWea9auD7zVjsp5SRfhxaD8/9AqfeYYk=;
	b=L/uWm+m73F144enpxZ3OYDbE++XOvq9CcQoKYP88mvBTeIkF4nKO6DxCwnhlWuGFrCdabB
	4XtFVpXHR8IZZB1OlXRPrWe8eE8dBVrp4hoE70YiFoaWcGBuGbjr5WD/cMTbzX/yLdx9DC
	avzLInMJZ6DYn7bsA1RQekslBwd8pjRT9ruYcrGtYf0p9/Lg7iZp2rgaa+hvLaVvTkvzdX
	FhE/xdGMq/Du32dmlGB2BFMYQeZXhmmaLBEfBK3UuXeBney51tiC0DHSQORDSa1ALcS+Oy
	PJCgKjEtyqe1i1XK1MwAzOLMC87Dnz0NejMpLmjRohFzPxkzbzYIIxDjcMaWiA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503160; a=rsa-sha256;
	cv=none;
	b=S69oGvULR0ih0luP1nYjZdvUfGeBLSu90DJxfTywlyCrbGnQ59Y2FgeaV6nwphChgmiRXx
	E3N5sLrzY2PJlPHKrNaz60t8JQheRm+xCenDdphHG10novEAZ6aDjjw4kQhvucBIVsuZPJ
	ifbl5MRDo67wFQxMjaj9V0ikOHYyx9EACiLsDVznrFapmjfBWl3UrgsbIO49xvbfGA9npc
	F7ypUqiRDnk7wQ9lNRdOeRRkQz1WdTEqZsVT72Fq3F8tkw9PTyJXIiR1gcMPj7HuROaS4r
	EsVi6HYtCuSnFYytxCxbRtq+lu/hAd9jXjWitl/QS+gE+ebVJCBqvxFFZsYhiw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 040D5FFBCF;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
Subject: Re: [PATCH 00/13] fs: fixes found by file system conformance tests
Message-Id: <179550316001.350571.15158995715106903278.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 07:52:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_225244_456220_AC11C078 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 18 Nov 2026 15:51:50 +0100, Sascha Hauer wrote: >
    I am currently working on filesystem conformance tests and removal of > the
    legacy filesystem layer. While this is not ready yet, here are > [...] 
 
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
X-Stat-Signature: snrmqpinhfzqp18b5ip6s5ngjzdbhb3t
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.97%];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 60A67205A1F


On Wed, 18 Nov 2026 15:51:50 +0100, Sascha Hauer wrote:
> I am currently working on filesystem conformance tests and removal of
> the legacy filesystem layer. While this is not ready yet, here are
> fixes for several issues that the tests have found.
> 
> 

Applied, thanks!

[01/13] fs: ramfs: zero the rest of a chunk when truncating
        https://git.pengutronix.de/cgit/barebox/commit/?id=39bda31d5e8c (link may not be stable)
[02/13] fs: fat: zero-fill files grown by truncate
        https://git.pengutronix.de/cgit/barebox/commit/?id=ae8414d69a07 (link may not be stable)
[03/13] fs: keep the file size when O_TRUNC fails
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b2038a34f9f (link may not be stable)
[04/13] fs: legacy: return -EPERM when a driver can't create symlinks
        https://git.pengutronix.de/cgit/barebox/commit/?id=de23375dd953 (link may not be stable)
[05/13] fs: uimagefs: allow opening a file more than once
        https://git.pengutronix.de/cgit/barebox/commit/?id=4843f04cc5e3 (link may not be stable)
[06/13] fs: nfs: drop the write and truncate stubs
        https://git.pengutronix.de/cgit/barebox/commit/?id=dd342451bd76 (link may not be stable)
[07/13] fs: fat: fix building without CONFIG_FS_FAT_LFN
        https://git.pengutronix.de/cgit/barebox/commit/?id=78244e20804f (link may not be stable)
[08/13] fs: bpkfs: skip the data of ignored duplicates
        https://git.pengutronix.de/cgit/barebox/commit/?id=d4b2efb60f74 (link may not be stable)
[09/13] fs: bpkfs: allow opening a file more than once
        https://git.pengutronix.de/cgit/barebox/commit/?id=1b56611968f2 (link may not be stable)
[10/13] fs: bpkfs: make room for the NUL after the checksum string
        https://git.pengutronix.de/cgit/barebox/commit/?id=3cbd5bbd3cec (link may not be stable)
[11/13] fs: pstore: read from the file position
        https://git.pengutronix.de/cgit/barebox/commit/?id=5b08a116efc7 (link may not be stable)
[12/13] fs: pstore: don't free the records when unmounting
        https://git.pengutronix.de/cgit/barebox/commit/?id=0cacedc052d1 (link may not be stable)
[13/13] fs: efivarfs: zero-fill variables grown by truncate
        https://git.pengutronix.de/cgit/barebox/commit/?id=56237ce1e54b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



