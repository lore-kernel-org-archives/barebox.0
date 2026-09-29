Delivery-date: Tue, 29 Sep 2026 10:10:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSv3-007bcP-2R
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 10:10:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8C8232007E1
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 10:10:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OdxfaIr1;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=aoaPLl0D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790669433;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=EmSjdexXISSm6PgI+bkKQLoMIrkoGhXhPCDCLNhm4J0=;
	b=YDRUUNe0MDiOL7zqcO3DIi4XAyuMjMybnZFWTYAgmM8KDM9YqPf00VmuA3byCAwmNsw6tA
	moS9Rlb9LWqiATcgSmD3r+0RGtn/bdAxOISTbPuKsHjCS4VAV7IU2cv/Vf83KP9m72zaWU
	OYbUkcG3rS3Bqs5tVmytypfBVjcfRsKH6awp/oEIgvKxg/0RZ0jQIdhp2s4mfuz/VLCqLJ
	zgJwL6Koy+VIOFi1ZOTuvLIRdpnhK8jw16yVWtkFHGh7YyrHZ66RukXwv6g/Es7c4OcPX5
	2eTHM/HIBhBBnoHSST7pR3iW9mVjRVtoMmlORJmJ2alfFW+0gnBPMbAycy4y8w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790669433; a=rsa-sha256;
	cv=pass;
	b=AN4GRRY0xakIcfm3hpkSHUZgcrVjmjjG+iLVmyLb+YJ/tuF4E2w4CEvvXKTtD+kiTfG+tj
	J85+bGF4fE8RHTAWHG4dp/bNn7JnN3nUAOmlrVNNj2gRNiSqOdaUYOurUL2uDdGMYzOx5I
	thmmTFBjlIqLIrSxppgPr4r1DKg1F0B1AE9uIn0+fgb3tDttzcnjJ1fpxsI6pAbg25UXWQ
	Ob40f9JT42fQvpnTVrOdh8emaGAshffMpBRXFuoW+8+FmmaIt5i5O/3QlZbD5k2Z7k121j
	3fM6GrlThLTHP6sUNoXHVWp7eGLFBjtdmfMNe8Tx1HXAr3VSJhixfr1IoF7sbA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OdxfaIr1;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=aoaPLl0D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EmSjdexXISSm6PgI+bkKQLoMIrkoGhXhPCDCLNhm4J0=; b=OdxfaIr1h0zdFLgAO1qNOIwPxn
	UHdWFxf+p3R9UPDkmfPNjpyULEuiHCqZm/h16x+fqpuriw9t8rnu/SeO7oifFb6ALjF34+hZccKQ4
	EGErc+OgiGRpEMSieEmHX67Ayx+DA3RRbcg1YQYjb6xzBJdBIAETnel7hBkXs2SYBIflLVHAsqigK
	zuLFDVsNuy/F1WzDZuS/jsoFIJvLlQ98qad2OOcj1qvwiJa26mBM6RYeVIEs2rqc+vCs1VFuHwh2p
	InAauqFU6mvkuw7NO8y8DYBvdlnKgaAPqVoSNOseu0kTV9poX4m1l0vOFEbBxkfnc31IWJbXne0v3
	ivVC0Kjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSts-00000002hFK-1y0O;
	Tue, 29 Sep 2026 08:09:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBStp-00000002hEO-01yI
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 08:09:19 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1EC41201547;
	Tue, 29 Sep 2026 10:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790669355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EmSjdexXISSm6PgI+bkKQLoMIrkoGhXhPCDCLNhm4J0=;
	b=aoaPLl0Dk5oUmDS8vP7i7mqmwpskOkIc6eILwfK/4pDrlxs0r0C7U2wjkillGYgmy13hT6
	9MCp31rE918XAjl1tKQY5N2t3v5CoAvVEf+bMKsouCDkJokXXZjYNWEYnOF/grD5QEzTYY
	S23w6NM9iapGLo4/nYSaLvZEN9j5mcq9J96cKdcnC/QRvRy2smuMFcMsP4oeqfzaHdmkBp
	wu1qIT/bArPzDWWcl1ydOA6mYPW29NP52i2IpAJz//ucofvtz37a5zi06cgmRF5+sZI0xN
	ekTOB5ix9swcTQMf4T/DAUGqHq1mTywtE2twyd4FcNL4o6PK5khV3wAuLnw0Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790669355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EmSjdexXISSm6PgI+bkKQLoMIrkoGhXhPCDCLNhm4J0=;
	b=f1ChImUliIl/zLEYFoG+VI00OdywvWgJrisdoLLqfqFEbTVFRiIjc65+Fiwnkon0Lt5Xcd
	m47f9P37zNbibqEP3rqE3KaXg5Zcxqk1OtVKDhQRGhxljEqfylMGpsIrhBcql2NPl8JxkI
	kT9rPFZldogGisAwttZOxYt37BTvHDq1i6uoC0szCJ04AQEthO4SzlxEzwSI+Mv2snwtnV
	4RPLGbEVNAyFf6T4VkIDVM1XX2kXNa4P49EC+cc/HDkm6JYbLb/IRXp3wXp+hMPtVFu2ZK
	woUOm3sJSph+/F7i7DuYH4IwSua4XGOBx/x/nUX394JYTRQabeTFy9PHgcmM0A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790669355; a=rsa-sha256;
	cv=none;
	b=UQgIlT1dwRriPOVUNfzxhCv/RZPX4xZkYcMRJz7zu3qIfuK06o/yy2M6EWjGYB9tYKwkU0
	sULwuG6XgrCLyODKLawQUECrXvUrelAZhEtfq/bLMjqyJHhn6fKHU8fuweMsAm34U51Tru
	oPrxonFHtxvUVhHjTexnAvBtlPIBWUPM7AUe1Psk7moEUWNpkzea+GrR/bGeMfKd5HPwCS
	WlHZrIrfaBwn/DdZ/3nwHLaOGFGh0AgDrK5nYSQgA3B185IILJHw9bpcGHhKvSQPg6hvbY
	yHpQ5vf3d74Fw9x6OB9Xadfe09pNPlqvGotHJDgIznahHkeUndvh35Lj+zk9+A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 0A212FF954;
	Tue, 29 Sep 2026 10:09:15 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20260929080153.2606828-1-u.oelmann@pengutronix.de>
References: <20260929080153.2606828-1-u.oelmann@pengutronix.de>
Subject: Re: [PATCH] commands: sconfig: fix command description
Message-Id: <179066935502.767093.10728034674186165337.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 10:09:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_010917_313683_617FBAD8 
X-CRM114-Status: UNSURE (   3.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 29 Sep 2026 10:01:53 +0200, Ulrich Ölmann wrote:
    > Align help texts with the implementation. > > Applied, thanks! [1/1] commands:
    sconfig: fix command description https://git.pengutronix.de/cgit/barebox/commit/?id=58eda915df7a
    (link may not be stable) 
 
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
X-Spamd-Result: default: False [-60.57 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.81%];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8C8232007E1
X-Stat-Signature: znudndckiw5t7jbnwnyjy1padun4kzbz


On Tue, 29 Sep 2026 10:01:53 +0200, Ulrich Ölmann wrote:
> Align help texts with the implementation.
> 
> 

Applied, thanks!

[1/1] commands: sconfig: fix command description
      https://git.pengutronix.de/cgit/barebox/commit/?id=58eda915df7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



