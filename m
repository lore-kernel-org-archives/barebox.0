Delivery-date: Thu, 24 Sep 2026 17:07:44 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9l32-005otJ-2t
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 17:07:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AFD2B200B66
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 17:07:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=13ute6Ib;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QtcljJJK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790262464;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FC5+9PfCq+M4YhtR9yJg2P6uuy+M5emI+KCpr7DBZ2M=;
	b=fPrfQDjf4zuzU8StJO0auQyd2/wljXxamBxyWKaY7PeT3PDtFeGzWtlBmNKNyl1uq1zWwi
	5Gp07iuvCf/fac9twNKBcoQV7ONjJio2HS8axZeai291P6lTt+QhyWbU4ileX2I1OuPNek
	Zm0uUdtA3EkRgnySrr218WT6jVjtWyIR9dy5DgWf0VqbvxJw0D9fb0n1/1inj2YIGevrkj
	PZ5k/FoBm0fXhEGnbH59hddH+8bMGo4jmEE+9gzZdCTawX4MHqpKnBLhugggmrcilDAguU
	VhreHp6H3YMIXX+5bwFWTfBK/Ei/NtR5ZBjDJeWQ/sWvQfdoHVPXsuBUWCQ7Mw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790262464; a=rsa-sha256;
	cv=pass;
	b=KQpaqSqSyaTkrOkJa4MwAGWHhXYyhQE8S/j0Y1B0moP2q/PNsqs0XJWx3OC3ejO2wRFtTu
	0XSfusiIqYvSbrQ/Q4A1XPIebcesJFDuXuVyBBS45N2hlEZilgb6N6tquakmQAsxX9v132
	LAujhkXnWem8X3lhfjCLzHJKFzTNc/UWOnNue/TSiNkOjcH81UXIVlUSbllbUt75+6m3aA
	o2Nn9/wPU9X+ZVGlC4TJg2GgP7jgqd5XGhSpvg6z4OZhLELqYhaiGbQgAzm7wAZNRzsMWd
	cpLi8BfJK7SmWPvvIYohuX7lt0g5Bs/bCHzK5+vYALD6bdtuDRo6HB1gjZAMwA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=13ute6Ib;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QtcljJJK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FC5+9PfCq+M4YhtR9yJg2P6uuy+M5emI+KCpr7DBZ2M=; b=13ute6IbLC4IWqwCS8VuptEhRZ
	7PfZ89M4tl63UdZN+tR4rdV8XaQA+LqQsve05axopC458m6qKAIIsSs6N643oU1N6nexnzAgWVU9t
	+RVjGsW+Iw0HDU050qkjIoFtxHI4iRF21uflcXQNNK6NSdgiGnW75LAYbQmjlo3PWj7g7vXq/3SCM
	dsqL5yMgIWkwleTLsxe1bi0AfJL01RNtTM9RKRkYP1vivXRr9EkdtPT8jaqa6bvBepQKnGMl4p2sA
	aCfUUa8G+xzZHTg1UudMofHHYQmsAvkBP71GHSN/DCx5rcSxId+RESkz9kjDe7QwDokP/2O5QE8jh
	3amZN2IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9l1q-0000000BKqw-35hY;
	Thu, 24 Sep 2026 15:06:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9l1n-0000000BKq7-15dJ
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 15:06:28 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3667020007B;
	Thu, 24 Sep 2026 17:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790262385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FC5+9PfCq+M4YhtR9yJg2P6uuy+M5emI+KCpr7DBZ2M=;
	b=QtcljJJKHNud3WXNBiR1rwWOcgWnlXzjMQjrQR1DZ29yRtg5yvqy62VZ9HV6KK0cWIY/Tj
	heRVpA1ZrZZosNs0kN78BJzMcGAqzZgLu31V3fJU01I6hQV6AKB8j6bEqpcseCTDvJvFid
	6uhWhncLIV6/Lwe1sj4AhliJiKjfoTjRXOrMS2GmWhnfiGPQpnnkK2hWaxa2n/rHsu+kCP
	7X0/AGs6iLEr8zr2CdsLPeYyRUFghz1IAm3EOctBJ24ekAzuql5G432IkxFwe/6XqoKAoQ
	+VlFzcmYezgFCOABgMO6waacGhoYohHVo+4uHOKItafpmwiJRM2s3BA+KzA6+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790262385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FC5+9PfCq+M4YhtR9yJg2P6uuy+M5emI+KCpr7DBZ2M=;
	b=cUohNq/Qc6v/7JQ4Tid/Fs1tSl1sQ8D7FqtOMY3w1nf3AIzv/z/INRumZyV45RNp0L/WyV
	oTZaF4/Vcj0Q4MWXBtaIZH9Sye29rJm1e8wA1FBljoB7ql2aIDtntEjAkUh39eiV3rSMKt
	i56leBpH3hkFPovJ54ewURscg+x3Qoi34rQ8aZrN6aBKAKYg69VkauJcPL21QJW1S4mG5b
	rms5QqjonQM9wcz8lWUAqBEFHfTJo21DLY4d9luM0rTOkLRF61vfGm0T3SdgdQRB1wnXgS
	sDEy4eLaem1RGAwkeJohGi/RGWhARb0DY7XyLLJ1+T6XxWzGuyDlvdLQXTmVRg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790262385; a=rsa-sha256;
	cv=none;
	b=E+v9MTgtU0mnP/melLMmrZsB3glcJ5CjXdavEBUeAwYvOB2NwElc0XIZC9GJwWFtYYUrf3
	EI1jhP6bjsXTILEcN45IHwRyQ6qRrevntej3dFN26xqUqXCFIJslQWdE16B910DqojvNz2
	4/kRP90Vtb3RuNOsNLBnZM0CJV64p3HzUidnxBh2AIQ5w7ymcNizOj+Pm/RUzVVjuSjhHe
	m9l1plfwMFSMCv5MpwNqCP26pDWfpnKc5BJc0z1xMH20dijzbFba0nRFiMsTJnG7SzuSNF
	gcOLTTk4HFJ0ZZFKloIruJe5rVW9u9JuMfabeUY+/d9JP0pozEixibXMENpfeQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 1DC96740398;
	Thu, 24 Sep 2026 17:06:25 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fixup! Documentation: troubleshooting: add debugging via built-in init scripts
