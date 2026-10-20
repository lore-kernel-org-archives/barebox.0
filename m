Delivery-date: Tue, 20 Oct 2026 15:57:15 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAL5-0013E7-0N
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:57:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5BEF3202013
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:57:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Uted6fOF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZUH+OC8V;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504635; a=rsa-sha256;
	cv=pass;
	b=KAmUobQ4w+yFv08jN9/lxo1HIfX75GISu7THESBwvNt9ULDPTdCioKUV+fTQdpJIGjslTY
	JHpljFcpPrSgecCD9cf4K3RimWQdyFuJF4hWyyMZMQZRT8j+sBUVmsYKmDldvEpocU4t0Y
	uOChiii8en9KnB6zafbdF2/D+UnHJ0fyOxn4JtA0BBOw8Yu5zy2r671CrvyP8C5xozTIN1
	wCjz5Ujb6CZiLOdSYz1hb4672SVg0Ch0Sy9ozeWIEJOjuJyg7w3mo0bgsPm2UOv9lS6ZoQ
	Xv6K9TwQAkUBwq0THWeiRfQDzfIYLCqevOh+BZ0kq0F2E3x2TEHF129wqwSc6w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Uted6fOF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZUH+OC8V;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504635;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=nIef0aHYUEVl50FAuV62BP6tsTjccsObIjeECFfF7NI=;
	b=P00j4n6icqUn77Bm+zPzp5DjIcacdPR371KXofIXRY0uZ4DQf+wpZvpMhZC/1IU6Mx/x6u
	nkvj36+RG7iBIIauGFzFH8S9H3SA6ol7STBP9RsoH/MfkKrw70bIaHsHyKEfy4epw4t5FS
	ayEcMG1+Yj0LzWy3G1RQPsIVBb5n5PvFYjYvpFBCrPuV31DMW+alOWKtSMeAHyVrqh+0YX
	8sZsRf5R+5i0WbwVmAFJGqwmYdkZ4gys0zf2ScMTuzdSSwAR05TCXiGz0izDkoraQC9D1y
	znzO4+509y34aDaCyhrlqlwvpDSl5HkSXk+E80Ue6NXWzLrEXhs4cV9JDnKHEg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nIef0aHYUEVl50FAuV62BP6tsTjccsObIjeECFfF7NI=; b=Uted6fOF73YTANuzAcbd5dwAmB
	ntL7/GMKpgWwudefaLjoQx1hPC1kGU0dxE+3XnqsKUu+RCEHXtUnXhgoh8oAA7gYuTZcQYlV6iYhy
	ew+Wp+a1ErYVCGE8XbMU8uCJ4OGsEudLTtL+gi8C0C6iupj2vDbzWQQetwbHoQM0mGnmpzvrpHLue
	Ca/KTCa6upAWOQG/xlAwubc2uzEaUoS5Mt/FcwgaGe56lQwDD+Qn2N3ysik1/RFhUV8PgSk3oAcK/
	WEroRztHlUhoZMAvwqA2JwSQztWkhwBp/ZCqPgk6LV+Pbf0X2VhaHzJ1kktzrNh207DBF/uVl1Owp
	3wgUDtGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAK0-00000009qRV-3e4v;
	Tue, 20 Oct 2026 13:56:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAJx-00000009qQs-2bMj
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:56:07 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F1DAB20227A;
	Tue, 20 Oct 2026 15:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504563;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nIef0aHYUEVl50FAuV62BP6tsTjccsObIjeECFfF7NI=;
	b=ZUH+OC8VAnY5xe6uzEgn+tjT7O6vRDkPyGgsNKNyAXkahp6QjekzYI5LzWn2I/Zh5JM7yI
	DyEgAZ5C4ip0DIMfdUt+ED6z76+LAW3VQUdkWVfNZBupU2hVBUEDHC43ZkpibLRJ5nsxba
	CnthTzg6qFeagXaYmSipZeY95PZZoWXMG157XRzIz+UcQ9u1qYeVkb7SfNymmhhUnjgeRP
	hQdK6aE0v3zR1hhcx9yj8htsXm6e8B8NVYMXaBDiICSmXcR+nOOwkJc5yMKs5no/17NNBI
	cL1Bs9t5XXGPrR8NmhAF8H9F+ascRtIDUZTsqIphdY4ruiEyoltWNgtnWlKJdg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504563; a=rsa-sha256;
	cv=none;
	b=Mzby+eQxkDZjQ2n/QHB34OU4T3wr/ARMvlqsymolhgVtBsW2aaRacjuMavRw2foP6qNMMw
	O0vyDMxwe0egL6gshXJtV/dveornb+VuGU7Fxc9DK1NvORE4MfxMi3eVE4yAxWSCwmHL9W
	aTlTmhvQ+kIKY57Q/a8AZwTSBXQFXc5wEPZBlglcPlLUM8HPwePs2w2MQkn12PRoTQ7+rp
	FHajIB0mR8uZaWB9pe6qF54e2x/V+vtTyuIHbnKU55UqhMxxj8LGHWLQTM8J2myECIwqlz
	6c+mK0Gnq0pUj/lwXlpw3jSo5YxFcQNS6aF5ExT+K9FLzvYR5awFmZg4tqvKYQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504563;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nIef0aHYUEVl50FAuV62BP6tsTjccsObIjeECFfF7NI=;
	b=gmDlu9x7ShPSzGrXgJ/OyC3qhtUjk0OA7NUSBRCo4ZQ36k4DbNghbK/dzKTFYZF/oeLaF2
	1LtvbTC1JiXJhxMprC0VuLC/uA1jXM5yJfEgSssWsCzV7gdWSJa77QhHg6gYq2webPQY1l
	QC5Anqs/Hm7OHpoaoZkb6YiVc7PwgyitP7tdw9Rwy4sNwCTiEFHhBjmeFvtP+8RGaWC3Ga
	PSWcyNGxGeyJo/RWBLGP2dN75a12pIuVF6ayozHIKd201p83HE2kacQQfA4atQuTtZGUp2
	u4e/2jrptsm8qFurqglor5pZYM/O5bb68VXXfWrd1rmlaZNECfihZegYUUgcfg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E26F4FFA47;
	Tue, 20 Oct 2026 15:56:03 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261015140743.1214225-1-a.fatoum@pengutronix.de>
References: <20261015140743.1214225-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] nvmem: core: add nvmem_cell_nbits()
Message-Id: <179250456392.2718514.4514803961868491681.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:56:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065605_830280_025E8F35 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:07:42 +0200, Ahmad Fatoum wrote: >
    A cell with a bits property is narrower than the bytes nvmem_cell_read()
   > returns and nvmem_cell_write() doesn't mask the value written to i [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 5BEF3202013
X-Spamd-Result: default: False [-60.37 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.84%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: zzfcxybpc1yt71y3swnzitf1a9sbir11


On Thu, 15 Oct 2026 16:07:42 +0200, Ahmad Fatoum wrote:
> A cell with a bits property is narrower than the bytes nvmem_cell_read()
> returns and nvmem_cell_write() doesn't mask the value written to it, so
> anything that doesn't fit spills into the neighbouring bits.
> 
> A consumer that computes the value it writes back, like a counter, thus
> needs to know the width of the cell. Let's add a helper that returns it.
> 
> [...]

Applied, thanks!

[1/1] nvmem: core: add nvmem_cell_nbits()
      https://git.pengutronix.de/cgit/barebox/commit/?id=4830dc51b191 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



