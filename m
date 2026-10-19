Delivery-date: Mon, 19 Oct 2026 12:07:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIkH5-000ZNG-38
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 12:07:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D3D8C202337
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 12:07:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=daxXO1SB;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=HkGu3Qhb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JIblSRju;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792404444; a=rsa-sha256;
	cv=pass;
	b=gF4quToEMSJH+OFRCyx846xSsH0z2iR65b5Wnz5KO/fRxQA6FDoYCdbbEPt0NDEnm3AtHp
	EUj2ubKtUKXfzjhUWyaqmJztgoPryLKAj9e5GnUTfbID5cGwa9+a/iZe4Egj91YFQbCkIN
	s219y6Poy2CNZ6fmcpf2WkGCVJQB33bGSa7xrm6BdXDks48V7iCqxHA36YWr3nK4sekfRC
	JM1B9oaWtkIo86smuTtAsSjLkiSoymR2WCj1k5i0dlwonZsHlV98n6N95UtG1FwswV48y1
	yOPiapVQezU5DkEFZfqQ5vkspmTaiIZLHa42EiP1na6n1niQ2mC3iYe47LQ+Ig==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=daxXO1SB;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=HkGu3Qhb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JIblSRju;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404444;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ZT9/6sxIaCqOyWN4g8aOwxtQQ7fXvhsUtaoCcpkM4Aw=;
	b=M0+OJuwwUg6foX2tibDkgZT0HWHWUulhrLq7gfpKTBSdWfzLrUAemLH0q2lWpM4HBszUJC
	juuyVo0jBP5/QRK4l2JVg8m4p3D2hjlBEVsRPywKvjd8ty0ODHhU9DNDHHKrA8CPmhOcQY
	Jb8TYo86QzCkYTX35WFp/wf4o5EIP7EcAQFjSYMyyNoKZzyqRkAPEW/UbUwKs6dYj0IIgn
	k31UOlZtzzJkBIpyOC4AZsCdgCiJdQs5IY8P9aCUGXgjOCRHpd/P1L/2BgmO7tMpTsSISo
	aMf/wqLATcMlsqDGUqhmDaINxSqC5Byb6G6vwtR70o0B+fZkdtAtZCeFUwFN5w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZT9/6sxIaCqOyWN4g8aOwxtQQ7fXvhsUtaoCcpkM4Aw=; b=daxXO1SBnDqLNPwrsI0aCf5Y+o
	wpnIJ2Hyyf34yHJ7EC2ZYQ+fX5RJSwwLVUhbT8lgc26H4vjMkQtuWHcJ4+IVJTZLIs89gl7BpOgYR
	xm6jkVUxvBA3qyPLKTpe073hCzUYHOTjQkM9/piW/bne9FBjBavAl6t2zFUZv6fDjkbx4j2I9XPqV
	7iVNyeDLyM2LTb3o8o/xf4TDPTeOKwkDCzF65wys36B25mwxnjARD9klHMdX9LTI/5+/FTjJnPArD
	fJNRxk389bc/dWjeATahXRrcjXGZpOe2Z972dYRWwMRXJxFiGPpWBuYn7LF7KqJiUj1LW8whqpFhg
	uIqr5OJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFp-000000076QX-00q3;
	Mon, 19 Oct 2026 10:06:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFm-000000076Oh-40WS
	for barebox@bombadil.infradead.org;
	Mon, 19 Oct 2026 10:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZT9/6sxIaCqOyWN4g8aOwxtQQ7fXvhsUtaoCcpkM4Aw=; b=HkGu3Qhbf/npAQCEuV+jcW2oDi
	HEr6DhRnrPghEGUacPfuzDYzZGx9gtzJj5o6QaWTKXlp3t9uud1pSxmNxB3yG+ouBX2A1cdsjywhF
	OlRTcnsk0Hhmc/ftC82upXDyFW0yxsur249hghfAqBZ0qX8MqSme9h6Wk4q9fXChP7A0Q7CsRbQnE
	Bwlz25L7lCiJbq00sWGi5EUlwSh7TFLPyBOmqI40Zsglht8UPvBZpu+zSb+SiUh2cJlmT0MReJOaS
	Px0x8w4V2pJkosxIcHjUtt20eKVPEBJNmXeKCedCsXbUs5f5PDkCkEl5hZVbkXLdSJnVCfuDlza0o
	aGdiad8A==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xIkFj-00000003VgF-1E6H
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 10:06:01 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 372E9202283;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZT9/6sxIaCqOyWN4g8aOwxtQQ7fXvhsUtaoCcpkM4Aw=;
	b=JIblSRjuPXmJSWnvoeXX3O1p3JtYt5J9xh4UBg23bNl7qwBnnnaNrZladGkctKw7fKFNp9
	SCs/+mOEyyhuWp/IcZ/19pxPZvNSjNTfudKw5BmN4oP+TJJvtnOW6hI0ODXrHWBERyzJhr
	2a95HXAxR/I/EiXMej0kgT33L/p3wmRVNhHvirIGUxDraynPRHvPd+VH99w8D/pvxRaQx7
	me/YZ7wj3h7Z22QLzywFCuLzDKDHzuwGR50em74PUYoXEUP7pFtVsjdY7NIdzYz2ngk0D3
	cl8vt61K/yjvldUT/tnBTYG7JI5l20tWAuEAl4CK7hnBXqod9TWtbUJxWKpKkg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792404356; a=rsa-sha256;
	cv=none;
	b=e2d+4QgUmpqaUidm3Ckhr2tUn7TuXUNaWQqpsV+YnUkjtBXST4Gmxwkoz6Ga7KuWiSl7Si
	LmTaaZCyDS2ut+KcvdUwWYTUhyZKsCgL5d6ym9UmAepeqC1Qs2FKpB8kzxm/ThzHEMWTUw
	GyjdNfVeZqMlSjG7Q/X5BSf6aLE5KVJe4uhLigGFTexuyYfyo3irgewSwX6gV2t+dh80Wz
	Ky7lFJYK+vNKzz9uStYHQWBuduNtsiHwQbpDtY06/xI+vuhxok3Wu7Tv4t1VFb1m5h0jqD
	FpdjzX4RHrp/i3YICv6SBRQZVKbKIOQb1LQO2FynQFWDIEzZKNGI8GK+LjkOag==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZT9/6sxIaCqOyWN4g8aOwxtQQ7fXvhsUtaoCcpkM4Aw=;
	b=W47uchYmp/z0iLLYAZvU5uOSRqjx75/bHjZDRCW4AC2wyubyd2FCFgGrHKFfkYBB7sXNwI
	CKdTnRU0O/spAjO52oUuRpHPVfUmIjoSCA4o4O0cnFo5X4VpjtZMfM6oePLBpeTzvXTert
	q3hGJiNzMMlcp4mK4j4tMEp5ENrrpgbbck75fo5VY7wyPwR4dHDlh4qTAO9J6caOA9OAmM
	uBfvvp3c4FdJJNUqSBl8HU002A0JmkPSRDIPbChdlBXWmElMm9SrO2mOmdHEbDBS/AbXFe
	jGbRizwL29Sbs2MkNIOZij+JgksWNyHpGs0bGVp9pme4T44qo0OS7z+dlcZh/A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 20D00740A89;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 19 Oct 2026 12:05:45 +0200
