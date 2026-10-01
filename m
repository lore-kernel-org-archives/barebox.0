Delivery-date: Thu, 01 Oct 2026 09:44:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCBSg-008Mf0-2V
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:44:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 431E1201F18
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:44:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gmZtmXdZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=bkcUPOOA;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=HuzDXZdP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790840654; a=rsa-sha256;
	cv=fail;
	b=Qo4mJATkefvgul7PJqHP1Us3hNolLW2hJfBNyTqXQv+fA/8n7GmGZdinOExKGARs97e789
	AFqpDHdlmsDWxMO+tLRjZ+9vCxheXnkSeA2tRivqzisHmyqgVbuTca6/dNzd0GY2Z5qsII
	yEqjE215erBbdQxyK0f3ZRyIhotZkdbRCIyBUBqstvRdHfDUjRpQq5yjlOHlvSJAumReJ/
	vUsugPMAbKul9uUTQLxvZHuy6j7WmZ3Cbh9KJV01f3hq1kSrIWnpwOrDTYvrVu2RW6yqGG
	Nl6Z2LT3KBXJyLhT5THWYI2lmuaLh5RRqbxeyuAwfNGnvCuceT+cM8bHKFsntA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gmZtmXdZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=bkcUPOOA;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=HuzDXZdP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840654;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6prXjnrhkxD32zxXMdfmXq3Ez7COCjGF5zHg2x62HcU=;
	b=bmb1mk5iR+uUrhvc/zTpnL7tFoDQNqejrwWE4l3El14RKDiqeEcK1FUHqprXtOHSF32clP
	Kqrgi6NEcYDX0BHqYNXphouAQ+49jk/y7LgtHciq8iPgXh2XtRcxfHAJcfkIwvwejDuCSS
	B3Yze5OhCNA7auJFiLsqSMqXtc0rZ3pL4Sidom7Moni2VrNIjeisoyoYbwznTJfLTxZvmV
	XsdLzKjp78ZzIhnrgTHhYZJs8YEVCMoswYivmHaZezijeLWDSDKT8WKT1KKtBisEVcwTUq
	vpEaeDpYDzG4Op5kbGWr+SKb+gswzv5PMQvmnwgWKoPIG2fSWf0w2IbZXE35Pw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6prXjnrhkxD32zxXMdfmXq3Ez7COCjGF5zHg2x62HcU=; b=gmZtmXdZVttrb9+NngxIvJl0Da
	vb3TXEX99vkxF35pxT2xr6r7AEF14SbIzNkVslXfZkz280ETKThsd4idKcafs91iZtIe8ZS+b/MDG
	jbZAiQ5ICiFHz7TJgdCnYhmvmM9XzfFWkiWCk8ESqF2111PfGyZalZn/XC92HWkUaP4hHCOWcfr/c
	K6TTfYEXlGUQv8gKPewPFtjCqHmOQZJFvre1MJCYFaJEJa1nnLxSe3+CVvw1k4YB6lrfqDZxEORii
	2f374w0g9liNwYGmosVNNCUPYsg7fmZjTRPoHqhaC7ZD11LqN9yI4/PNn9Pg5w4FLSp6IyyxicLM5
	Mt4p6x0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRU-0000000822P-3GhX;
	Thu, 01 Oct 2026 07:43:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRU-0000000821y-0GEU
	for barebox@bombadil.infradead.org;
	Thu, 01 Oct 2026 07:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6prXjnrhkxD32zxXMdfmXq3Ez7COCjGF5zHg2x62HcU=; b=bkcUPOOAljzXd0LSt4yR2xYgKw
	oBuHbr72jeK2+jPmkbv1RI/sFrfNmA1m+ZgmfLvYn+HSWcz9HDScqcW3ehmciaQ76gk3PL8z5U4iF
	L9VjWkmjvCtXBrHZocfhJphgGocxLou94RrCqaNYzFpb5Kr3/Ay3kc1pgmFdVayZHFg2cPBVmAiqZ
	9s6N/+R1ikVJroauF+q+lORAxv/aX1t7g6m69onkjkXlAFEIcPeQHhk39bt1uAk57AyFBxvpApbX7
	4fPiPwTpoQClSexIKpZ8BNhUR1L1g3oj802yjI8QJruusthPjhG0G7QpLZy5LZ9YA1U4xSPVpk/BU
	QUIoXxiw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCBRP-00000004gtq-1lEl
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:42:58 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E91572022F0;
	Thu, 01 Oct 2026 09:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6prXjnrhkxD32zxXMdfmXq3Ez7COCjGF5zHg2x62HcU=;
	b=HuzDXZdPlgaeksSleOqsn4kdccLv1KHJmyDuDyKc/2Mh1e4J3Ynrk2B9YB0GMOh36ZPPLS
	9gtgPDhOcTLl7mewxMWMMff2EBbWngzeH0cQICuB/Z9nQb5G5WJN91snEleEMTmixNWwaT
	8IpFlLsG9ElkgMo2PLzBeD8JP//MlOTh/jJX7LGoxwwIThhOXkUcXYAsz2JHY+CZHR/IOx
	3DRfg0ZIqGDgVHLzaONrX+zvilUiyQzsGX88c+i9oDDlx5/ULFHkRMldPxccQdrP9gB8hv
	Fk6shfVXq/142zfGJc0yYr3OA07ISswVvwGiGTTlS1UVUD8odQGPdSU55vyilw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790840574; a=rsa-sha256;
	cv=none;
	b=erEz44hwM92gorGIGHaPJfOJO3nW3xtSojIWUi9gb+VUzeX3u2bt1OXTlKgmUXrMUrqsfv
	x6336tolbqq3ko6OJJLIVHDdkFnEPdqi5l56AsjsYcghezBPw5QjmVndmgNKAnteoCG+mv
	lgYkhQBgWn2wlTFNKrZwjNFt7YcZja9ljFYdmIPeyPFK0xBgkg7anAO8civ7oNz2PHQpO8
	LFgBXLF1G4XIvfMDIqwPWH/tZDDE13htMk1huNXK0QY2JZqqkFEJCdmt7v2SO6VqHq5E+V
	hi/Ah0nO21bJLsxhuHeOfvx5PWlXVmrjTBBWJdzp2uKz3BsKy9e5mLQynOibrg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6prXjnrhkxD32zxXMdfmXq3Ez7COCjGF5zHg2x62HcU=;
	b=ae9aMKVJKTz0+ZajBD8LapgE76FgoqHhH5Tj1gEGMOkKScFVZO9F9vjzwBI5VHk0US0KRe
	d60eFJcA6rMZE038sju5DB3U/Am8qk0lU3i+WEV23jo7ljWG0orYYcD8NPQz/rlvaQ4fp3
	lnaFhnFZaeZ6YUwmYZ6SE+DAPJGV9pw815an7vW2GvjtddguBafWHXkiBocdqw3Y3pICVR
	y4ZSAz5Q/bvGKPs397Pipa4aNnMKRm0m0ZJEjKy50tJwod/2SPDMOBAQ1eL/Juv1Koz/T4
	MLYNwdVEQJDbhO0IrhTF9XD4EN9AzZTomg2HWtgbu2GxJBsG5weHMnH6fdcfGw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 01 Oct 2026 09:42:52 +0200
