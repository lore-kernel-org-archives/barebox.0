Delivery-date: Mon, 09 Feb 2026 13:38:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpQXQ-00AYPK-2H
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 13:38:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpQXP-0000My-Mb
	for lore@pengutronix.de; Mon, 09 Feb 2026 13:38:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=akZEhYLz8Kuqg7e0QVAkMKJJQO8ck9zJvkNmlXNedhY=; b=xjWM9IbEC7olNZHOvquwtgSMVa
	pwXNAT+kr46Rfhfh6ZpAAQ+/Xc+ohKTTNhYVVr0t+pDcES2FH7yF3rLKzgukQTBka+F6gDfJ16Pyj
	7T0x2R1zttXMyEysmURv6w11lZ2eBkoXFsLJUqYwKnvOtCqA11A+XKRhMiuFDvZpP9/YUoGZbweFB
	p6+/VGdeOBcFNZZx41m44XU1x7O6ozI3zFOrhqzp1ooiGMSEugggCQmHF5I12G8xSkU+g8EKKpkdB
	IEJRU2ydKkOHarcnFesdUU9/+hdC+wZ6oogg4EV9T5xGAojf4ms5cWOw0wHgPvUmTi/Tg7wKlP1em
	sLUIxyyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQX3-0000000FMyK-1vVh;
	Mon, 09 Feb 2026 12:38:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQWz-0000000FMxg-3bYC
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 12:38:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpQWw-0000Jg-NL; Mon, 09 Feb 2026 13:38:18 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpQWx-004tNK-0f;
	Mon, 09 Feb 2026 13:38:18 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpQWw-0000000CX1z-1qfA;
	Mon, 09 Feb 2026 13:38:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 13:38:16 +0100
Message-ID: <20260209123817.2986892-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_043821_906592_6E4F51DE 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: py: strategy: disable EFI when booting barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing FIT tests should boot barebox normally without EFI,
even if given an EFI stubbed barebox.

Adapt boot_barebox to enforce this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_fit.py | 17 +++++++++++++----
 test/strategy.py    |  1 +
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 0f8fffee3361..8bcee6a75f23 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -73,10 +73,19 @@ def test_fit_dryrun(barebox, strategy, fitimage):
     barebox.run_check("global dryrun_attempts=5")
     barebox.run_check('[ "$global.dryrun_attempts" = 5 ]')
 
-    for i in range(5):
-        stdout, _, _ = barebox.run(f"bootm -d -v {fitimage}")
-        errors = filter_errors(stdout)
-        assert errors == [], errors
+    [efi] = barebox.run_check("echo ${global.bootm.efi}")
+
+    try:
+        if efi:
+            barebox.run_check("global.bootm.efi=disabled")
+
+        for i in range(5):
+            stdout, _, _ = barebox.run(f"bootm -d -v {fitimage}")
+            errors = filter_errors(stdout)
+            assert errors == [], errors
+    finally:
+        if efi:
+            barebox.run_check(f"global.bootm.efi={efi}")
 
     # If we actually did boot, this variable would be undefined
     barebox.run_check('[ "$global.dryrun_attempts" = 5 ]')
diff --git a/test/strategy.py b/test/strategy.py
index c04d38c180a7..35cda3aca498 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -99,6 +99,7 @@ class BareboxTestStrategy(Strategy):
         self.transition(Status.barebox)
 
         try:
+            self.barebox.run("global.bootm.efi=disabled # if it exists")
             if bootm:
                 self.barebox_bootm(boottarget)
             else:
-- 
2.47.3



