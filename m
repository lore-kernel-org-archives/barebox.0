Delivery-date: Fri, 02 Oct 2026 13:27:21 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbQ9-008p2l-29
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:27:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 21C132001F2
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:27:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JeF93naQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="d0SJ7H9/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790940441; a=rsa-sha256;
	cv=pass;
	b=Y1oodAYAktpTsEbDKkLwKp77PJeZhD8gF9wwkzN2M+JP7gk8SFIPTH191rJn+tz6hjaw50
	eDweeHtIsh7PouPhGb0vboTuQ68Mi4vBWZzpGCEzBPPC5lAaNLpnWXOPv7bImMfnwB2J1d
	qcysmpuYCB6epw3XAzSXF/4q8zMnwp4mMw2BmhyFcLXAU0pCCJR2V65Bkd31nov7mFkeS9
	vNYgfUNBQQDYuHP4CrfpHSTAa2LE6NtmwrN7oqMCNH/h4wTuvEbVQ2i3/NwWXb6mmBgO/t
	X8ipI3ni4qhkpq1NaihRr+MixdML2o+O4lpypdxHmsJ0GkLNmmUreZSVHxy8cg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JeF93naQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="d0SJ7H9/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940441;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0Zbl7X9zJSCmEGqCOMxwV9dMvOo08qr8JLTG/N1Gt6E=;
	b=Mmf3mCbA0Dp1xxXt+SzAozkP0cv/SMI+2ly3VNEFlPE0EN4wE9ljsdEtsGWWbutKdKD8dV
	WH7umYLfy/v3N/4V/yEkYT019Fg7xaJB9kYt9d2bpzzgt9b8KfygbOoOAtS83c7hEZRuhn
	LxREP3R6sJNadMVaNxbdthMFyi6ADKuNnBpqTzNbjiasUIGtaf/SHdgPV91G0Y7QpkGLfC
	0NrqDymHyBPEGqEBu63UlamJx+G8A7J6pJ8KN4cY2EtxXkr+CZRVQoCnsI/fsp6kdcJGxA
	QWY/MVlqoYRO8JT646EuxlbsjyVtG5+4I6UA6Q+xQvRq81/odAdrzoqL4l2dAw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Zbl7X9zJSCmEGqCOMxwV9dMvOo08qr8JLTG/N1Gt6E=; b=JeF93naQMc+WXvG5z+6PdZITSf
	F191tuFdG3dcHjm2dKaJ6jIV1xj+q0KLe5Mn2oCdFa76E6+iJYe5vpaVCQmF3J38HJzA+j+bj77ul
	FDJ+jnRHZioxtBjYt+AI9vXQlxoU9jrDCq3cgG6NDS2/MGY/k9VTryzM5jMBwbLvDWv15hlBgrBRw
	aSX225qaSv1gj7gNeliyq0i8WNxOva+RBzDpx4K2Ku+J6uNMvaAITwT5fwZb8roenMRwRlJ422qpj
	b8RaZt0lDUM2ox/8Q3sSvIOtV7AwzqxNjtyRspgK6DIWApAL/upi7YSZZ821mdYPH5aSeG3JPgQQ4
	V88WJXaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPm-0000000BTIs-3cgK;
	Fri, 02 Oct 2026 11:26:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPj-0000000BTH4-1Y7J
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:26:57 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8E321201F18;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Zbl7X9zJSCmEGqCOMxwV9dMvOo08qr8JLTG/N1Gt6E=;
	b=d0SJ7H9/9iQh1Tf9C96qcZaJtlJO/C1WYEAgk4q5fPqK7/VD10/XzlYQd/42dW04pSufxL
	VgLv52Yb1QiKpDNjSw5djy50C1J5LZCf4XhTd2osnQYKO7IWYWBMyD9qgygcyTTvnPhqnh
	hBD3YidSyXAitHw8A16aL8vHu8jaAU2LVwAGwfMKLDtQ8+6OFNbXXGVDrpyVBT7JpSsJFk
	NqzfPDyBpIEbTX0tJziXfaeJNbirGR+68Zl8vmz7Khj+k1imvr++zrz8mOiHzHdEMJ6Qa5
	aLXegXM7iRY0RYhbxV/obdrr5i54kyhshAFRaAH6rXC1DUZCj+Zrt5BZqEusMg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940413; a=rsa-sha256;
	cv=none;
	b=B1OKi0SilkgI+M/wMLXzdl8X2PEirLYQQX5hHyqiOb+a2zz3p887qJi6F0ZzhXc/Rkxmac
	R6P0Nj+TDjNY/h8KtVM8XGgtPYrbpoHP2vWDjh9xxmBI63J1EoHFwmF3MIoi/CpLa6FA4+
	z9XKuoHEul+B2NMxofXE05J0be2LVk8oXvOtIgVglLKvcixLokKz7adj1M9vEMe96TQGuj
	aTmSLh5HwXEcJ0RAYFz26Bc6Ds+/7Bo031wUigVSJuUqJwGELvhWIfjV35Gwvo6qQWG5c3
	81ZVwB/za+G24RYksNYovVoxvRb/Ht7mfCJ202mA7tdSNHnh4T/RLyZ+Csu+uw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Zbl7X9zJSCmEGqCOMxwV9dMvOo08qr8JLTG/N1Gt6E=;
	b=Px8Wh6VKL+/mAsp86mtw88GhPksGq2GKswBw9669pWwmWdi25o3+muCENBCkp37NvhsQie
	xzxBckS2jok5HTKmQimWE3boUdkgBG8VDseQTWZb041JSGP2k/h/z7X3pAm1dmFSuOjitj
	SAS9tUl6qLQmlnIL3uGw17rFerCquXqNAVgVgaDDzpr50qnYHBP5mFywUxUBHH9uHwVQHt
	vXaYVEFRZSgCqAVUPVZOnHsh0ncVo3N7StAzKuE7SKOEOCdoyAjfjCEpA8vyp/zeBogcHt
	kcdtfUkks8OJvzgesHFt3hjixpUyjqlid8HwFAlQs4TZJp2Ilpud0J7DRoPGnA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 6DD3274021F;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 4/4] test: py: add test for fit cmdline parameter order