Subject: [PATCH 2/3] ARM: rockchip: boards: leave moving to the load
 address to atf.c
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261001-rockchip-early-boottime-v1-2-dd891bcdb74f@pengutronix.de>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
In-Reply-To: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790840573; l=9721;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TkOGSMNCsVV1R2dbBlMsFCm+xbEqWeXbAvOfnhamu1g=;
 b=SL+7f8z9Lklkriy2rJ5QNggNzsqmt0vuLu8EyCbiFZaUjvkieo6bWFg1v3nPcqO9PRA6AYOh2
 8aSk9Zi6K1AAw/cpcxkhwrA8fftb4ZoKORqE/Q+icKxOOpWaQyt/CDC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_084257_151689_9C46514F 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The SoC entry functions now move barebox to the load address
    themselves, with the MMU enabled. Stop doing it upfront with relocate_to_adr_full(),
    which copies the image with the MMU off, and just relo [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-0.800];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 431E1201F18
X-Stat-Signature: 9sak9azqis9aganmyfchhbtwb3af6okx

The SoC entry functions now move barebox to the load address themselves,
with the MMU enabled. Stop doing it upfront with relocate_to_adr_full(),
which copies the image with the MMU off, and just relocate in place.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pine64-pinetab2/lowlevel.c           | 10 ++--------
 arch/arm/boards/pine64-quartz64/lowlevel.c           |  5 +----
 arch/arm/boards/protonic-prtpuk/lowlevel.c           |  5 +----
 arch/arm/boards/protonic-rk356x/lowlevel.c           |  5 +----
 arch/arm/boards/qnap-tsx33/lowlevel.c                | 18 ++----------------
 arch/arm/boards/radxa-cm3/lowlevel.c                 |  5 +----
 arch/arm/boards/radxa-rock3/lowlevel.c               |  5 +----
 arch/arm/boards/radxa-rock5/lowlevel.c               | 10 ++--------
 arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c      |  5 +----
 arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c |  5 +----
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c |  5 +----
 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c       |  5 +----
 arch/arm/boards/wolfvision-pf5/lowlevel.c            |  9 +--------
 arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c   |  5 +----
 14 files changed, 17 insertions(+), 80 deletions(-)

