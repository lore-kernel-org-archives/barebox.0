Delivery-date: Tue, 03 Nov 2026 14:43:27 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOEnP-006oJK-0M
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 14:43:27 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 40E5320282F
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 14:43:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YO5NPX2f;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZtI9LbRk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793713403;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=BGeOaNJdkWSK41hWsnuHwwkOvAMGChzzOArMPAz+bCI=;
	b=MvyG1d30RNO2gT14b4rgJ/yvZpdxU1RWQipzBFHWL6NQr7d9K3lPeYIHbWCWlC/n9oZSSt
	WUEnI6ecuXL9mg8za+ELazlHS7EBRVwkdlAS9pof1u848g3v4QrM+cguv4s0oNdQWXYig6
	RMOwGd5wFwJJtUTjyaIMrJIx6vi/rGSt8ySrK0DlY8awifSUcftku6yiw/g2TBXmjY/kIW
	927pnRvefQABUJNnGFijYgbr1opvM1kpHykR88UmTu1ZHKAu9Y3pkEMOuqdm6nOTNtQv56
	HWZguMt9MO+ugzFFBF6UX8bdhnlrLI3F1nv9n2w/qeAJ3RJUQU8j4EHz7etr/Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YO5NPX2f;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZtI9LbRk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793713403; a=rsa-sha256;
	cv=pass;
	b=VCVFpmeeCmWOIarIY8vRXh/PeWWt39kMpA4XpUCSygpMFqtp/b2YT1+ExmUgs4VOm+g4ps
	5kaQsmdMj2Q0DFHOo/Vnc1gEa1xQZ4bjT5Eim79uwb2PDSRFUhAOKWoTw1JHQqlPOjob03
	70VmBI9BuflxnDSeX+G7n0I2+7batQ1TYa3oy0aHH/oaxYRmHFM8kCm8udCzSqgICQWcnw
	JIJwgRnx4ziNOshk3RRjPwoWQfqNYTn8UmGtS/hSb9DfcbcNf9llRFp9HLDi1Iph14WGIA
	pi83ixWvP3MWUO9in6sdoUyBFFirsm0NAbwJvGfRBFotZuGTrVMkf39fawYxKA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=BGeOaNJdkWSK41hWsnuHwwkOvAMGChzzOArMPAz+bCI=; b=YO5NPX2fj7hJQm
	QX+UNOnobPyMFFDnmw+fSJJMwtii2hGs4AEqpsE2ACfNtmrd1cZbI9G+mSBQBj3ckflOkvsl3QrRa
	3iBYwGRFNCnEX4nvA4gZc8lHtLamXs4K+lw6JhSaKeEwu27589QAgXopA/TJFOemPLoiT6YTmcJdZ
	h2L3YdfklBg3ibhzjd/uHKBljZ87cpLwMURiqUSV0BKd0jVHhrTAI44QGv3ynNLdXFUB3oJnMPDln
	lsWqNqaCZBDSPfUqwpFx3hhAxyfc/jkuuWpbz83XpreDmx7VBtEKvwHBJBqYm3DcEUWhSbownGM3Z
	qhxbR4TEaC6+aRd5FPuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEmM-00000002bFW-1tL3;
	Tue, 03 Nov 2026 13:42:22 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEmI-00000002bCr-24jJ
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 13:42:20 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 491A9202806;
	Tue, 03 Nov 2026 14:42:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793713330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BGeOaNJdkWSK41hWsnuHwwkOvAMGChzzOArMPAz+bCI=;
	b=ZtI9LbRkSpJZ1gW4hFx0CtqvP0L14ZYGUSPq4FNQVRBu6YUvAnLqsgxtyUlx9nw8bgz7i3
	5C5gi4OUNGxsXNO8rM2BVx2jTbe/FwsGMURnTz6W1bvBl2thY5UHpOsgUWm8zOWX5mMrgv
	VQhVyJ4/PLwhToV5xhk4iGdnGb0dzupOew+HTRIVUIs3BqtVMj5r8PRin+KAISt+bvD1Jl
	H/lf946qSE9rKzSjJyc3YBB5iDABYMcd8HyiEQbK5zbLZMltJru81T3Yk61mkeR33JczKq
	Z+PdHTWVJBTTBVE+ydyLWJMHtvluw0keOZzgh7n7WvGkKrirZYMpOdZe0h+4QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793713330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BGeOaNJdkWSK41hWsnuHwwkOvAMGChzzOArMPAz+bCI=;
	b=PzoKnmqicERk3sCnxS46DDIUGTF2vaUfFzUiZezAUC2zr8uvsQH0G9cEdt43Az+sKtvkjz
	PWLTy2FTPzft6ylMvsaPKjiClVqjqWbPmN/HL+UitCb1G0YyZVcmhByyH6oyhcLrvuyfGA
	3RTC+Xy0MkL+TX5eo/cWBxjY7FSMRMTXcizwNT/Bhko7qeTW5EiLJsoYMRKWNw2t5zHn84
	kka+vuUHZhBbiuxEHWRxjsYROltKsRVaiJO+RwYYFMBhMWAUNu8hUXMeQ0cUmup7jefxT0
	c+KbacJOjd26ltXdyaM58tOfe6a6kedllT4ddJUXqNTih9+oKYG6cAVAyqCWBQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793713330; a=rsa-sha256;
	cv=none;
	b=a4v+HN6xmKHXWlc288qNUNGHiLg7bDva2Wo3S40MaGJMeVTYtDl0jEixD5MqsRX/BcxoYk
	lXa+4ISitwuaxOxDSgJsjujfrI6Tm/X5d5dKVtnHmm10ACkmO/eyECH5M8IAFptSUM3/bX
	csIOr1TRyN+P4QjK8NTNPO7GvzhYA+d1hbGTdhZgsr1s+nlK3d6dKNxs4j77cKZ2xlol/v
	n6Gru3m+TVokResOYAH11vMMMzCBSvMH2YhIs1lQ3JtOfk/dQmFE3BLK0tDs5j2ViPPos3
	AS3lnW9Lr8qsMoy3kHTiSZX2jpNjV9U1l8MotOEztmFf0sY5wLX8wWEyiA2Xng==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 3CF1EFFA72;
	Tue, 03 Nov 2026 14:42:10 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261102145302.3025815-1-s.hauer@pengutronix.de>
