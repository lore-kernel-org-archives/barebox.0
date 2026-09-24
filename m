Delivery-date: Thu, 24 Sep 2026 20:02:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9nlj-005rjw-0r
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 20:02:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F0937202139
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 20:01:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="BMRX/ssO";
	dkim=pass header.d=bootlin.com header.s=dkim header.b=fLft2O+z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790272918;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=gXCjC8YlaOWU2+b6tU6GD3cuU+KnRYf6GV00cgdaPZ0=;
	b=cpF55xKR0SAiqOL2hT/TbJTXR4/PMMqw3LVkHifsHZOOXnjA7vLANO0oO9p1hF7mwsQTZM
	Q252wnfM1NBRmQC+B/zjkM2If6DDr+SOfijvsprVFitF4iuy8L3voRTZ0XgrU1OqE+8T9/
	DqSMGNVfW+wPB8qad6gnG/Q6yFQZBtAdwKqVuBMAO8m/CcnDzIRHDg+owDAJFH4Z6joKo9
	R+CeYT7jt7VHlcsceDRj9c0g7peGzIbB8kD3+CzKgHE26mdG1sfB2cXRErEpQlmpwJiXDn
	gKP9uWlyd80E09AwoivH9nsmOdGfZeVnN2qvpiGMnl9dA2Io7Hl+rr1FHzQ9AA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790272918; a=rsa-sha256;
	cv=none;
	b=enC08pP5oJWEbMQipT4yifER5aSc2n8VXeDN2nCFM+SM8CZTLDoa068oDT9dj+i09ITcgt
	0RQIl39ouGZYU5HwwaORwOx/jlXPHyf188EWsfxm1ucBYqbkSQbFEOFGN05BfXfm+O/3WA
	0o/gjmO/10S1inos2pkUuzCkrIVs/LcFsQRvyixcxnlCv+/v6PeVqgeJOPHS9xHe/RN+OC
	HME5uIafrxfboMTg/yVcJomcKYn3wPy702zXmRFhiZxoOWX+mb/cfLMPnlrsmKbfBz8MUW
	WdTcB9QRCT0iysrrdQR/n0iIgoa/wOALBE+PU7zFYShJ7ihinWxtPPKHmf59NQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="BMRX/ssO";
	dkim=pass header.d=bootlin.com header.s=dkim header.b=fLft2O+z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gXCjC8YlaOWU2+b6tU6GD3cuU+KnRYf6GV00cgdaPZ0=; b=BMRX/ssODquvMM1K9YdcUYXeR6
	R+8pMiBAOvbnwawo+PPPvwDU5xeII9cNMJb6swnBkpYlrlS8nkEk4u7WxDf7DhVLPPw5FyEnHJ/KC
	9cDFOGu+6e+uHx/axXWGgn3osGsEXhFjH/d0u+AkztDrexI+iHLmmRbLq42d1DGXyxCe8KqprZ3Bg
	wzSRGYWDXfHoQY3Js3jeMUy1G56Rmf4B8OwVZymNR0CE94yaD/kQ75OiO5F1USYMMQI9VbwZjxZuQ
	Uq6f/QR1GiTQG7q/lQtxlzLpIFSaNvjLkwxk57ZTHA55zZrZb1uHHKY6/laLAut9Uu6d+HoA6S8nf
	6QBeNYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkL-0000000Br4h-0LTn;
	Thu, 24 Sep 2026 18:00:37 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkI-0000000Br28-0tJf
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 18:00:35 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 087EEC211F4
	for <barebox@lists.infradead.org>; Thu, 24 Sep 2026 18:01:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7C3A160738;
	Thu, 24 Sep 2026 18:00:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F14E41032943C;
	Thu, 24 Sep 2026 20:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790272827; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=gXCjC8YlaOWU2+b6tU6GD3cuU+KnRYf6GV00cgdaPZ0=;
	b=fLft2O+zsf4DUeR7PoDpn5zjkPNZwkfzFGBTLQVFKXvPK5WZmm8qvXfsmYPc/BIDzoETO+
	zZZCRV7+Vg4Ep6l3eI9RdBnPmcSdaiNm6PgrUvFnNq1kjffzIVwNCYDBnwO8G5VUF0OVrm
	El0er1ZL2WbG2W2LW6zBfwM8GzGovYkTBj55IZAFmUTWRnkAvaPUBQZXFe1Qwhvb+zyIpt
	TNgp21Oo+/Jy82ExoynkTWtVdMlEWlK5QTrAnaGVSO7oRtknSGctlHq4tKX7SU1IlecDFY
	V+ELmmZCE80jxwHImXrJ8iKrLPqEWSfqg2M5Kz6t04IpQRqNoaopJVBDoyNyFQ==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Thu, 24 Sep 2026 19:59:32 +0200