Date: Thu, 24 Sep 2026 17:06:21 +0200
Message-ID: <20260924150624.2771746-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260924145332.2712276-2-a.fatoum@pengutronix.de>
References: <20260924145332.2712276-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_080627_559632_888CD5F3 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de> ---
   Documentation/devel/troubleshooting.rst | 1 + 1 file changed, 1 insertion(+)
    diff --git a/Documentation/devel/troubleshooting.rst b/Documentation/devel/troubleshooting.rst
    index aed9870d6e46..9cd669334b8b 100644 --- a/Documentation/devel/troubleshooting.rst
    +++ b/Documentation [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AFD2B200B66
X-Stat-Signature: 9cpanrwxorhsmiww77wpmqis6q6axmsi

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/troubleshooting.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devel/troubleshooting.rst b/Documentation/devel/troubleshooting.rst
index aed9870d6e46..9cd669334b8b 100644
--- a/Documentation/devel/troubleshooting.rst
+++ b/Documentation/devel/troubleshooting.rst
@@ -374,6 +374,7 @@ Interactive Console
   - :ref:`command_of_dump` if device tree description may be erroneous
   - :ref:`command_clk_dump` if serial is missing due to clock issues
   - :ref:`command_devinfo` to list the devices barebox knows about
+  - :ref:`command_drvinfo` to list the drivers and the devices bound to them
   - :ref:`command_iomem` to display the I/O memory map from barebox's point of view
 
 Kernel Hang
-- 
2.47.3



