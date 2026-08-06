Delivery-date: Thu, 06 Aug 2026 13:30:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrwIe-000AMO-2M
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 13:30:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 553D9201FA9
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 13:30:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u9HUQV15;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qNFgcmDqHDok7PhefzYKKvTvdzCIR/E12Z0HTENeIS4=; b=u9HUQV152G0C+DnfjKnxK9LQ8n
	tGOreQi7ntP3dYLKOnG0mxmDASV2O6a2fGpm51U8dPH0z3KkNtsXeNpPYc9DonIkCzPIXk1KZSe4Q
	NXgCtVUjXizbkyQsqaN02FBXDhtlCNSbc4BEic5SZrIc+mTCTY6N+LM7yQvaXmzVTonznEpfs45rP
	UPSRpzerJshX7MTlHUXJ9Fsy5yIDfXs+/0SjWJCvKomjuMoFPIZYH42JROQvikkQEZ7GHIUtfL/+9
	+AFRc/GsObdKegGoD7J3A+B6s6sxoC7dDI26LuSjmzmSbHIuuYy6aCXuIe0ZAE6g6hRiVKHDVoae1
	H7UpVqHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwHM-00000005eQ3-2NJf;
	Thu, 06 Aug 2026 11:28:52 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwHJ-00000005eOj-18Tc
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 11:28:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CCE222000DC;
	Thu, 06 Aug 2026 13:28:46 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrwHG-00056k-2P;
	Thu, 06 Aug 2026 13:28:46 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrwHG-0000000G2ZJ-2e1m;
	Thu, 06 Aug 2026 13:28:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 1/3] test: kvx: add Labgrid env YAML for generic_defconfig
Date: Thu,  6 Aug 2026 13:28:01 +0200
Message-ID: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_042849_455574_0D17B848 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We build for kvx in CI, but we don't yet include qemu-system-kvx.
    To simplify at least manual testing, add a generic_defconfig.yaml that correctly
    configures QEMU to be able to start barebox. Signed-off-by: Ahmad Fatoum
   <a.fatoum@pengutronix.de> --- test/kvx/generic_defconfig.yaml | 17 +++++++++++++++++
    1 file changed, 17 insertions(+) create mode 100644 test/kvx/generic_defconfig.yaml
    
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 553D9201FA9
X-Stat-Signature: b8gpmrr5fbidtb6kzf83kz9omgda4jdk
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

We build for kvx in CI, but we don't yet include qemu-system-kvx.
To simplify at least manual testing, add a generic_defconfig.yaml
that correctly configures QEMU to be able to start barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/kvx/generic_defconfig.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 test/kvx/generic_defconfig.yaml

diff --git a/test/kvx/generic_defconfig.yaml b/test/kvx/generic_defconfig.yaml
new file mode 100644
index 000000000000..66b5bb308564
--- /dev/null
+++ b/test/kvx/generic_defconfig.yaml
@@ -0,0 +1,17 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-kvx
+        machine: mppa-coolidge
+        memory: 512M
+        kernel: barebox
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox: !template "$LG_BUILDDIR/barebox"
+imports:
+  -  ../strategy.py
-- 
2.47.3



