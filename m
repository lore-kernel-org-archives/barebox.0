Delivery-date: Wed, 28 Oct 2026 10:29:52 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzyh-004H8M-2u
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0218420293A
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:52 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yMDepkKt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="gDGfaS3/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179792; a=rsa-sha256;
	cv=pass;
	b=TjUgH/YmsjzPUzaknUU3pmEQIke86MWqiXNE8c0WoOdg1ffZTjgwktDnkCbn9TrHkAsseV
	YefFnvcNeWSiJcAbXTBIHUcCtOQ0gaseu3yGRfbBXR5hnMmEeZeK7g3jYWCOX2g+qgJfDM
	iG7O/qw/3prfQL9Y4/Ya4Vs/CManelsYoRagPTF+Ncor4oPd2wB1zrdlnXIb1sk0M+RYFa
	7bcN8lPQi+FU4bIwXLXQJdQWZUiPZFOY5TadMqm5N1g6YZTFiCssMyS43lvYx/TRpO/YDS
	PjpiO262I8To+rbnPhma66temgqWpn27y5s3l86E/7nNyU5OEHnzRDRAgiaPlg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yMDepkKt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="gDGfaS3/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179792;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=HfjzkWTPLBptx/0BvUC0yqdo2hyU4oHSMkVICRm7uHY=;
	b=aaStTUxa0H4uNuqcagw+//4p/EqHn5Ss5B3F147NRhz6D52j7zEsyP3zvNyyR35tEKbdkE
	n+4RkXFcln/iyXg1PLkujZJQv5IuM4ebwe6C6n6mgzWp42EKZbltIEm3ZzO1zFNI2sOTW1
	rA7IozckSE0ExOPoMSteUGqsQhVTSOsQ/K24OIXgcCscgFlSSo2HQ7GYsqkBFLsNLQdhwS
	udZS4LuIyOVeFGhyEFcuR45AB/r4edbX0xWwIyPB6sW2Q8VpMR2axlwYX/eG17d0oX11pc
	1OsT9W9Yef5SxYa0/jwdsjZRqNWppIHsEFeSCVAJSIpuKFJZOCVzjKErA8WW9g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=HfjzkWTPLBptx/0BvUC0yqdo2hyU4oHSMkVICRm7uHY=; b=yMDepkKt4eq1qG
	EUqGR1EYG/16GzlgEKKJAUyWE3Oeq5ub6OlVvcOlGFMgzj4Tr4WgzOION3ESUAcd4L6T5308/24Qp
	KqKSd87uB93iVW/L3K7xu60q4IX8+ly6ezSdb2VV9gHJaFQxg96VCw5voybLUIud1GfIm3S0N3LXD
	LkS3Do+I4asJnqg/Ov6GNTvFl3AEWhXocV/MYp1iF122eqQj8Wtr8ISfGkWQR0Dc9ue4tOjhOFJig
	4v/VeRv8liwZ1yg4sSOihIC4LhQn9SuLgpeyHN9Y4M3XUMNtpB2XgKxFHx6MDzusUKYR48wJGEo6N
	R4+lEXDXMcDEVeJHgW0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztt-00000006eFt-19FK;
	Wed, 28 Oct 2026 09:24:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztp-00000006eE1-3hSN
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:51 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7A4A1202920;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HfjzkWTPLBptx/0BvUC0yqdo2hyU4oHSMkVICRm7uHY=;
	b=gDGfaS3/vDgCSg51eiDd66u4CIwwbjNlSiwzySTn4hMV4EQaToxPp9revuyIE3MUS7YRbK
	dzc1zQd6kUcc6zncBBwhzq/UpNKFklEzIFTYyRzDw4IWvI3avu4xchl1ThFHtDEB48ekbL
	M90285SrdgTs1ZL1xgEPfb+45zLBMn9aNhLCNCnaoBg8w8n1eF7Iec4nzbUgc/MMGgPDVj
	yMa6Tm8nRHl934LlhNOKFPO5YXVHDDMLkGGH+awF+Zx0XO7bqo/iNqUv1IKpxR3A/YR7Fd
	uFRAeYlSGrWCyt4wYRo1xjkY8N4wOdBvdYX/UCCxHdwa6hvoGkIlq4m5PhLfvA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=N9SrghYlNLQYRYvkcZ6XqEBjseXOC8LGuAkHKgDXF8Pm0pN03vnd2yAM0i5mH/cQrzcM9t
	1dAGImrlltcxtVhhH7PUNAn0r9HJ1FUbpzpdc+9lhdG3Ns1BUoUZ29blMgTrAhNTYicjgD
	ZlnYHeXn3jzDAjDS43cO1FIKNHa0P669OlFuFOh2CL1nYaw8myRAUwSGGehZPRVA4jY8Ha
	+dqMyMapBYGekILsJ5eeTzoplbfo0ahxBQb4/sQ5kY8uJiLqdF3Vrr8/TVethRP2/OLeAq
	ljt6r2Esmk0srUtu3MtuaZDLoQrSTAhs+hbCNMkS/ueqClkjMxiaj3ivxJjooQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HfjzkWTPLBptx/0BvUC0yqdo2hyU4oHSMkVICRm7uHY=;
	b=JFVm51YVA4C10elr/GV58M2AKo8gf8DarTKnl79nJ1uGNfK7jBnyi0SYOPbUq/Td8g0fuI
	Ib7bmHDLMt1CX+apZfnSl8LZNRHLtugj5WK9JN281b7Zlj2rVMf/dsJYA8CFiP7WoUsBQC
	LXEhI0Q2Ms0C0d5SguMbyWEx2oV4cVEfvP3nuB6fWhIsFV9RZKem/VIpGd+t6QhLZFOLMf
	7KJ+MtsLg5I13jzbxzl4kgSXlJ0n/X5wLXA4D/PwXLP/r+iJJQakppiDQ0AqrT9Efx0mKd
	Zj7/hliqo419/m5epwmTPlBRzBQYhWtLsOPa6HIavVTMdXFu5dBK4MGXTqWQlQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 54BD17420DE;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 01/19] commands: devunbind: refuse to unbind devices that were never bound
Date: Wed, 28 Oct 2026 10:14:35 +0100
Message-ID: <20261028092442.3300753-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022450_382343_4B5B71BA 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> devunbind on a device
    without a driver crashes in get_device_remove(), which dereferences dev->driver
    unchecked. Print a message instead. -f is not affected, unregistering an
   unbound device is fine. 
 
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
X-Rspamd-Queue-Id: 0218420293A
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: c7jwhwhdkzgh77uox1t8bf3m44d56f1r

From: Ahmad Fatoum <a.fatoum@barebox.org>

devunbind on a device without a driver crashes in get_device_remove(),
which dereferences dev->driver unchecked. Print a message instead.

-f is not affected, unregistering an unbound device is fine.

Fixes: 4d515afe56eb ("driver: make CONFIG_DEBUG_PROBES more useful for removal")
Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devunbind.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/commands/devunbind.c b/commands/devunbind.c
index d30193b28527..76dd0b715e6e 100644
--- a/commands/devunbind.c
+++ b/commands/devunbind.c
@@ -52,6 +52,12 @@ static int do_devunbind(int argc, char *argv[])
 			continue;
 		}
 
+		if (!dev->driver) {
+			printf("%s is not bound to a driver\n", argv[i]);
+			ret = COMMAND_ERROR;
+			continue;
+		}
+
 		if (!device_remove(dev)) {
 			printf("no remove callback registered for %s\n", argv[i]);
 			ret = COMMAND_ERROR;
-- 
2.47.3



