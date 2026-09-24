Delivery-date: Thu, 24 Sep 2026 20:02:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9nlj-005rkH-2k
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 20:02:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A2385202148
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 20:01:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jjxsHXGr;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=Z7eFCUZF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790272919;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=cr6eJvjtT+0LoKslw4COvfBm+rC1QN8lcoDvM4lg0PE=;
	b=H5U+PGps9O5DaMkVhta8CXogWlCVYGkjK81zXvbuOukVwVcLWJd5jZQKdYps4zh+JhScZ9
	6oYO5e/F1vv8mXkCs1gEumDA7tLdH5m1jfpUZ6uJqo0qV1D9ItkDP0kCrUP3//gkY22Yox
	4TQJAcly7F1/tHbUkOHdoyM+88yF89ocn8Kkv6tHSCMQ/Xdg9mB/iyNcvXFzQjUoEOzsWq
	kok5BV7M5F9Bj5IxWcs710YgkEenzMk2qCUy44KOEGAayPfON9Hs1RyWfcHyQvrkeUE8CQ
	D5YetJXxYV8zz+ETWPCtnQFQIxnGruOvL0CjZBPvuoCg8n83+i9g5qyJVTdx9Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790272919; a=rsa-sha256;
	cv=none;
	b=HpfNIdaKYtES74ehDqRX9X9H+ii/jg+3bwevF7w7bDuvGUJwV5JpvMGt+s2vW70O4riEEQ
	8H9f34KFunGOxGHRHwUSkyYfzU5YJ+M6+xNhWlTXHpeniumKfqMq68FI+zgnkaqsStM9kt
	+P76gjmmFrLKaW9G/yx9BwrCi3yxNvqyCtZFix7W4aIurRoWakua7hRCherCUfcVTrOdc6
	590tbPXTtOt7cmct6n3RL+B1rwCecAtAAnGSP4G6jEfAPacAg2TcmpEuYJPdyGJXXW8FGz
	j3XY1pqoiL2fqoNA850wJE6m+2xTZuaDNYOAeS+xilgZ+1hIHjGadHvzEDvocA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jjxsHXGr;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=Z7eFCUZF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cr6eJvjtT+0LoKslw4COvfBm+rC1QN8lcoDvM4lg0PE=; b=jjxsHXGr31NQLDBzTSC+Xx+uE7
	wm6Gxbs+diSqh1NFeKQVLRVoU9S27TQCh1k8j4zxSbCbf1yeJ5rxcfuC+hd67bHvLXG8UKOI01zNK
	p6iFyIiRPZ3q6bPNLwOLaznPtlBJyA8e6kFezqw02g5gMe8Do/S5jH4UDafF6cN2sUltDY1OagPEb
	yhqqPbNEtmJnygc6n0XcpCCEqNtUQFyi/QKTj0Ne6RpFH83bH8iZFhvJ5su68NLJnQYvCH/EAT+JA
	E07nu7WyKUKNA1dIes6wWDmQrlmBi064WaWUVt7lAkyCqy8ZmOSAIai7WrybbYDPD6AGFlAaQLdKL
	FTZQ1eJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkQ-0000000Br7Y-0k6G;
	Thu, 24 Sep 2026 18:00:42 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkN-0000000Br5l-3dGN
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 18:00:41 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 65B824E4105C;
	Thu, 24 Sep 2026 18:00:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 39EF860738;
	Thu, 24 Sep 2026 18:00:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8E9C91032950B;
	Thu, 24 Sep 2026 20:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790272833; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cr6eJvjtT+0LoKslw4COvfBm+rC1QN8lcoDvM4lg0PE=;
	b=Z7eFCUZFPYvXRfIlzJN+mWjdh6aGRm376Q9fFTCgrgAwLz0iwrx/L5KHq7OLDReeZlf0vj
	ehA8Vb58kME8I0/l87DGynt5K6lrL2JqvXSvKLU820cABgAx5km14/V2Lap2sj/nITbSeK
	0THH2XYwkk8JWG/Xc5MMoI3ob9JkwnAyGhOqQgQBwMEo6K9baM5ZFBLaw6UDk0rpShPNVS
	LLhCjtlm4I+yDgkwfjNgm5NgpZwKdWWJn5sFYqKDoxqXbrDU3SGXx9aZZZXzoE9WwNXasX
	Qm1v152OTyxT+paFBcym/GYXk3rqef7/tC8IkAy5FylxRk3rn1UwaonnV4qnnA==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Thu, 24 Sep 2026 19:59:33 +0200
Subject: [PATCH v2 3/3] FIT: add cmdline to whitelist of non-hashed
 properties
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260924-add-cmdline-fitimage-v2-3-4a665e165002@bootlin.com>
References: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
In-Reply-To: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_110040_049831_E8813F5A 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The cmdline parameter of the fitimage is an additional optional
    property in a configuration node that is used to transmit information to
   the next bootstage. Just like description, compatible and defau [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A2385202148
X-Stat-Signature: njhc93w3rubd6uo5azen4wbzsb9a4q7k

The cmdline parameter of the fitimage is an additional optional property
in a configuration node that is used to transmit information to the next
bootstage.
Just like description, compatible and default, this property doesn't
reference an image (e.g. a kernel, a ramdisk or an fdt) and so it isn't
hashed and shouldn't be added to the list of hashed images.
Add `cmdline` to the whitelist of property in a configuration node that
aren't images.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 common/image-fit.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 635f63c9e2..cd477911cc 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -333,6 +333,7 @@ static int fit_config_build_hash_nodes(struct fit_handle *handle,
 	for_each_property_of_node(conf_node, prop) {
 		if (!strcmp(prop->name, "description") ||
 		    !strcmp(prop->name, "compatible") ||
+		    !strcmp(prop->name, "cmdline") ||
 		    !strcmp(prop->name, "default"))
 			continue;
 

-- 
2.55.0



