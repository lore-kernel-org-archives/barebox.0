Delivery-date: Tue, 06 Oct 2026 08:42:46 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDysw-00AOdI-0A
	for lore@lore.pengutronix.de;
	Tue, 06 Oct 2026 08:42:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D0E1B201BB0
	for <lore@pengutronix.de>; Tue, 06 Oct 2026 08:42:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QmvGU10X;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gGQEvkBT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791268965; a=rsa-sha256;
	cv=pass;
	b=gVEpUDsKpJkZ3+czHhlnXKOz68mmlie5MXAnd0IEXzJUtO1JtETnu+NOxYKFJPprSgoN03
	L+Cqk2Tjj+G6o5sAk26oegn4Zgaa0CesKvsrtkydvo/CAlRhPwFg50fAg0WMkktXHT5N+Y
	YtA+8qGPfZXGooeAzjuKrku+FVqzLZl3QfLXnqd1Wg8KZj63BtE+JPuplxKtD3u/KbETMm
	5oUR6ucwEFZPixaOkA/ZLDuM0Qpa7yt0dUrpkKUDd1m/n2F4h5wAoGFmmyMtumUIkWiv6o
	XWa9xgEBddxk8/egspLDLEarY5ZZu8tiyYGo+NSsG4KPmBSHMbrWF5jbsZ19Ug==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QmvGU10X;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gGQEvkBT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268965;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=nbIKAnlkhKDvcwx2VrqOVZjp7ttaMHmTfFXg6yditWs=;
	b=b+bgLwPpeYjKq5ZrBLfEVPMfkVNzXHWvzd/4FtQRisUrzKhfszocPzudT2WgpNVuCpjc6W
	8HvBiotXwtwusdgGsy3XRpaA2WgEcgSKzhEic7xHWSUzKXyc2zrjJF/jwHfT0oMGihBJFV
	XpE+Umj6PAxvFU7vwkLt2FG1Oj5avmxS10X3I0OuJB302DS3tJNWo8UVzeJmwPheFOEYYf
	8x0O61Z5zrkmU6lA8UYvxLAF9C3GNM+sHoBIqG9whQkEb/hCYysiul+3uUqtkEVHsoNtcV
	2wJ5LlevLfospJQu41OFjAyoMlCauBE3hiZHE/igvI3AT53arY1kjxSOuEsHqQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbIKAnlkhKDvcwx2VrqOVZjp7ttaMHmTfFXg6yditWs=; b=QmvGU10XYRqnS8doRcNfttnr5L
	pNrd+o+breTu94sMMumZS+Q6olPHlerfC5EtEMrud30hqNtuSyOHpgvgmzzhSswaaHNAtoTVBpLfB
	TnZDiVZup0Wj1e8r6G5RJtZBDRIqlTn7tFwfc21agyivX77/HBh4YSUjJrMU327bVc+oIBIWFqioK
	x1FG/fpqXGAejNSKacS0aAV4/miaTnV2k6m3Y9BAJtFecKbJ5Sby5rIvb+4Kvk0HeRsY3D1pdgiU6
	sKM3AJCh1ZRTD34XL2OzkmmpehSRbMeaR4kK4PAjALWC8HF6FzZOcwo4QtRNCojv5822gz7mKsodm
	3VHN3jrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDyrY-000000008g2-1reb;
	Tue, 06 Oct 2026 06:41:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDyrU-000000008fT-2ArJ
	for barebox@lists.infradead.org;
	Tue, 06 Oct 2026 06:41:19 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A082A200758;
	Tue, 06 Oct 2026 08:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268873;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nbIKAnlkhKDvcwx2VrqOVZjp7ttaMHmTfFXg6yditWs=;
	b=gGQEvkBTqYA4fviavTSyNJppqlYV/Z1WSz9DAGCP0WcWLm6dlaCvLEETVml8xTgd11p+1R
	wq+625ZUjgtqcfPs11GuDlBfZwSFNYjDfL2G41J8reaO7oA6Zo6sR8tqj0HIrmMT06+R8b
	lHARkIApSV/Qd1jS42BOF7YisApzFGQYh1LIvRZckCctts9ARWGFDfOVi9OEZpjVK1lLZT
	C1vQ0YB+AAyhSq/5M6aGcNsmnZaZCelODy3bWVRBuWw/Z2om2pHw5YOEVMrZ81fphXvXJY
	TpeeKaUupMEhpRssrnrk2Ai91AXJEwTh4OXkUGQ9ZCq1D/k4qaJg0zwRTCTL1Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791268873; a=rsa-sha256;
	cv=none;
	b=atWKVcl2I/Ki4RaAdJt3Vk4FF9YccfZBlRMVPhfHB8e6xSReIiHSpEyzqqbykLMHK+3e4M
	DfU+FAQwVm+EMv3uyIqeRq6Zlxc2Wb5nxpW0cMcC2M24PuBNuZ0uu6SKGJaBhJTo3MzCqR
	FAAyxX516FeWlIbTNNboLWcGsqnNyNdiO1LQMzhGDXRGuA+EcTSu7n9P0mPLX/8/hDc9jC
	pUJ5Pw9KQlazyc7v2aGpfhSulRM4rxy59CtL2XbFZ4ncsQZqhykUxryfxv5/PlIgoealJ1
	K2pH7TSa4p/xwiTX/No8wQNZLRLJ7aNTtNRwPnl1Q+VAdWYvstFqoRgwcv6AVg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268873;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nbIKAnlkhKDvcwx2VrqOVZjp7ttaMHmTfFXg6yditWs=;
	b=b+vo0Aw5a5uLYBqHOOq3CFsU3S5sJ1foeNlQHlNT8dPzMXIMF8PW+8lsmH3RVQWdKOZ8WP
	BZnPSfnsXHDE4sB9DPPB2mIG7WXH4S85eT2vZrPGEEFBRG9Gtku8SN5+zt8GmAeZuN8XCS
	1PVFergN9DikJbssN9puSyCh1gDA2Ny6Haq2a/ipKbTsrTLyrDn+bITrtJwm8awKIOnVjT
	H+9xhaDD6ush5puVvcdZpOm765FDZYUBf9ZN+C4quQ6jjfjSGo40Btf6wfEzz4k8pHVtfW
	Oaetfzsi0tdZt73Cdfmpm7uzOvwnVu9YvfPj2mK3/PMgHlRMb2Mg079RSfNiHA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 9588BFFA39;
	Tue, 06 Oct 2026 08:41:13 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
