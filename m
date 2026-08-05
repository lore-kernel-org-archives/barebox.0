Delivery-date: Wed, 05 Aug 2026 16:22:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrcW6-006ekV-2E
	for lore@lore.pengutronix.de;
	Wed, 05 Aug 2026 16:22:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 086AA20194D
	for <lore@pengutronix.de>; Wed, 05 Aug 2026 16:22:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qCG7byjM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oPHGXfy8CuX50gUhhn5YCniEtKbhQmWtaXOArLog4S4=; b=qCG7byjMMbZS7lWmJdxGfDvNbg
	drfPcQ4dL3JU0TX+W6GyReOXhbDPqKMxg5Qm1sJ9qFc6A8pLeJ1dituDrM1zFNe7k4jWBrKZiDFLf
	ZJ5HwNXNXRqsMds2S91ZqC6XaqBaahPv0yN6s0o7ckYyIcn+NJUZoldMJ3rkl6QIvmLymCUQR2WVY
	M8wEdEFxy36RhMOQiXmMxwNuKWw4W3fF4y3CD9hxoHiAUTpSvMe/dQchUeUh8AmxjhImpW4uPqeIA
	yNkInM2tp38tmY1W9X1Y2vObZO1ElzXY9iqBNb5Yp5FDHEDQo6AnqR24F+P7NBVzSe6MXQcU/xEGD
	V9c+QzsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrcUb-000000044SY-48dS;
	Wed, 05 Aug 2026 14:21:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrcUY-000000044SD-2NK0
	for barebox@lists.infradead.org;
	Wed, 05 Aug 2026 14:21:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7974720182F;
	Wed, 05 Aug 2026 16:21:04 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrcUS-0037Z6-1L;
	Wed, 05 Aug 2026 16:21:04 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrcUS-0000000G8DY-1HBv;
	Wed, 05 Aug 2026 16:21:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	=?UTF-8?q?Miqu=C3=A8l=20Raynal?= <miquel.raynal@bootlin.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fixup! sandbox: enable keytoc in hosttools_defconfig
Date: Wed,  5 Aug 2026 16:20:02 +0200
Message-ID: <20260805142055.3844660-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_072110_788562_4E56876C 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ci: musl-tools: disable KEYTOC as it depends on OpenSSL The
    OpenSSL we ship in the CI container is built against glibc and so compiling
    keytoc against musl in it is currently not possible. Fix the CI breakage
   by disable KEYTOC, but only for the Github workflow. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 086AA20194D
X-Stat-Signature: wijqbs3kgiqqjggu7paij1m1wghh16kj

ci: musl-tools: disable KEYTOC as it depends on OpenSSL

The OpenSSL we ship in the CI container is built against glibc and so
compiling keytoc against musl in it is currently not possible.

Fix the CI breakage by disable KEYTOC, but only for the Github workflow.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Patch is not yet on master branch, so this could be simply squashed.

 .github/workflows/musl-tools.yml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.github/workflows/musl-tools.yml b/.github/workflows/musl-tools.yml
index 52cdd184ade3..d85328bc3f3c 100644
--- a/.github/workflows/musl-tools.yml
+++ b/.github/workflows/musl-tools.yml
@@ -34,6 +34,10 @@ jobs:
         m () { make -j$(nproc) CC=musl-gcc LD=musl-gcc HOSTCC=musl-gcc HOSTLD=musl-ld "$@"; }
 
         m ${{matrix.defconfig}}
+
+        # CI image ships OpenSSL development files only for glibc
+        scripts/config --disable KEYTOC
+
         m scripts/
 
         test -n "$(musl-ldd scripts/imx/imx-usb-loader${{matrix.suffix}} 2>/dev/null | grep musl)"
-- 
2.47.3