Subject: [PATCH v2 2/3] test: py: add test for fit cmdline parameter
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260924-add-cmdline-fitimage-v2-2-4a665e165002@bootlin.com>
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
X-CRM114-CacheID: sfid-20260924_110034_426982_BE9A60D9 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Now that the FIT boot logic supports getting new command line
    arguments from the FIT image, add a test to ensure this doesn't regress.
   Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com> --- test/py/test_fit.py
    | 1 + test/testdata/multi_v7_defconfig-gzipped.its | 1 + test/testdata/multi_v8_defconfig-gzipped.its
    | 1 + 3 f [...] 
 
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F0937202139
X-Stat-Signature: pe6pbhajhikwuce7m5dgp1sfwnofteyk

Now that the FIT boot logic supports getting new command line arguments
from the FIT image, add a test to ensure this doesn't regress.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 test/py/test_fit.py                          | 1 +
 test/testdata/multi_v7_defconfig-gzipped.its | 1 +
 test/testdata/multi_v8_defconfig-gzipped.its | 1 +
 3 files changed, 3 insertions(+)

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 51afbba876..b4c0145992 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -123,6 +123,7 @@ def test_fit(barebox, strategy, fitimage):
         # Check that command line arguments were fixed up
         bootargs = of_get_property(barebox, "/chosen/bootargs")
         assert "barebox.chainloaded" in bootargs
+        assert "fit.param" in bootargs
 
         initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start", ncells=0)
         initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end", ncells=0)
diff --git a/test/testdata/multi_v7_defconfig-gzipped.its b/test/testdata/multi_v7_defconfig-gzipped.its
index 1cb84fd415..0ae0e5b609 100644
--- a/test/testdata/multi_v7_defconfig-gzipped.its
+++ b/test/testdata/multi_v7_defconfig-gzipped.its
@@ -68,6 +68,7 @@
             fdt = "fdt-qemu-virt32.dtb";
             ramdisk = "ramdisk-1", "ramdisk-2", "ramdisk-3";
             compatible = "linux,dummy-virt";
+            cmdline = "fit.param";
             signature-1 {
                 algo = "sha256,rsa2048";
                 sign-images = "kernel", "fdt", "ramdisk";
diff --git a/test/testdata/multi_v8_defconfig-gzipped.its b/test/testdata/multi_v8_defconfig-gzipped.its
index 3786d0f121..2728c545d1 100644
--- a/test/testdata/multi_v8_defconfig-gzipped.its
+++ b/test/testdata/multi_v8_defconfig-gzipped.its
@@ -68,6 +68,7 @@
             fdt = "fdt-qemu-virt64.dtb";
             ramdisk = "ramdisk-1", "ramdisk-2", "ramdisk-3";
             compatible = "linux,dummy-virt";
+            cmdline = "fit.param";
             signature-1 {
                 algo = "sha256,rsa2048";
                 sign-images = "kernel", "fdt", "ramdisk";

-- 
2.55.0