References: <20261102145302.3025815-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/2] fs: ubifs: don't free the symlink target twice
Message-Id: <179371333023.3383937.9268461331664526999.b4-ty@pengutronix.de>
Date: Tue, 03 Nov 2026 14:42:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_054218_772012_9B3AFB57 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 02 Nov 2026 15:53:01 +0100, Sascha Hauer wrote: >
    ubifs_iget() makes ui->data the inode's i_link for symlinks. Since > commit
    66666e887c ("fs: free inode->i_link") the VFS frees i_link when > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Rspamd-Queue-Id: 40E5320282F
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
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
X-Stat-Signature: gf6w41suxkie4s64tsqau4agnafpa9yk


On Mon, 02 Nov 2026 15:53:01 +0100, Sascha Hauer wrote:
> ubifs_iget() makes ui->data the inode's i_link for symlinks. Since
> commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
> destroying an inode, and ubifs_destroy_inode() then frees ui->data
> again. Unmounting a UBIFS that had a symlink looked up thus ends in a
> double free:
> 
>   !block_is_free(block) && "block already marked as free"common/tlsf.c 1069
>   ...
>   (ubifs_destroy_inode+0x18/0x2c) from (destroy_inode+0x38/0x4c)
> 
> [...]

Applied, thanks!

[1/2] fs: ubifs: don't free the symlink target twice
      https://git.pengutronix.de/cgit/barebox/commit/?id=0d77ce844730 (link may not be stable)
[2/2] fs: jffs2: don't free the symlink target twice
      https://git.pengutronix.de/cgit/barebox/commit/?id=ba365e56c385 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



