Delivery-date: Mon, 09 Nov 2026 11:10:59 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQML4-008zFf-2s
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 11:10:59 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1DC8E2006AF
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 11:10:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iDkyHDyW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Pl1Vnu5r;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794219059;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LLLeSq/tbJUR1vqL0BuGQah/EwYPjeowL5rKrLHd5Ns=;
	b=GeCgbYOqbpIwHD1ynm7j5kzKiNRxwVvgpKUp/T3/9TKIrzylX1KfVUFv1msdiwMXPtwBsv
	IMvVahl8blL/7VD0ZMxvKj3LqxFX7bV40IJSbkYOLsX2d2DVOpPnmPv9sx0yTAysxFyqF/
	N5IRG449QJsL4EUFLtSONgTsVXbL1LsozGgu9iWX5Bdis0pxlSuDWL/hNowkLNZ0r2/maG
	lUU97LYDgCryK/cWsY6uIKSoL1RmlTUZrvMYpvOyA5tctGSqJ03Hp7JzK6v9dQJ4GA9kNH
	qxhoi8cHGUBAjOxyoUBzQ/sGs+LDS2R/ssJFZcAv8WaXYdHSxBBpuo0STjEAUw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794219059; a=rsa-sha256;
	cv=pass;
	b=Mq8XJ1AG69aJZNUN8J/uili2B6wDUR7JsZbR65OZ5H44rEhVPbwEA4Se2V0ycQsHpnVHqs
	u2GgXDqTmw1+mgFPQGdm39tSK6VwCEjMK8r0QZPtIrUPqBCTXLeMhnylkAmxHbDKn9vXfa
	J4Y+dTxNEqB7xx3CV0EgTpOVOXxFcGp+fwRVS1hLzPXz1ZntqESjUiszvfUHEw9S4BwMPG
	hadAjF4AUjt38Ut3nky4/y0fsDnPiqYY6dQk7OiQ0TfsK5VAJ39VhIyyUur8FveJ3ErbWF
	g30OWNkbg9UlZSvaQc2W1kBzyZs7fGkk+VQz4JkHKC0e1BXWOyygitL23UJiuA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iDkyHDyW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Pl1Vnu5r;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=LLLeSq/tbJUR1vqL0BuGQah/EwYPjeowL5rKrLHd5Ns=; b=iDkyHDyWTNZAAU
	/6OYmQw/o4KY5MfwTvSefO0Y22cBRIBQTn3PUUS8bHqCSzI8+XIb0srjV+E7lqQn3Rc9DLGkOgpR8
	yMjG2Luu4nvBX6ht7CJpbsJrsbESCz9t1Z9yQ5nNw+juon/u7KMvwjvFptZmAfi+RJnklvJ86S13b
	2odW2f5SeHX5HStUoSwOoyfz3VebPPjsfDwVbKHrQ+RSegtbxSRHu1HGj54PVPNBkBiqHO4P2yy1Y
	zW3ePEOlS/1MIFgTdPGRJhGReKM1csWjWoA6GVJS2gRo7LoZpo3b9lzYrzSrySKKowrW2gxo+EauH
	k8PnTqkDP0kLia0rVGeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQMJc-00000000N5Y-2V1r;
	Mon, 09 Nov 2026 10:09:28 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQMJZ-00000000N4M-0A3x
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 10:09:27 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D8642006B6;
	Mon, 09 Nov 2026 11:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794218963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LLLeSq/tbJUR1vqL0BuGQah/EwYPjeowL5rKrLHd5Ns=;
	b=Pl1Vnu5rHpvSI+ey7WzIje8jkuUcFwwb81ybO2IW1RuMI+E6gcjMQiivOLUOREN66DYcFP
	qLE9cB+hFbBAkwYEM9c5em5Pu0C59/wfY0eqZ3sGHvrIqp0PlJO1bolf0oJabjeIwaoghG
	Oca7Th/C5Dd4HK0md0mcubYNOto9svYw/A2zUBKd5zsp+ClYo1gX/46gERxozPrc9fv8pc
	vAWoBQKtcSWxGqSMHvluV2uOC92oODbZzaivQs0hyzzG5rUNt/ZwUPNIk75hNupZpcr191
	4+8p85jaaPiV1NkqaYVWCsqZ1nUPqP1za+VHbcRaL2GZnMsIetXUUYngAJEgaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794218963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LLLeSq/tbJUR1vqL0BuGQah/EwYPjeowL5rKrLHd5Ns=;
	b=ey2YK6ydjsQ5gvA3IiwnoHgsH2uR7gMc/E98cTBnQPSI+Ynqr0/dVrs6b1pDVtvv9pD9QV
	faFrHVSn4pW9XyoN3ghQQetDAU9Qc8LRa+KryZ9cWflOagcy1XNfK8R4JYboPJZKV8RsXk
	su8018XifdphqCG5Jz4Xm0KwUlNVh5Guj+oyRB9V2Zs0F3uUpnIE1denF1lG38zynxB1bN
	8nnlI6McdsIRj4P76ERrQ2EFiZuwSJ/eHW/ngUpb2EO3YbyqxHmI6z38nbj1pT2Pgl2IAn
	NDQ2d2OZ3nlvOk/eUMlpduTUBZ0vXxoME6a9g7MBXdUDlplPzOX3myOhF+W1xQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794218963; a=rsa-sha256;
	cv=none;
	b=Bo+W2cPJ1tM9UX0fg1m1f2krHNQV2FSTMTBW0Z0gKLSe4v92gWY9KAlE+2ovSHT7TTvRKk
	lk1gfnUu9r2fw9IzF1u4gXCTyVjxB7BS2kuVuu1+cy6YJCDdAwTtH4y6OLBNbCwjmKMrQw
	Jo4eNXdhou8ktyzfBhBULzjUVzokB7YtFK4BopAu6fgwqF8WP9xR9w4wdKVrOPmN1AnOYk
	xE+HiZsnwC0ffLsrlusg1mjFFi42s4Qwu8yU1u9Vt9lZlfRrNcsTx2z38mPhsUUUthKgcV
	45thanDU/k0kR3w0iwmOT4+Y1gWjjsz6H+Vqg3q/IwU9Hkgo0cuJkwe0/JVQfQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 120C3FF961;
	Mon, 09 Nov 2026 11:09:23 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Michael Grzeschik <grzeschik@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