Date: Fri,  2 Oct 2026 13:26:34 +0200
Message-ID: <20261002112648.2899729-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
References: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_042655_562162_FFD602CC 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The order of the FIT cmdline is important as we want boot
   scripts and boot entry files (blspec, EXTLINUX) to be able to robustly append
    options after it. Extend the test to check that this is the case and while
    at it, also verify that it doesn't survive beyond the bootm call. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 21C132001F2
X-Stat-Signature: qgm8ink5q3fpteftddb9nrmwtih7qq9a

The order of the FIT cmdline is important as we want boot scripts and
boot entry files (blspec, EXTLINUX) to be able to robustly append options
after it.

Extend the test to check that this is the case and while at it, also
verify that it doesn't survive beyond the bootm call.

Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_fit.py | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index b4c01459924e..2e866a28266a 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -87,6 +87,13 @@ def test_fit_dryrun(barebox, strategy, fitimage):
     # If we actually did boot, this variable would be undefined
     barebox.run_check('[ "$global.dryrun_attempts" = 5 ]')
 
+    # Apply fixups and check the FIT's cmdline did not outlive bootm -d
+    stdout = barebox.run_check("of_dump -F -p /chosen")
+    for line in stdout:
+        if line.startswith("bootargs"):
+            assert "fit.param" not in line, \
+                   f"FIT cmdline survived bootm dry run: {line}"
+
 
 def test_fit(barebox, strategy, fitimage):
     # Sanity check, this is only fixed up on first boot
@@ -112,6 +119,7 @@ def test_fit(barebox, strategy, fitimage):
     actual_size = int(fileinfo.split()[1])
 
     boottarget = generate_bootscript(barebox, fitimage)
+    barebox.run_check("global linux.bootargs.dyn.bootentries=entry.param")
 
     with strategy.boot_barebox(boottarget) as barebox:
         assert of_get_property(barebox, "/chosen/barebox-version") == ver, \
@@ -125,6 +133,12 @@ def test_fit(barebox, strategy, fitimage):
         assert "barebox.chainloaded" in bootargs
         assert "fit.param" in bootargs
 
+        # The FIT's cmdline comes first, so everything else can override it
+        assert bootargs.index("fit.param") < bootargs.index("barebox.chainloaded"), \
+               "fit.param found later than bootargs set by scripts"
+        assert bootargs.index("fit.param") < bootargs.index("entry.param"), \
+               "fit.param found later than bootargs set by boot entries"
+
         initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start", ncells=0)
         initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end", ncells=0)
         initrd_size = initrd_end - initrd_start
-- 
2.47.3



