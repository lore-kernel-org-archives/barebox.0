Delivery-date: Thu, 01 Oct 2026 22:21:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNH8-008Zib-0q
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:21:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 09015201F04
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:21:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QEFRDlBs;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PmB4EnPh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886062; a=rsa-sha256;
	cv=pass;
	b=V/19S4kJtXH8Uw8IVZrZ7T0MecpsXWPVRm4xuBmKPNqk0P7dhaFDf+8rEuZBkF+xNuutey
	jPEsZc1Hn3ZdbbxHXhuUhQQhK81KirR2pJbsEWFnvQw74erFn8WIaJ+95ROw6OSHfpyc4K
	gBpiO2GC02JBevSNiDswxrb34HCvoWPeB0xAWeVzfYZO2LCYyuoquN9XW3zXe2cSknVofu
	OlNnYnTOjNiE728vfRio1ZqngvoJbGvI3DxSUTV2TAvIlpLY0iF9tVAm99R7vqurSbj0It
	L+tUnblIOIBapG9y5e4w5bq2VsB0SUmFBfNpFRtPwYuDA7XUIdVrzeR2nKVjmQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QEFRDlBs;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PmB4EnPh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886062;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=K3w6I/KCNgWlx8hpsjeX8dM2waoehHygBAvdwdcM7Jo=;
	b=WdRb5InqsmTa+89lhCo6P28ZvK8WBLhIcuH9BNASRUy9B85Y9O+FKIqLJvkm2ERxjYYf0B
	fb5eW9U6TEiFDl5xPnC6ZQGA9BSnfm5r0+89l1UjbY+43B43KTUiG9XD+SUDxcDKHPo9/B
	NVvMm2V0RuHklu5nZF2+tqdijqsQX6BNHv8A6vvJZT5D+xGXHT2Az6J1Z45gVf1DM6JFl1
	mURjN0ZDb4vqqo3ETUXjhGeixHK9cnwRRuYoxui88IkaCKkNyP5sq0GfMYIU3jmgxdrD9z
	WKn8gez9blkkPxFDi8Xw/B2sz0rFEYhkqqEuexk94WO1Ka69gsrK/Yc0yRgAPA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K3w6I/KCNgWlx8hpsjeX8dM2waoehHygBAvdwdcM7Jo=; b=QEFRDlBsGBaKxKr4FlmL7CpXyD
	2zzHT99zJdKwpbrfCIT+qP0TaQqtpIly5K4gxqHOUgisfCDyRvDcJwAwCIS4QwubzsOwGhajY7eEP
	ObkuM/IaLzTZBcHVzHVXza2R8g305l3drjqOlTTX5tOBeYzA4AlDFnePTFy3wqdDLiD1qN5jw28EK
	2nSP/8hYT6x5KYHdvx57ko3rqxZjVAE867bXKglQ0PYtkJAUwqZSKN01wKoPuE2F1ju421tJ0Qw8J
	oz2pEYdHjRaVOmbqhZmJKbxfSP1Im94H1hU8kUYq2pbPu7gHlLMeOG5G/PX3TGSVOQJ4K3j6Mdka7
	Jo7Z3qlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNFT-0000000A8Vt-1PzI;
	Thu, 01 Oct 2026 20:19:23 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNFO-0000000A8UP-2tvP
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:19:22 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1A902201F0C;
	Thu, 01 Oct 2026 22:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790885952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=K3w6I/KCNgWlx8hpsjeX8dM2waoehHygBAvdwdcM7Jo=;
	b=PmB4EnPh9Pp6lNOMiIwyoOsKjzZErNBg0xOCO+SbHLoTVJdh66Vwt6JKgCQHmaXyPkKfbI
	gB7l01X+CH29YLJz7WdR3NO6JHkty3CimjQMs/xQybsUMzg6vx5WrQDmm6iIXVv2AFRWZ+
	KVJ2Ux1U1/ceBmblBjSAba3e2lNgLArGKGo19onTRKgvKofq59ULPQ8TZ9dQpCZmeKVV6b
	C20kHdK0BBn7GdgBhzWHWb6WZt4BmbLk6STN+ehsUt/3ZrPZD8UuQ/Y72y/mHFwpvl+nxB
	vC3X3GH7DJIbSzWHa7ie61NtI8eHtqxQSOFUxm+XQuO3z73qdCCzD2l1VsOpBQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790885952; a=rsa-sha256;
	cv=none;
	b=ZzPyFsh+wcS5hCwq4jDyx22jBWTI2yUyeYQnZNyCDTfkBBT5L0zE8AyINt/kITqNKX4BfY
	A5kIKXjBFgCOjyhMXb3vsRA5ALT4x4qCxlugWEJDg4vjYdZziPvuCw6JjQplAPgep5BDDI
	IbkuCnuyPb0j4WVBL17Fme1gi9mtZAMU+w5vAD5RH/a8+fRSPtvHhvAvlXaQs9fHPEkqBk
	fc+IhmZfmTNdrnnlN0+wpIEW4lOwhbaUgrh22wY1cIasI/U20sLNcYVpe3KTzWJD63wgAC
	HUdaEQK3Zt17PQsT6q1LbHzT5kZb4bhJ59nK1rCCH3vewbmD2hBv3WvZq+2b/A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790885952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=K3w6I/KCNgWlx8hpsjeX8dM2waoehHygBAvdwdcM7Jo=;
	b=U3W1TLxqWP6+yeFLCfz9xXFbKdN5jC78OVvTVlM+aqi8PkYumoJqMx5wNsDENDs/dOReQe
	GM6hx+kdg/3OFqwxR2BeNd+MeullgHXlY1Y5XEZmtYjA2R50D5bCzFIv40vEGHPCPyl6fV
	2dDdXLlKj8t8mWdcyzfV6tjbo14XH7wMATcv4XckERabo93ZOfVudHFLxc5XLNGXwNThdM
	uFqYBEidZHdeLO2RceZ1cOypAp4JXAVSVzfUudF3sK3//BX+GUa9+mLWCoL0dsFpsAH+Cl
	6VOgaj7KPg37mS8j6Xm3F0axer8kUqPTZBPs59cwNJlmTSHB3PqqCxRzDo4RMA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 07DD4FF876;
	Thu, 01 Oct 2026 22:19:12 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