References: <20261001-fit-cache-fixes-v1-0-568bd214e5b0@pengutronix.de>
Subject: Re: [PATCH 0/2] FIT: Do not hash image data twice
Message-Id: <179126887359.540927.11131483808457193199.b4-ty@pengutronix.de>
Date: Tue, 06 Oct 2026 08:41:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_234117_013160_02B83964 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 01 Oct 2026 09:11:19 +0200, Sascha Hauer wrote: >
    Since we switched the FIT image code to the new loadable API we call > fit_open_image()
    multiple times per boot. The FIT image code caches > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Queue-Id: D0E1B201BB0
X-Stat-Signature: 7swfeziio57xizf6gqh7rq1189noq496


On Thu, 01 Oct 2026 09:11:19 +0200, Sascha Hauer wrote:
> Since we switched the FIT image code to the new loadable API we call
> fit_open_image() multiple times per boot. The FIT image code caches
> the image data, so we do not have to extract it multiple times, but
> it doesn't cache the hashing result, so we hash the image data each
> time.
> 
> Mitigate this by caching the data in the loadable instead and call
> fit_open_image() only once. This makes the caching in the FIT image
> unnecessary, so it's removed.
> 
> [...]

Applied, thanks!

[1/2] bootm: fit: open FIT images only once per loadable
      https://git.pengutronix.de/cgit/barebox/commit/?id=1cfc5ddd4bd3 (link may not be stable)
[2/2] FIT: do not cache uncompressed data
      https://git.pengutronix.de/cgit/barebox/commit/?id=b61e5278b44b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



