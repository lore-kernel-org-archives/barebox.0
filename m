Delivery-date: Wed, 26 Aug 2026 14:21:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdX-007Qoa-05
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8FA6D202422
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DjyeHk4i;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=; b=DjyeHk4iLl+G/AkGqMlycEZXEq
	/oTWKOlAqm/jxlCrqynDzFWhWGWPpWrk+3tEaAV9fRvV6W0U4w8LaSO1Jf2voXxxZN+KABAnPtT9+
	1e0+9M3wAQ2e9v/zMGplI9hQaRkE9kE5DARcXSv2/ECuWzGZnfAz2DuJLGmH/sBojJXS1s+PnUVbM
	vnLuYel2Xelw33zDrXdpx1DWk0Tp5I0h3ec+Ac4vY/wK8SvMDW3nz7Yx+c/wv5QS4V34z8gpo5snj
	zNjrQCgk7YGG88QfJuMceuUg0yVqVH0fxj4h7YyW5f+UgrKfVBckXZb50VENvI9cED72LrPa+/z29
	7hsrFNkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCc5-00000002PqB-1kgN;
	Wed, 26 Aug 2026 12:20:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbu-00000002PkW-3WED
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 55A9D20227E;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-003RBL-0k;
	Wed, 26 Aug 2026 14:19:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-0000000CK1K-0XH7;
	Wed, 26 Aug 2026 14:19:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 8/9] test: py: efiloader: check global.efi.bootargs reaches the kernel
Date: Wed, 26 Aug 2026 14:17:12 +0200
Message-ID: <20260826121956.2936414-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052007_768687_7E740B48 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Set a global.efi.bootargs.* variable before booting the Debian
    kernel and verify that it shows up in /proc/cmdline ahead of the Linux bootargs
    when booting via the EFI stub and that it is absent when [...] 
 
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
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: j5us9ybaiptwj7c1ad76pb41z4g971fy
X-Rspamd-Queue-Id: 8FA6D202422

Set a global.efi.bootargs.* variable before booting the Debian kernel and
verify that it shows up in /proc/cmdline ahead of the Linux bootargs when
booting via the EFI stub and that it is absent when booting the same kernel
without EFI.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_efiloader.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index eae6703e9d49..a39c6804f61a 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -50,6 +50,8 @@ def configure_bootm(strategy, barebox):
     barebox.run_check(f"global.bootm.image={kernel_path}")
     # Speed up subsequent runs a bit
     barebox.run_check("global linux.bootargs.noapparmor=apparmor=0")
+    # EFI load options are only used with the EFI stub
+    barebox.run_check("global efi.bootargs.test=efibootargs=1")
 
 
 @pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
@@ -76,6 +78,8 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
                                    "\n".join(dmesg)) is not None
 
         if efiloader:
+            # global.efi.bootargs.* must precede global.linux.bootargs.*
+            shell.run_check("grep -q 'efibootargs=1.* apparmor=0' /proc/cmdline")
             check_efi_kernel_no_warn(shell)
             check_expected_efi_messages(shell, env)
             check_efi_systab(shell, env)
@@ -87,6 +91,8 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
             # Verify that EFI was NOT used
             assert uefi_not_found, \
                    "EFI stub was used despite global.bootm.efi=disabled"
+            _, _, ret = shell.run("grep -q efibootargs=1 /proc/cmdline")
+            assert ret != 0, "EFI load options passed despite non-EFI boot"
 
 
 def check_efi_kernel_no_warn(shell):
-- 
2.47.3



