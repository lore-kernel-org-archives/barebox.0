Delivery-date: Wed, 28 Oct 2026 10:29:49 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzye-004H69-1l
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C18A820295C
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="hS/gFDmQ";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F3ogGio+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179788; a=rsa-sha256;
	cv=pass;
	b=P2MM3Km6cotwI3ncJMRQea8t5OAdTHACg6s2RqzmoJDcuUG3z92O4EpHu7XZlfCcw6YA+l
	FvO4L1sipEDhkdOGXmUouGge0hXaNwbyDgbFNWnkOnC32AJbu4L5QkmzzmDQ6maaQcQMkW
	aJYT5XU4qEBtVjMud83570JaaMUmAzHg5w/MaTRVvAchQSt4yHAiwNZLuj0OTQH8dSwsfJ
	CmpALbPROEuDamDwXPArKMdUbJRH2DpYs+u+JuWRF7j8XqUtw7zLCpVRn3evph00MMBHjF
	fg9H81Jqg6rB3V36vRL2QlqicaQGd1CtDkixG170XBL0lYVhv6pDKp+89q5y/Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="hS/gFDmQ";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F3ogGio+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179788;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=b7lkdnlyJK72WSQWpVmfO5arUdbjCWoPFblrJVQ5Z8A=;
	b=BdmZEp2LcfEhNSa19JTsHJZmH2QoihyMkce0oSm5GiJVz4dFd1XisW97o53MPvjCtbzjPh
	eGHKv6tExpHkJSbmtj5sakTTyACOpgyiFw9OAk+YzibM3xTyP2qoTs/H7B7GRPDBRBq2oO
	wlnx4v/Enzv3DIFmsOcABf3tGcG9+zs4MzZaF5TvlOp2CWzNJL7Ndr6Xnipe6Mtq3q5dv/
	cXUnMw2yeFFswNFuw1Akm1Q0zvwiwcMxkJ7hxxFeqnx8KTysF2tLIm+nCo7NdpESL3uWH7
	C/Qj3vL7NKh3E+f6N2nWfpr4d3Atd45C23onopsyDtYRHdZowRk5AA3Jv8lhHg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=b7lkdnlyJK72WSQWpVmfO5arUdbjCWoPFblrJVQ5Z8A=; b=hS/gFDmQsu0GRe
	KY8JjHjO89XNGraifx6X2V3E+tziN+00IdJkfZpvtsPfynK2woKM/smXrt60SKQei0hZHjTCo4Y/t
	lB/FgBRS2RAZQjQsslvk9wuo6PVHw4TJG/Fsw7rVOfWwoNw3ResEiZjqsNOr4FDUV3XOdH/3CVxiZ
	DiRWngBkC6olQ8L1cwp108niBZ3hh8gR+PYj1KobIIeL6MUTmRQuESY6ELuQXCx/laJ8E8PmfEy2X
	hWeV8eubInLFB4OfcWW82wFDsO7QfrAHSsOhTf2+PmXIymPCD8xPjvdTlf+riAfFoM144QOhmNd5b
	ckvJS+nifHpdX+9mddRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu5-00000006eYu-3w9W;
	Wed, 28 Oct 2026 09:25:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztx-00000006eJy-3qrP
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 44B9D20296A;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b7lkdnlyJK72WSQWpVmfO5arUdbjCWoPFblrJVQ5Z8A=;
	b=F3ogGio+aYJVsjI6JZ6HgQhJ4C73yH9aDTsQcnu37UVScOW/hY7rQxX6jow1o1Q65nQ+0h
	EnsZaSGG4uvG+3tX/pGSI9npktLhGb7FQrWAcdY82lMy3qnT0i+9O5U4YLCfExmPW0yiKr
	kpE9D9gvu983CjpQ2UpF/5GJQIbCnKn+FUFVM2QhpGwFJVQGj7dhRI35OAZJQNOheH91fm
	qu0nKYq9VgTfEPEVJUVMmFMmasIoeJ061M0CZo6F5aNqA7efuzZDoez2tFxjSyj5lnVx3p
	IpJX1xZFryYmHtx8jNLzNlQpoYVh+0T86BX6V2TOT3fiy9osyw0TeTrat0QvNA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=OIPbNFUN76df9G5+dmHvCadlHWUiU0da9wZZ60q2p/AdLrKLtHUMn5FbEa4Zd1Jk2fiwSW
	jbcH+OYiNsXKy3/8nTmesjcbJQ/5PKf7RXtJcbnqfieFiSNQddtyHk1NZBCF4FVv8dbayA
	Ek+efuGCxv2+kkqLwPBte3MVfzKBy/eI/oqlxm/+LDx6DbO1pF+RaR73+87gIwVDTwPj2t
	HFrweNNZP4TgC/DEdXl20WcDtnIQRRBdnhdTIe0C59+A0D9JyWwlM/VC9+jrD5eyqLqN7k
	wh7QraF79QsA/Xlx+9s4oSOLDP4abHfJ0k043I6yZgqkeOVPGPQe7ewe37lpVg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b7lkdnlyJK72WSQWpVmfO5arUdbjCWoPFblrJVQ5Z8A=;
	b=GzSfexke8zMR4D3S6RwMRCGZpDfUHlcVgeGl/+1G5JPrENRe356gTYvidqBG6iO8zy9xdf
	WgVGNdhbsubXJ/0cXKYKJDZWM/eBukwKBIPJU70PRl7d/OnSteDupE9K9rDbhVMMA4/G0I
	mzwInYUF+N2huJovMVZnXBLX7Be36zogFPf34PjxMDH+otflrPySwXVRss9P1Lch/UGYKM
	egHNFBuI1HEDRQTpIyVFnC7GKuTavyQNxUYikosH55JJiTJF2By1tsImbh5iqvi9ai80Y/
	nlywErjU0r5ggyiptBBjz7rjqlb1MVIVw05SlI5UitjySF+Hi4il5eAY+sLLjg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 29BDA74094A;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 19/19] serial: stm32: request the registers with devm_request_mem_resource()