References: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
Subject: Re: [PATCH v2 0/3] PBL: enable hash functions for Vendor
 Authorized Boot
Message-Id: <179088595201.3010852.15451572026371520149.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:19:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_131919_953481_26704BAD 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 30 Sep 2026 10:28:54 +0200, Michael Tretter wrote:
    > Altera's Vendor Authorized Boot (VAB) uses a sha384 hash for verifying
   > the second stage boot loader. > > As preparation for adding VAB, [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	BAYES_HAM(-3.00)[99.98%];
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
X-Rspamd-Queue-Id: 09015201F04
X-Stat-Signature: wdecyxfa8mctrfjb6o6gkg1ubxnk7wm4


On Wed, 30 Sep 2026 10:28:54 +0200, Michael Tretter wrote:
> Altera's Vendor Authorized Boot (VAB) uses a sha384 hash for verifying
> the second stage boot loader.
> 
> As preparation for adding VAB, make the sha384 and sha512 hash functions
> available in the PBL.
> 
> Loading the second stage loader from flash and verifying the signature
> will follow as separate patch series.
> 
> [...]

Applied, thanks!

[1/3] crypto: make sha384 and sha512 available in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=1538cc4d1c3e (link may not be stable)
[2/3] PBL: rename sha256.c to generic sha.c
      https://git.pengutronix.de/cgit/barebox/commit/?id=c524579978f9 (link may not be stable)
[3/3] PBL: add oneshot helper for sha384 and sha512
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa8f91d8f1ce (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