diff --git a/arch/arm/boards/pine64-pinetab2/lowlevel.c b/arch/arm/boards/pine64-pinetab2/lowlevel.c
index 73ca6866f0..63286bf630 100644
--- a/arch/arm/boards/pine64-pinetab2/lowlevel.c
+++ b/arch/arm/boards/pine64-pinetab2/lowlevel.c
@@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_pinetab2_v0, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
@@ -26,10 +23,7 @@ ENTRY_FUNCTION(start_pinetab2_v2, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
index 7723d47860..6a1169d24a 100644
--- a/arch/arm/boards/pine64-quartz64/lowlevel.c
+++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
@@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/protonic-prtpuk/lowlevel.c b/arch/arm/boards/protonic-prtpuk/lowlevel.c
index 08de527bf6..df1588d343 100644
--- a/arch/arm/boards/protonic-prtpuk/lowlevel.c
+++ b/arch/arm/boards/protonic-prtpuk/lowlevel.c
@@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_prtpuk, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3576_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/protonic-rk356x/lowlevel.c b/arch/arm/boards/protonic-rk356x/lowlevel.c
index 830d708b6e..1959881951 100644
--- a/arch/arm/boards/protonic-rk356x/lowlevel.c
+++ b/arch/arm/boards/protonic-rk356x/lowlevel.c
@@ -22,10 +22,7 @@ ENTRY_FUNCTION(start_mecsbc, r0, r1, r2)
 
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/qnap-tsx33/lowlevel.c b/arch/arm/boards/qnap-tsx33/lowlevel.c
index c5458937d1..88e94471d2 100644
--- a/arch/arm/boards/qnap-tsx33/lowlevel.c
+++ b/arch/arm/boards/qnap-tsx33/lowlevel.c
@@ -13,14 +13,7 @@ extern char __dtb_rk3568_qnap_ts433eu_start[];
 
 ENTRY_FUNCTION(start_rk3568_qnap_ts433, r0, r1, r2)
 {
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
@@ -35,14 +28,7 @@ ENTRY_FUNCTION(start_rk3568_qnap_ts433, r0, r1, r2)
  */
 ENTRY_FUNCTION(start_rk3568_qnap_ts433eu, r0, r1, r2)
 {
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/radxa-cm3/lowlevel.c b/arch/arm/boards/radxa-cm3/lowlevel.c
index e1b453f21f..2c91444d46 100644
--- a/arch/arm/boards/radxa-cm3/lowlevel.c
+++ b/arch/arm/boards/radxa-cm3/lowlevel.c
@@ -21,10 +21,7 @@ ENTRY_FUNCTION(start_radxa_cm3_io, r0, r1, r2)
 
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index ec407404b9..50ec27d272 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -22,10 +22,7 @@ ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
 
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/radxa-rock5/lowlevel.c b/arch/arm/boards/radxa-rock5/lowlevel.c
index e70752be31..f00c394c4d 100644
--- a/arch/arm/boards/radxa-rock5/lowlevel.c
+++ b/arch/arm/boards/radxa-rock5/lowlevel.c
@@ -15,10 +15,7 @@ ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
@@ -29,10 +26,7 @@ ENTRY_FUNCTION(start_rock5t, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c b/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
index 474f1a1332..9e083514e1 100644
--- a/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
@@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_rk3562_evb2, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3562_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c b/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
index 4afe83189d..b56f8d62cf 100644
--- a/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
@@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_rk3562_kickpi_k3, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3562_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index 12c2445287..021438e12f 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -26,10 +26,7 @@ ENTRY_FUNCTION(start_rk3568_bpi_r2pro, r0, r1, r2)
 	//clear bit 6 for 3v3 as it was set to 1v8
 	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
index d5ae70049e..a238f8bd73 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
@@ -22,10 +22,7 @@ ENTRY_FUNCTION(start_rk3568_evb, r0, r1, r2)
 
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/wolfvision-pf5/lowlevel.c b/arch/arm/boards/wolfvision-pf5/lowlevel.c
index c20ca4ae13..49fb2143d7 100644
--- a/arch/arm/boards/wolfvision-pf5/lowlevel.c
+++ b/arch/arm/boards/wolfvision-pf5/lowlevel.c
@@ -21,14 +21,7 @@ ENTRY_FUNCTION(start_rk3568_wolfvision_pf5, r0, r1, r2)
 	 */
 	writel(RK_SETBITS(0x30), 0xfdc20140);
 
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 
diff --git a/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c b/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
index 2fa921eee0..45ba471d24 100644
--- a/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
+++ b/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
@@ -14,10 +14,7 @@ ENTRY_FUNCTION(start_orangepi_5_plus, r0, r1, r2)
 {
 	putc_ll('>');
 
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	relocate_to_current_adr();
 
 	setup_c();
 

-- 
2.47.3



