Delivery-date: Thu, 24 Sep 2026 09:42:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9e6Q-005iA0-0C
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 09:42:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 825A02001F2
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 09:42:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ndgw6Zjq;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="X/+Zwyr1";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UIjYHP3k;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790235765;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=s/811dthabJoO6EOSZdlpmMrgzayewTdE5ZI28pLtsg=;
	b=cElo7aac6+0bZdZ2q5Q7w3zMyRxIaNsYrZwCmLECjGOahL5LjGfmx7CClTQFLBh953taR5
	c4KfGv546+QDWhiBBnvwxESg8n9HnjxdObLieDMDQQJXRfUmS+W50OAO3/kYPkBYF2vOkt
	WUBzmdj5mAryJYFqEchcJa03ibaSRoVRb2WC5aAp/DDTmLwfNO1iNQRaLOjQQuBqvibWPJ
	T9i/z/vKbDJBxQxxD8S2jY5YT0xMmLDc6N00jrviRprdl3BF1I3nct3nOedX2soFcDLDlr
	G9cv6fA2EkotWxL2PQl2nONKZMLTYAQx07dc8n7rhFgh7zYAy8pZkYLhpkWMfw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790235765; a=rsa-sha256;
	cv=pass;
	b=V4ADsRdlFhlOawcWbCn1fSHN4FcjdtzNuFXDoz+ZR/n3QR5VpTU+d4sBftZKZ7i3/WIHJ6
	3J6df/KqROzAeOGcsMgv1eKCGy47CNahGFPyXzIlPHl4w54x9SbRo9VenNdIZknmoz4TYM
	ZjBbL5enAznxRIn0Fqo9s6fO6avhyMgqC4r8ofSTQZMw8i+UaANBNBuGOIYdd7GHUo3axD
	pLtjVHE65O4of67JofrDsD8+NBV/peCuVLbFbE92XiQQ9r7rYM6B33V4Ai7BwP+sGtz3ky
	N3nGzbHZpM4/6Md1dNF2rj3mDBEb3mt9B/cEHFcduQWYOKUmuA4nVTEOfaJ6oQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ndgw6Zjq;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="X/+Zwyr1";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UIjYHP3k;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s/811dthabJoO6EOSZdlpmMrgzayewTdE5ZI28pLtsg=; b=ndgw6ZjqGFkWdX2bZPnAc3HGfq
	ZiHaUvIuV1373IYHllHXJKvNDHtWp+0OKYh34hf+LQNNpsUeI4J1bhZNSAS0si4otq0tO1d0iSAXk
	AXWwFxXEkhDz+T2O7U3JOB/4/dqMyj8incC++8XTnjHTIhQbwTcfe2jURvvwDks/5BAKBgQS5gg5B
	yN0eHBlUaejJXa1OV1+wA1F9eypn8ba5fcbfgepvhbW3bY45qXR0gbFmHok41vTGp8ssbS1Rs2tqC
	T5882Njy9Pn41v0R1061e0mpQRp+fJpl93izo1ek3I2urLhqi7uUUFRdbcfLMYJAaVDCvaw9fsxog
	IscpD3dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9e4y-0000000AKBQ-0YkO;
	Thu, 24 Sep 2026 07:41:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9e4x-0000000AKBA-1o6m
	for barebox@bombadil.infradead.org;
	Thu, 24 Sep 2026 07:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=s/811dthabJoO6EOSZdlpmMrgzayewTdE5ZI28pLtsg=; b=X/+Zwyr1+gosZj2Oq4BZBeiBy+
	bZDh8gtyOuwonV7kSIptg9EpgMdIeZW3wnxZSoqOO5iN2ppsE5qYyqFNInx1gdY65JNihtJtLq1wO
	EsaOj1k1INZSgzvAVAwTZ/WlMLbhKYOtCv3DUEG3MqeuTx9Do2xGAJe19lovArh+mjYNLddikkzPT
	oIFPRp2HHK0X4sNrJSlHPNmK39hQoXmk+zjvkVDWQHA7xVAqoUEnnpIhYraRcqk3JidAMqk9i9QSO
	w2Q2fBjzOXvEAUILuMvJTVQB6/m3HjSkDRYmNBxco0RCSF033pHuxkyp7ITGJa8cxY3oLkyd0Z0WI
	RyC1H6Og==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9e4t-0000000FfPb-1HRj
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 07:41:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4CE4F200291;
	Thu, 24 Sep 2026 09:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790235667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s/811dthabJoO6EOSZdlpmMrgzayewTdE5ZI28pLtsg=;
	b=UIjYHP3kn/zSJQvJcS+8BmtGAyiYPu6CtpAbaeLDVenVf0TSlUjn1HgYQaeAFKfbPTmA4l
	EaWatHzSP7uBcjGfjmxI2axCzlG7RPpkCSncI5gON9VNcmyVWMEIO9u9Qqs5Y0WkvZN6RL
	Vr8MEnSP+ScntNjpOHm+modLw+rS8pcK4hp3KZ6HSpdnlEwCcuzCvDy8MXBPOvg0B7t14N
	iCq4wlOrq3CCgbamfiHwx2n/P33kx2EKHnLoAHKs1tc+IUKjqnc0nvnaNciriHExAfEDbW
	ZPCAWatWxJ+q12I+vrIOADMTH4JIdRjr3vMyfc4Zjxq0nrXN4b/sr1lCw7ZO9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790235667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s/811dthabJoO6EOSZdlpmMrgzayewTdE5ZI28pLtsg=;
	b=b63EQvAMpE2HlP0FyLTcK6Es1agvXtT5SE/x0YZemgRVkyNDi2Uf9oTM3ighsFBoIumvHD
	6GJh/JAxXPpZDRDGDLUlPG4QLqCYdhbEQyEgES3/KmxLWXayOpunjuKNDsCPubkNbx31rB
	JFGhNd1HwDlI67JXuzTB5FvDTinJbvqesg8hPnBl8hGBSAMamjbMDNIHhifUFpy68RQJv3
	lpFnIHge5FfORdyoqxXVLXMH8PsJ4SHBkloH/yHvL4O4g1Wpqt8trcYPiSpWN5AAk4gZbJ
	5cRUtP8ELWnG9wYNY4XZiz//8gte4QWJXJOG005Ecv3kuEgHlhC5tXne+68HYw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790235667; a=rsa-sha256;
	cv=none;
	b=b5BZeo/lrKQTuX6C8BblDX7iqdhoP090Kq++o9OmGn1sgbxVxORB31zqi5N3BVf5J/E09t
	yXNHmB0IcCgKzyMs/UrnXXM7ggkBJuT0hudVkaNlpejgBU3jmMNsyF22QI4NnRFfYQfUvf
	YYOSpDZbbuNX+tu22CpLrVu6sdwrQYeXJy1KLS9WfmW2FmzhXRvRF7cWptMPrH04/EWuLq
	MnBX+BBK3kPBI8P60biNPiAV10xb0H+n/8E4SqbNPWtaOldFNpNDW/77W1eEUWrnkUPVVE
	TE/54Au38secek0PXDm7oeYlDGv9/bXmRuduVwLBYFMWxuyqWuBrPWmr8BAEog==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9e4p-002Wt5-0l;
	Thu, 24 Sep 2026 09:41:07 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9e4p-0000000GpCr-0iWQ;
	Thu, 24 Sep 2026 09:41:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260923072953.4123955-1-s.hauer@pengutronix.de>
