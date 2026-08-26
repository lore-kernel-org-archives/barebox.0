Delivery-date: Wed, 26 Aug 2026 11:32:16 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz9zT-007NxY-2a
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:32:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6798E20205A
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:32:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CnM1TZDZ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MnmIvzMM7k9xIFRUpBachWN9V37s12AilCxc2com0tc=; b=CnM1TZDZkGj9RCyafQNB/57Vzo
	ZwZmV/8bLjkZk2IsvJeGdRridGGHuVAVQ4kmsURamGvcU+JIk7Q6tiqLx3uCxdZtYi5gLIn0JXgKu
	4rv7Mq/2v8H+UckBg9ZRemuHEk3ZhtnGFKu9xaPqHzfeOrqAQe+rDg5t5RHXcM9ccPyteM0yUniT4
	oA69l22II2GcLwE0ifa6ViooJp3c6zZpGXT7bO6u1fc/6PbE+Ty9N71JK6M59YCMCA2L4XlsLUV71
	ukp6OPvUy3bkk0dL/gORIKSHq+/fst+AFpiKTTSYur+u9dnuHdUzKQzfJXYNkKjj8b2C1U+dQVbkl
	rhrO05Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9yN-00000002CUh-3THN;
	Wed, 26 Aug 2026 09:31:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9yK-00000002CTi-3hIf
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B798920205A;
	Wed, 26 Aug 2026 11:31:02 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wz9yI-003PtW-2B;
	Wed, 26 Aug 2026 11:31:02 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wz9yI-00000009x82-2Qvx;
	Wed, 26 Aug 2026 11:31:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH 2/2] efi: payload: env: don't execute unmatched network driver glob
Date: Wed, 26 Aug 2026 11:30:52 +0200
Message-ID: <20260826093059.2370477-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826093059.2370477-1-a.fatoum@pengutronix.de>
References: <20260826093059.2370477-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_023105_073811_0D73C47D 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When /boot/network-drivers/ doesn't exist, the glob remains
    unexpanded and the script tries to execute the literal pattern, so every
   ifup without a firmware provided network device printed: /boot/network-drivers/*:
    No such file or directory ERROR: ifup: Running '/env/network/eth0-discover'
    failed with 127 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: w47f9rtc7958fb8t5dh6y9uxpp3x5qhu
X-Rspamd-Queue-Id: 6798E20205A

When /boot/network-drivers/ doesn't exist, the glob remains unexpanded
and the script tries to execute the literal pattern, so every ifup
without a firmware provided network device printed:

  /boot/network-drivers/*: No such file or directory
  ERROR: ifup: Running '/env/network/eth0-discover' failed with 127

Skip non-existent entries.

Assisted-by: Claude:fable-5
Reported-by: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/env-efi/network/eth0-discover | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/efi/payload/env-efi/network/eth0-discover b/efi/payload/env-efi/network/eth0-discover
index 62c31a553c2b..0d865a5c5528 100644
--- a/efi/payload/env-efi/network/eth0-discover
+++ b/efi/payload/env-efi/network/eth0-discover
@@ -1,5 +1,7 @@
 #!/bin/sh
 
 for i in /boot/network-drivers/*; do
-	$i;
+	if [ -e "$i" ]; then
+		$i
+	fi
 done
-- 
2.47.3



