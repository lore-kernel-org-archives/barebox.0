Delivery-date: Wed, 28 Oct 2026 10:26:03 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzv1-004H11-0p
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:26:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6E4CC202925
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:26:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BPKuwzGB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=awiHwHBr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179563; a=rsa-sha256;
	cv=pass;
	b=SDJlNe/90NaukRLGNNucpx1ZQwA8pp1WUQPBMvYBZz6xl8A74DYRZhgZ1e3e5GNKHS7EGu
	GCQLc71X7vBO3KabV1OU/k4oyMN8rUtClkQX8s3JZZqqIqqjl44ud1W1ij8mPnQiFkOOCN
	hNf7sgY7H5b8JPxfClEdCIhzeOc1F0ndgDnvVGC7ID34zmiNyFvJVsGfgTo2ebtl9voflQ
	cgT7FnDi1lHMsGo+Rd57DiQbG/IkNtLWdKdJkYoZ/EFsy/HYNt9hvyfaBqyaRrCC5uAOe7
	j2fwryMqhIIQ9VrxK4kGXxbK1fAkXkiYYtP+ljV3X27PtcoFT/D2fVx8Q0vXqg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BPKuwzGB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=awiHwHBr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179563;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=y48QCxLu9aZSnkKVpCOAzPDrrfWkXZfn/QGH0eu31wg=;
	b=RwK86OGh+BRNfJED5rT0dl2YVyql/hzHQV703JDHVVid71gF8zYuYKlPtXI0HPOFX9hIrE
	pOJ1JBEDC4MrxcL+/Xjai83xFVmhyqqj2pRr6v8kFryHXoul+V9ZEQDrFzpcviY4IQAZ3E
	doeyBDMpFIBR/TeR2UQ+vYxBnDgaFogneX7K67cZBUcf2qY4UqWJBR0iVEEV2HZ09PovCb
	Ig3sFW9JqJ35Tc/C4+4zUeNpG/rhj5hI1gF3d2Qgi9A3eP5+v/mlsqIp1TAvHkXifxcibT
	limqeOeCV6A3f43BNzLnqAX4khUIXKzkw4N+aXYYZtgkWSx9mCAW/rMDot+cGg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=y48QCxLu9aZSnkKVpCOAzPDrrfWkXZfn/QGH0eu31wg=; b=BPKuwzGB6pUW7/
	OI3qgSMdU/CJOeTACm35IFXD008ymd3+QO/5DJ87PvbftnyPoEcg3sdY1jTBoz3Z5emuSALKp3+TQ
	o/vzBfbKPuTYRu3rwEo7gBQIhlOQQf4OItzlt4xMQOqwryvtMY93B21xOoNUZTJWmIXoSa7IUX7px
	htYvoOuAamlmjvihCaEodeeWF0cj5pzF1pXsndQoXzBMi54MSsJrlvUDUAB+YqY0TkWrDkuvqTzUw
	PWo5+o41xRDT9wsupWo2pPMwQ4TzE6uvNW9p0JF9G+47Bnrs4vLD3UQZ9AwD3nxuBiinlvLrafwu3
	14+qz+c+kvGBp3zoDRrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzty-00000006eNQ-2hQi;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztu-00000006eFx-2NAk
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:56 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C763920294F;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y48QCxLu9aZSnkKVpCOAzPDrrfWkXZfn/QGH0eu31wg=;
	b=awiHwHBr3sRg5ry1B3Bhsej7QqRKSbitRyVrT+kUGL1vWiLVEM/qW9Y0guSfMnpy6bq2PL
	TdhLnmiy/huhHrMZThNgTJOWrjsOR3FX2zmecrNd24lPL9EGgAc4qHuUIPHmvOyqW2SvE0
	REyIzupi1GdvBXyoTIlOMyoK9javSBOgX8ugc2Jytnk1VeGGrC5NiDaXl/TUYLlZHgtxdc
	/s8daszXUL3oSHP8MeJp1rpXMFUeOsVG7BEgzoMHMXQMQCVF/H1QiBBKbMU1De06ifcUb1
	La6MM7hGOldqaHGigG7bu1YZKgXu3GdFZN2iSCmL4i1EO95YKmB7xH+6CFQX/g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=SFdd/7bT8jg1qhiNhpbfYRJ3m3P27q4foLqEU3MepP/STbNgUy81TicP8lYMBFofz4uBaJ
	R2uuNuRiWt4dRz1GOG308pl3vjmk2/UbdYkh9cymok9M1Og5jETOY8rjumESJJEf0hh67V
	j+8AinSL8hV9PN/b0N+3J9rIjlT+UUyaVAE0Y/Kh55bhh2a+8hCq7HDJRlUgo94aELnbAy
	O6nSVVEbBuq/DHQvXcGKCGCESz7/30Ur8eDcRoBh0RaZLFDQZnTt/vHOa6P9OLeSepPpmZ
	AGe30RaX13H9GiSvQ9hm6z3PDfpNxH/k4nwPsXYJ5ocSUnbVfLJwH3SM1OgQWQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y48QCxLu9aZSnkKVpCOAzPDrrfWkXZfn/QGH0eu31wg=;
	b=bnDyz8OHQKUgtauu7yx3ZzL0lkaXRnm8ZtF9rFuIdam485o6jmRpJWOd9kolR6KU6y7sMj
	t6w3biErgxT6ylq8Gem4YyxVmIxtTal7CgupuqoDnAQUjm8ayeR3iMtuBulWhXnyl3U3/h
	P9RBmqD8P7SfT46x8NmRW2U1jcuzjp3Vq+Gmd6BfxviHIXbPD2iN6K9lnMXwK1Sqrs+B91
	3mieZlqtZ0iOkBR7zJst2Eb2r1vvsgLNAEwgQgrYqLX0tKBXKnvw7fYzdwuOAt/L6u/raK
	Bb8g/HVi+VG+mtzGlO0FsbstCVdTy3ZEUUf/9bs1TdkikmXUNB7UuH9lsoUEFw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id AD7B77427BC;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 09/19] video: backlight-pwm: allocate brightness levels with devm_kcalloc
Date: Wed, 28 Oct 2026 10:14:43 +0100
Message-ID: <20261028092442.3300753-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022454_763932_224B1B53 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The levels table
    is allocated with xzalloc(), but freed with devm_kfree() when it's replaced
    by the interpolated table. That only works as long as devm_kfree() is a plain
    free(), so allocate it with d [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6E4CC202925
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 93diu3pnk4mr8jw163cn6a961w9odtut

From: Ahmad Fatoum <a.fatoum@barebox.org>

The levels table is allocated with xzalloc(), but freed with
devm_kfree() when it's replaced by the interpolated table. That only
works as long as devm_kfree() is a plain free(), so allocate it with
devm_kcalloc() like Linux does.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/backlight-pwm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 581fa0237c0f..4ec0f6fe5b23 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -127,9 +127,9 @@ static int pwm_backlight_parse_dt(struct device *dev,
 
 	/* read brightness levels from DT property */
 	if (length > 0) {
-		size_t size = sizeof(*pwm_backlight->levels) * length;
-
-		pwm_backlight->levels = xzalloc(size);
+		pwm_backlight->levels = devm_kcalloc(dev, length,
+						     sizeof(*pwm_backlight->levels),
+						     GFP_KERNEL);
 
 		ret = of_property_read_u32_array(node, "brightness-levels",
 						 pwm_backlight->levels,
-- 
2.47.3



