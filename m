Delivery-date: Tue, 29 Sep 2026 09:03:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBRs8-007aVk-0i
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:03:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 02991200B4C
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:03:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2xhpnKMm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZWZt3ZvH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665408;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tVlZxSkLJjhBmIh7W1w0O/M4upD6YrMKtAqU7Cz8gog=;
	b=VieXMDLkifHpYBfVDQ9aKpdSlKvfIMGEwX7uwXhqg5j5e8aUZK9es2oYbf6NCZq12g1Wys
	8zpkjS9975H3UaeIa7sZcNR9B8yPqbTabx6uGT91qsCwt6ks+iXfS3dfbJK8Oqami1xhok
	czv7nDsIa6o+TD5e5YZ2IJ1CYnoF4O2CofXNflFNGSZz4IslteDoWr9P+XSiQ3YtJNpbxF
	3KwWiq0drZJCjVSCdlXZ+CxZZanfEzqcDPJpZi6zzOa/mTmKvbUUXS6evZh8/PuB/FpmsI
	J098wmizyHzDxUY8zkbeUHFmWnlX3rBXI4SGIz/GWxxOX/d3QWnH5xmnDCKlhQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790665408; a=rsa-sha256;
	cv=pass;
	b=MLvjUSLbfLb9V6K7lcrEHUZuF+kalE2JgHX/tojWQ6e1br4F6xulWM5uX3sPcF7aA1W2FJ
	Jhz0RmPSkM1SOK9XwXKLycKvDkr/alkTazA6swqBrvVxkWnBU88UcvQLDruO26zxaTLOv+
	clT1N8mkj8GbOSoHRqMz03610+FjFto5F1m1lId5u0af07IL+cI8StqrHmJ6HqOiqPvlRm
	eqKzgQ5uszFpWz2milSghRdxZKOBx5ZSBx6cEB7la/K8fS9QbJ5Pz7xBtLFiTZvwVrNeRl
	D4PtKM2GYXTqFiFIITcxyRnHKJ8eNU3AhJiuwz6uRK+AG9HRVZs5Np5OnhmMGg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2xhpnKMm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZWZt3ZvH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tVlZxSkLJjhBmIh7W1w0O/M4upD6YrMKtAqU7Cz8gog=; b=2xhpnKMmpRw5QF4JVV40jzHjNa
	2lgUYvTEgMjEnMVXJOVNMemvoQCmW2lTAEPV11c13sC5Gii7ERMKJrylB+J5UZ/r8PfXaznqmCKFX
	TFs6hK35MH58+8sPjcDpX2jbRyEmxBcgcLP7qbuMjv87ZeAeoA6K27FKlRpXn0EcjL1KsmZlBAAtC
	G+4XKoJEb9T5I8Uq9QSOY9DIvkaTD7533TX0RMIOG0UX9WPjhPWmJNRIemQ3EQwJ8+Cu6OPZiyEYy
	/CW99zXD0S+j1jr/Q0HL4dhUti73yOBbX5V87bYlcGjkWJA4iAc7K8jzyruNJdfwmVVMv8rwZlD4R
	ovcQ0GnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRrl-00000002YFT-2F34;
	Tue, 29 Sep 2026 07:03:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRrh-00000002YEI-2RKE
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:03:03 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B073020168E;
	Tue, 29 Sep 2026 09:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665379;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tVlZxSkLJjhBmIh7W1w0O/M4upD6YrMKtAqU7Cz8gog=;
	b=ZWZt3ZvHs0QMwgBe4fSz29wNjqs3CAdxa4eR9S1wGQA1p12Em1D0rzzGHB6Uyu7l6V1rQ4
	rym6vxzg+3ZuVNGFAWeoSVJ5SC5tUt+2C7yo0knasj9+/R6kNeeb1R9GLlB1LQoOu5+jBf
	5OMKSNXSXJA2p1Uy0QCLhjHll5w60Hvmgk+al/T4PKjfemk72zMbn1lVu7rmVBekVnnP2q
	ocGnagTxH5/Rnxbw2yD2cAFc7WHA/USgyGjqrp8kZnj3EhEMtu4lRrmPgi7k7QLCD0OhIP
	dJwVP0fBTFdnfOruQxzf34PSNx4ETzXrR6hf4E3yOpK3MM5TQsRBoaSzu+LGlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665379;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tVlZxSkLJjhBmIh7W1w0O/M4upD6YrMKtAqU7Cz8gog=;
	b=IaPJq28/2RSug5hIL6ub2xsgDVv2VWCf789xHPVBaZzWnVpdErJhhOf+POv5837NIrdMFG
	9G5TGxNAIhTS2p++5tGNRmlU7L1NvdyojC12J2XM0AjL8kXY7wWhnC3C0ITkYI9sacVnVW
	tUZsKb1SlKlYYC0zx6hh0rTVBv7+I41+pS2M1LHQgumDrtDousp71GtE2ni0XIgiIsPLOV
	4R0tFLAGduxRGF4iagYaR3/fKDtd5xl5Su1xKfT78BeKxBz6qOgyyJ7Y+DWpcc84wj/Tin
	fcAF6ZVeO2Fsh7YR6dyPqpgVMCsDhciYBoye+wYIjaO5+w02TN+6Xp9NDrtA6A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790665379; a=rsa-sha256;
	cv=none;
	b=CiJZQXHX0fsxgQIuz065yuvIof6PwzNgccBI6NHBI+YWIn5Gq9mMPDs7BdnELuSnEn17lo
	0Aq/Gn2KoH3Rj+4kGRK2rHeKBvAbtmqT/ITjLJC3NrmRvBcc3/VtUS5vJsHfI6nlG4+LsY
	ogmWJhHN/H0azSZz8bz8Vyk3XxFVt6+xc9JuajuwqiZ7wjSHXzyUh5wu9FHPb/ZWKruVaW
	Ohl/FoKJQ5TF1D4Xro2d9aO8nWWocikg4sH/ozSCKXgBcq2uVs63i4+LYbzN/qHJfMqjhM
	wfThGI+p84VUHDwjba6VSghURiIn83z5ky7YF9bDpkhe3wqWYEf++xKlywW/1g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 8D54EFF954;
	Tue, 29 Sep 2026 09:02:59 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
References: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
Subject: Re: [PATCH 0/2] arm: socfpga: mailbox_s10: add more wrappers for
 commands
Message-Id: <179066537955.715343.3764948695425437694.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:02:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_000301_794252_A798AA3C 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 14:45:56 +0200, Michael Tretter wrote:
    > The mailbox interface of the SDM firmware on Agilex 5 provides various
   > commands that enable the software in the HPS to request informati [...] 
 
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
X-Rspamd-Queue-Id: 02991200B4C
X-Stat-Signature: x3wggrhwyehkzn9dzhxbgojcfi6u4wcw


On Mon, 28 Sep 2026 14:45:56 +0200, Michael Tretter wrote:
> The mailbox interface of the SDM firmware on Agilex 5 provides various
> commands that enable the software in the HPS to request information
> about the system configuration and status.
> 
> Add wrappers for the mailbox commands to add some convenience in barebox
> when requesting information from the SDM firmware.
> 
> [...]

Applied, thanks!

[1/2] arm: socfpga: mailbox_s10: add wrapper for RSU status
      https://git.pengutronix.de/cgit/barebox/commit/?id=362329b29f5e (link may not be stable)
[2/2] arm: socfpga: mailbox_s10: add wrapper for CONFIG_STATUS
      https://git.pengutronix.de/cgit/barebox/commit/?id=8c904731ddbb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



