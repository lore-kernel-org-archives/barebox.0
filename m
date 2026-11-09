Delivery-date: Mon, 09 Nov 2026 10:09:50 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQLNt-008yGP-2L
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 10:09:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E90FB200FB6
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 10:09:49 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HPZyBmSK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="HPP/ZudB";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794215389;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Q2kcb0RN/yTuJRgSsHu+fBiJ9He8RiB1xjTTyxGZkyw=;
	b=evQvpeYZiTC/fonShYsM/cT5asmUW7VtvWdIT6WCCXjUXa3wrJDI3LUmkHgwKnhE3nDY4+
	+1kQchlsth3ig9Ze0swrI6QLfxAtxmVmWiquMRbNtqGUMB41i7sEpbIBLvzVPI9o/SNls5
	3JFovs2ujcoBlVleiQJehyQZ3kTE/4BnwRK5W21FWuLiFG/ArpHjVcvRF4n4q48gxRnMZA
	rNigXNM9qcmaM6ETuWeIKm5xWNs9KvwnpUkxv46u/lH9LgK1YyrrOTYP4QqdzGb1cVyKXg
	/6xb2bgW17qV67lJHlU9ZKFyGjnmWarXTSrFS1Kl++F+trOG09YS4mfBCtaELQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794215389; a=rsa-sha256;
	cv=pass;
	b=a0ZKKP47T5YXS/TQRCoNaw0hOrVcwDeJnbn6fNHVPvla+GGyeXG3364pFH3a0MyKMaa1VZ
	9TQyq3o/zXRmfBHtbv4NNdl89Rv10mRzcLeEtatbsgvrHTqO9E8WnVgJVDyIVRu+ac+5Oa
	pA9LaInlyR7jM2yK2Y5g1+8OcFKjHtQDwVZXjglV72THRZfR92+ksbHkDmLU4c88USuPEG
	K4GFu5B6FruPRHqipZE+CnzvqDH0xybhwdWIwGoa09OMOfSuheKDmVR+mn9F/9G1+0BqmU
	jNEK8VS8M5UYJ9aQo6eEqPm7gdjv4S8SUajrufJ9IKNjZwIDmVjhGN0Ftae2mA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HPZyBmSK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="HPP/ZudB";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Q2kcb0RN/yTuJRgSsHu+fBiJ9He8RiB1xjTTyxGZkyw=; b=HPZyBmSKrYAAPz
	enwCdbzEr0gtQO/lhGwg/jcjeUSgFo11kwQNCTGGbxt5aHcvW1iMYrTfc8k6MWoHejVGBQFFNU2wW
	BnAxECi2Xx2aprAh2wZvcquC7EkNWjtBbZRG0jSQ+shM8hRAWjFMbAZ11rfbYSvpe84i3y5yExYzS
	XDX1iagoit2KoNjTQyy7YMgh9WdjHrlEW3jFIvDtufM74DhoHNMiix8BkbaJvcD94FDN3sKta9LRK
	GTFjjhRknIx1NQt5vOcpDa4+By3ZeHsPzMlEvN14mkaJQGHKUipchLTG1lB1osbLTrg7IzSExNcay
	u33XiKxJ+M1DI5LaXdVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLMz-00000000AVV-0fDC;
	Mon, 09 Nov 2026 09:08:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLMw-00000000ATu-0EDV
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:08:51 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 68042201771;
	Mon, 09 Nov 2026 10:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794215328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q2kcb0RN/yTuJRgSsHu+fBiJ9He8RiB1xjTTyxGZkyw=;
	b=HPP/ZudBwIkTeXWTUTaDdrYGaajeUWtRNu/vg8DiPKCsUxOtXVMiWARkjzYGkMrt/lFtnO
	NKRcIffiWNXMwac+MPins5BOwkNVrd9ADC1jlHZV3wPjYU2CH2+y3llvH5s9AZCQAdXa5T
	0O0U2vBuf8k5fdHcuSfdrLpMspy39p3rlLdQidcahlLAxedqZrkUa7xPdxZxDIpza1btpZ
	zV1FJZ888gh2gB0kStfUZxvhm6L+dycxlRHYE/EOFDxDg+1A/vlUiE6SElGBiHtFlqcTwC
	AfA3umSIjvQMkCpLaB1Pl5rg3PlobHW+eewngNourrvNK7BhGz9s3A5oKEPo9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794215328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q2kcb0RN/yTuJRgSsHu+fBiJ9He8RiB1xjTTyxGZkyw=;
	b=Sbkq1iyKWSw+fpBZ0bpyKUkFvDQIYtzAKusZsrek1Qm4UFsfHoNj713tvMuxWzX23NY3js
	a4ORToBNogfu8xZTIbDxPswicxnT6MQ+vbTByMJFGQ7MixYhnxuBkbY+EZf10xjM+guZ0I
	DkntLbSXysXIhHnr7H+npClCpnTi66wrV9id+hqCY/FFo2D6sUXqO+4tCzlgSvAJufXQrw
	RKozttDanXFk5W0TXD/B82xJgpnoMmKAeJbc0sI2rjUln3sbFr4N/B8v/+YJ0rGdBDcxsh
	JcewMQ3I8/JLnP07xrS3krBtAZGKJm2wRAczC37sCz9jQoSnkHehMWjpl8DhVA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794215328; a=rsa-sha256;
	cv=none;
	b=GQpRWChu7+OG0HxEBaAcni6WDmqeaAKNoF3zzF8sy6Oem4qNWpZHabjt0y1aP0y5p7J45E
	3SanVVyG2TSqA3y2cEEnQAkNH7x21fGh/rux7Li+I4UxMYfMEMHXiqt7Cyjp6CRE29WA4K
	QOhmvWV4X7FKUuRsM/r/00hwup3BURD/yxh8aAE03er8fRo5XA8Uy2GWT1og7rlx1HbbP9
	2Z7j2lNsS8DDef3LgFyjNb/YLmvdM6WmNWDXcGsafvilbrm7hZLcp2w6iZdej/65bb/HL/
	+NlRawIUeOKVIewF5T2oZ8lfFW7v9WshmY6gOlZb9jFQwhGjy6c/0XSCK3d9mg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 57D60FF898;
	Mon, 09 Nov 2026 10:08:48 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108134040.1324667-1-a.fatoum@barebox.org>
References: <20261108134040.1324667-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] input: don't queue keys while the input console isn't
 stdin
Message-Id: <179421532835.500861.13163098795392567406.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:08:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_010850_451127_7F28A1B0 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 14:40:37 +0100, Ahmad Fatoum wrote: >
    Applications like bareDOOM take the keyboard over by registering their >
   own input notifier and deactivating the input console. The input con [...]
    
 
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
X-Spamd-Result: default: False [-60.43 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.82)[99.24%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E90FB200FB6
X-Stat-Signature: c6py4fcwqhxidzum941m83mt917ujsda
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 14:40:37 +0100, Ahmad Fatoum wrote:
> Applications like bareDOOM take the keyboard over by registering their
> own input notifier and deactivating the input console. The input console
> notifier keeps queueing every key press into its FIFO all the same, so
> once the application exits and reactivates the console, the shell
> receives the last 32 keys pressed during the game.
> 
> Let's only queue keys and start the key repeat while the console is
> actually active as stdin.
> 
> [...]

Applied, thanks!

[1/1] input: don't queue keys while the input console isn't stdin
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc1c4aa8c477 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