Date: Wed, 28 Oct 2026 10:14:53 +0100
Message-ID: <20261028092442.3300753-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022458_161544_AB129721 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Use the managed
   request and drop the io_release error label. The driver data stays on xzalloc(),
    as console_register() keeps a pointer to it and console_unregister() may
   refuse with -EBUSY. 
 
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
X-Rspamd-Queue-Id: C18A820295C
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
X-Stat-Signature: ydx4j8y1jip5zd4qmwp6aignxap49uqe

From: Ahmad Fatoum <a.fatoum@barebox.org>

Use the managed request and drop the io_release error label.

The driver data stays on xzalloc(), as console_register() keeps a
pointer to it and console_unregister() may refuse with -EBUSY.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/serial/serial_stm32.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index b3c4eaf90fcc..ca2f1bdab323 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -156,7 +156,7 @@ static int stm32_serial_probe(struct device *dev)
 	stm32 = xzalloc(sizeof(*stm32));
 	cdev = &stm32->cdev;
 
-	res = dev_request_mem_resource(dev, 0);
+	res = devm_request_mem_resource(dev, 0);
 	if (IS_ERR(res)) {
 		ret = PTR_ERR(res);
 		goto err_free;
@@ -171,7 +171,7 @@ static int stm32_serial_probe(struct device *dev)
 	if (IS_ERR(stm32->clk)) {
 		ret = dev_err_probe(dev, PTR_ERR(stm32->clk),
 				    "Failed to get/enable UART clock\n");
-		goto io_release;
+		goto err_free;
 	}
 
 	cdev->dev    = dev;
@@ -197,8 +197,6 @@ static int stm32_serial_probe(struct device *dev)
 		return 0;
 
 	clk_put(stm32->clk);
-io_release:
-	release_region(res);
 err_free:
 	free(stm32);
 
-- 
2.47.3