Subject: Re: [PATCH 0/6] orion/kw/mvebu: stability/usability patches
Message-Id: <179421896305.547123.11345581951597704816.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 11:09:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_020925_232924_24750913 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 03 Nov 2026 22:31:06 +0100, Michael Grzeschik wrote:
    > While porting an older iomega iConnect machine to the latest version of
    > barebox, several shortcomings were identified. This patch seri [...] 
 
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
X-Spamd-Result: default: False [-60.45 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.84)[99.32%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
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
X-Rspamd-Queue-Id: 1DC8E2006AF
X-Stat-Signature: icw8x44jxgzmitsywjjkjnshhj8czsyu
X-Rspamd-Action: no action


On Tue, 03 Nov 2026 22:31:06 +0100, Michael Grzeschik wrote:
> While porting an older iomega iConnect machine to the latest version of
> barebox, several shortcomings were identified. This patch series
> addresses and resolves these issues.
> 
> 

Applied, thanks!

[1/6] images: mvebu: skip images whose binary header is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=416f2bb9116b (link may not be stable)
[2/6] mtd: nand: orion: set Hamming ECC algorithm in ->attach_chip()
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb123a5a4372 (link may not be stable)
[3/6] gpio: orion: do not let banks without alias collide
      https://git.pengutronix.de/cgit/barebox/commit/?id=510832890a99 (link may not be stable)
[4/6] filetype: detect kwbimage v0 images for NAND boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd895a734a3b (link may not be stable)
[5/6] mtd: nand: orion: register the NAND device as "nand"
      https://git.pengutronix.de/cgit/barebox/commit/?id=2cdd3e96572f (link may not be stable)
[6/6] gpio: orion: register at coredevice level
      https://git.pengutronix.de/cgit/barebox/commit/?id=35c777ebfc40 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