References: <20260923072953.4123955-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] x86: efi_defconfig: enable the EFI USB I/O protocol
 driver
Message-Id: <179023566716.4010034.2867381527462846852.b4-ty@pengutronix.de>
Date: Thu, 24 Sep 2026 09:41:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_084111_971567_05FC8D3E 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 23 Sep 2026 09:29:53 +0200, Sascha Hauer wrote: >
    b31adcfd28bc ("test: x86: add test for uefi usb io") added a usb1 entry to
    > the devices list in test/x86/pc@efi_defconfig.yaml and enabled t [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-61.00 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.95%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 825A02001F2
X-Stat-Signature: 8kq489imfsojybrh1hydikmss7hguto5


On Wed, 23 Sep 2026 09:29:53 +0200, Sascha Hauer wrote:
> b31adcfd28bc ("test: x86: add test for uefi usb io") added a usb1 entry to
> the devices list in test/x86/pc@efi_defconfig.yaml and enabled the driver
> needed for it in the kconfig_add of that same file.
> 
> As described in 266482336cda ("ci: pytest: enable console and libc
> allocator for allyesconfig"), we build and run tests in two separate
> stages, so the options in kconfig_add are never applied. MAKEALL reads
> them only when it is passed the YAML file, which would have it run the
> tests as well, and that doesn't play nicely with our structure, because
> we build e.g. multi_v7_defconfig once and then run multiple tests on it.
> 
> [...]

Applied, thanks!

[1/1] x86: efi_defconfig: enable the EFI USB I/O protocol driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=75819f9e196e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