Subject: [PATCH v2 2/5] of: overlay: fix_path/apply_symbols: add more
 debugging calls
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-fix-overlay-v2-2-24e9ff1c0e12@pengutronix.de>
References: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
In-Reply-To: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_110559_726374_6F417655 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- drivers/of/overlay.c | 6 ++++-- 1 file changed, 4 insertions(+), 2 deletions(-)
    diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c index a1df9c3c79..2ee3c040ad
    100644 --- a/drivers/of/overlay.c +++ b/drivers/of/overlay.c @@ -125,6 +125,8
    @@ static char *of_overlay_fix_path( [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D3D8C202337
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: giu1sswhkikz6gc7pyjxbw55c73cjeue

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/of/overlay.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index a1df9c3c79..2ee3c040ad 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -125,6 +125,8 @@ static char *of_overlay_fix_path(struct device_node *root,
 		return NULL;
 	}
 
+	pr_debug("using fragment %pOF\n", fragment);
+
 	target = find_target(root, fragment, false);
 	if (!target)
 		return ERR_PTR(-EINVAL);
@@ -167,8 +169,8 @@ static int of_overlay_apply_symbols(struct device_node *root,
 		if (!new_path)
 			continue;
 
-		pr_debug("add symbol %s with new path %s\n",
-			 prop->name, new_path);
+		pr_debug("add symbol %s with new path %s (was %s)\n",
+			 prop->name, new_path, old_path);
 		of_property_write_string(root_symbols, prop->name, new_path);
 		free(new_path);
 	}

-- 
2.47.3



