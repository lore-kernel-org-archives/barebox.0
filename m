Delivery-date: Sun, 08 Nov 2026 21:18:55 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ9Lr-008n2B-1f
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 21:18:55 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B5D50201693
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 21:18:55 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1AavKzbP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794169135;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IVzu+c3mmmcBtziUgmKAZ4c+AD6LQGuf+6OoTWcAgLo=;
	b=LngcwoulSJb014x4yHmMdIEIl/CYYYCUWVHZmFIj+jupSZ8CFkj9o4SiMGcghnoIEY/aJJ
	QFgASEisS+QQ0dZiPezMLNSk/xK+mcGN4bqu71vQ2HcCg22S1a3SS1sGnfKTkMmBISaNXs
	jKd3EVwzbEUPqfKKKDwrjIjE0l56iaDLv9UlajqlNa73G3cSP6R2PIOufZcn9btCD9Qfbk
	z2D5ilpFqOpFiypdPvOC5GD0i7p+RWmwjAdU8gSxuJ73gq04Nt+GNdbZJQ9PprrdKTquGP
	in/KLxaD4CnKV93zUT7UtAcNCJa0t/XRTi59v7wkOESChRhS9whT7E5RRUE+sg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1AavKzbP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794169135; a=rsa-sha256;
	cv=none;
	b=CsWqIj/SZakL4MUZLrdMv+NGfuspUYHhE776V0EI2LmX0fzdcStiOASUwQl7u46VE4NrFw
	Lm3A/m1OnrY5AemIuW563Aqy0xsmkPsC9IXth4Y6QFjQfO7htmDatjzeTqIdYDl+IRO1Lg
	hgWsGHCKhqwaJwuoZJNgzKsTamA560xu61cqvK0yI3p1Gb1VYiLIbPk42/WnW02WdOfkXt
	jPQpuux4pec/tq0KPEz7hhHdIq0jXjqLOuczp1hIMoiMWE136vSpaNToWwejD+Gbtzb+GF
	Ie1LhGTCLyfgfhkIRxPPdEUdiVGre1KChnI2sx7gHGfKM4atfgjRitylNNr3Mg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=IVzu+c3mmmcBtziUgmKAZ4c+AD6LQGuf+6OoTWcAgLo=; b=1AavKzbPM4o/l1vRAUuWWoHegQ
	O3c3Fi4QDVvhJyamzJ6s3xUtHZGqq61c8CwfEXWf2jCi1k11uGN81q5nwVb6frWQ2FZecYyIGg/nW
	iExZY5kkecn2zP06gdLdzV7DeiZnT7I5Hd+yAHS1BRxse4DJb1Hm38sIwZ1zySZTo6O/xIzMw4SPQ
	G24tOE851NGlB6LzlDV2ACfmcbu9mHTp6AQu80GH4KdmD66+4haIPFCAAKOShqQiPbQ/xRvgjdSwP
	90LZd6cFrUJ7U5H2sjuHenX5mW/j0CqpN9Ty2OD6Y4JtX4PVzYsaUh+XdgO+2OYzTcWwCJKgRyOf4
	bDomGjPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9Kv-0000000GZ6Y-0LIz;
	Sun, 08 Nov 2026 20:17:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9Kt-0000000GZ6A-0vAL
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 20:17:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ9Kr-0003RI-Gf; Sun, 08 Nov 2026 21:17:53 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] kbuild: don't expect a Kbuild file in dts/src
Date: Sun,  8 Nov 2026 21:17:51 +0100
Message-ID: <20261108201752.1404230-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_121755_261910_7DB2DCF3 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dts/ is synced from upstream as is, so the v7.3 sync dropped
    the empty dts/src/Kbuild added by commit 77addf6205d4 ("kbuild: allow building
    the device trees in dts/ by name") and building a device tre [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B5D50201693
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: yp6x3356s71yx9wz651gneontjem3hyr

dts/ is synced from upstream as is, so the v7.3 sync dropped the empty
dts/src/Kbuild added by commit 77addf6205d4 ("kbuild: allow building
the device trees in dts/ by name") and building a device tree by name
fails since:

  make[2]: *** No rule to make target 'dts/src/Makefile'.  Stop.

Let's have Makefile.build include /dev/null instead. Overlays never
built by name at all, as Makefile.build pulls in Makefile.dtbs without
a dtb-y only for .dtb goals, so set need-dtbslist for them too.

Fixes: 77addf6205d4 ("kbuild: allow building the device trees in dts/ by name")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index c3de0956eb7c..8f3f7bc17c25 100644
--- a/Makefile
+++ b/Makefile
@@ -1444,11 +1444,13 @@ ifneq ($(dtstree),)
 
 # Build an upstream device tree by name, e.g.
 #   make dts/src/arm/st/stm32mp157c-dk2.dtb
+# dts/ is synced from upstream as is, so there's no Kbuild file to include
 dts/src/%.dtb: dtbs_prepare
-	$(Q)$(MAKE) $(build)=dts/src $@
+	$(Q)$(MAKE) $(build)=dts/src kbuild-file=/dev/null $@
 
+# without a dtb-y, Makefile.build includes Makefile.dtbs only for .dtb goals
 dts/src/%.dtbo: dtbs_prepare
-	$(Q)$(MAKE) $(build)=dts/src $@
+	$(Q)$(MAKE) $(build)=dts/src kbuild-file=/dev/null need-dtbslist=y $@
 
 PHONY += dtbs dtbs_prepare dtbs_install
 dtbs: dtbs_prepare
-- 
2.47.3



