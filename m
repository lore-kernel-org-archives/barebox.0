Delivery-date: Tue, 11 Aug 2026 19:24:14 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtqCz-0023Lr-0s
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 19:24:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 70AF3201BAA
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 19:24:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kCLKLi08;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=R646woFq;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bwRGDXfO4B3vqmo8ygXMbWwd/4nCkcFav/LM/mGB0dQ=; b=kCLKLi083XpdXjbjaMCfu5y7TU
	IWvRZN1qYrF4X7asPlRYxqfGdk0JyANo06EOj/8VarrPSO9GaXYmRd5CaWgy1TOv9XBTxcrr8dXM7
	ktLiYVjXhTPpvwOeT/wytySYVNlyW2QwQYcQ3mxgpddkUMgcYy+cn632uBR4S3fX4mTJeZPDHowt5
	GAlzTD4Tzt1dMz+cNGijVwIQ6ZNuyzF3O9oAkxNB5U0B3n0Q8NRrWEKMvELX1E9N+YGtW0pfpkevO
	jny6A58bfnBsUS7e6NNEx0igq450MGPeI0xlgDZb2cTG9JYYWA4bhpRjSAPgC8RvOLXBogAYbkNEl
	HNLZruWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtqBM-0000000Ed2f-0Sdq;
	Tue, 11 Aug 2026 17:22:32 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtqBF-0000000Ed0I-1Wf2
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 17:22:27 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 88C6C4E411A7;
	Tue, 11 Aug 2026 17:22:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4FD206033C;
	Tue, 11 Aug 2026 17:22:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6283211C49186;
	Tue, 11 Aug 2026 19:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1786468935; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=bwRGDXfO4B3vqmo8ygXMbWwd/4nCkcFav/LM/mGB0dQ=;
	b=R646woFqa99kATLgyDB6Sg4cR8pYvh9Ostcr3UVijsOIG81Olt8QRDXl2o8q7qyoD+M5a2
	dCg0Caq+z2WHQCVJoZpgZCzSmRUEtyG3IMxdNO+MwScoyIdEX5Kf1n4abu6dIfaBCM6kdl
	YLYsDZnUrpZW0zsImRhbo5pEsByU8xgTOJ2O+Kf0X54KSlrfq+9m3r5OKPyr3acc0wKkCH
	FZ3WpJRs14l8YS695uVrnOygTzw2p/+HQvnkO2SWVRbF6fnnRqEnBg1WbcdJT3J9aBa+k6
	meUYJVQShYM5NS1WWdRg9McUre03tYI0owxuxc4Js3k/MN7Rb3aaeCeHKrREtA==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Tue, 11 Aug 2026 19:22:14 +0200
Subject: [PATCH] ci: container: build openssl against musl
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260811-add-openssl-musl-to-ci-v1-1-0ca5525f1775@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBCF4avIrDswSghpryJdaDLqlDaRjEpBv
 HtT3Tz4Fu/fQTkLKzyqHTJvopJiQX2rwE9dHBklFENDjSVHFrsQMM0cVd/4WcssCb3gQM7eyQR
 jjYNynjMP8j3D7fOyrv2L/fKvwXH8APvirdN6AAAA
X-Change-ID: 20260806-add-openssl-musl-to-ci-f086904d4648
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_102225_548911_25948420 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since 3c739b95ee ("sandbox: enable keytoc in hosttools_defconfig")
    the hosttools_defconfig also builds keytoc a tool required to inject cryptographic
    keys in a device tree. This software needs openssl [...] 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: seuz376rc9hucxytnygoo9shyq9kuhb6
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 70AF3201BAA

Since 3c739b95ee ("sandbox: enable keytoc in hosttools_defconfig") the
hosttools_defconfig also builds keytoc a tool required to inject
cryptographic keys in a device tree.
This software needs openssl to be compiled. However, as barebox-ci is
using Debian as the base of its container, the openssl package given by
apt is compiled with the glibc.

In order to compile keytoc with musl, build a version of openssl against
musl in the barebox-ci container.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
Hello, I added the support to build openssl against Musl, this fixes the
commit 3c739b9 in CI.
Another patch has been sent previously to fix this issue
(https://lore.kernel.org/barebox/20260805142055.3844660-1-a.fatoum@pengutronix.de/)

I didn't find it in the 'next' branch of the Github repository
(git.pengutronix.de seems down on my side) and I assumed it wasn't
applied so I didn't include a revert commit for it.
---
 test/Containerfile | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/test/Containerfile b/test/Containerfile
index 296835d080..00f24a210f 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -118,4 +118,17 @@ ENV LLVM_SUFFIX=-${LLVM_VERSION}
 RUN ln -Ts /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/linux/ \
            /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/x86_64-pc-linux-gnu
 
+ENV OPENSSL_VERSION=3.5.6
+ENV PKG_CONFIG_PATH=/opt/openssl-musl/lib64/pkgconfig
+RUN cd /tmp && \
+	wget https://github.com/openssl/openssl/releases/download/openssl-$OPENSSL_VERSION/openssl-$OPENSSL_VERSION.tar.gz && \
+	echo "deae7c80cba99c4b4f940ecadb3c3338b13cb77418409238e57d7f31f2a3b736 openssl-$OPENSSL_VERSION.tar.gz" | sha256sum --check --status && \
+	tar -xzf openssl-$OPENSSL_VERSION.tar.gz && \
+	cd openssl-$OPENSSL_VERSION && \
+	./Configure linux-x86_64 no-shared no-tests no-secure-memory no-afalgeng \
+		--prefix=/opt/openssl-musl --openssldir=/opt/openssl-musl/ssl CC=musl-gcc && \
+	make -j$(nproc) && make install_sw && \
+	ln -s /opt/openssl-musl/include/openssl /usr/include/x86_64-linux-musl && \
+	rm -rf /tmp/openssl-$OPENSSL_VERSION.tar.gz /tmp/openssl-$OPENSSL_VERSION
+
 USER barebox:barebox

---
base-commit: 4705656eeeaba0dd3617b69172328daf4dbf9060
change-id: 20260806-add-openssl-musl-to-ci-f086904d4648

Best regards,
--  
Thomas Bonnefille <thomas.bonnefille@bootlin.com>



