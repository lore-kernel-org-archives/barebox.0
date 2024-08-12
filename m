Delivery-date: Mon, 12 Aug 2024 11:16:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9y-008oVD-2D
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 11:16:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9x-0003C9-W0
	for lore@pengutronix.de; Mon, 12 Aug 2024 11:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=smlkBt4+cfPZ73m6F0hYQCZUnAKsy7U3DN9UxlGYuk4=; b=i/66JWqfZdZfEIlQ2910aGNQr2
	cTycXRqXMwf8ZXWoRM3SSvZku1BjB9yQJ+W/y70QbZAv68YdlrZL0YwxaL7pyM88GBkakiW8UkGN1
	9S3FYZU6t0fXJ97QCO5gWbZ9Jf1tsV0g9DaymSpWovRyE2ocnLNYDtUob67r5Ey8btRM2T2jc54nZ
	3CyAPvDwnVHHW8DCaRAHhO323Mqcz2SMfwO7ntnkUXzCccoRX7Wo85io0yOajBdOhjtPK1l1weMG5
	jSF8j+6GqITD4I9yG4BM3H6g0xCcQZ7eiBYCSMvScJXoekzCB1kNY2PtIexOHSJ/K6vvDhUPpyq5U
	OPfupj4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9M-0000000HPfB-0xOx;
	Mon, 12 Aug 2024 09:15:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9F-0000000HPb3-3M9n
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 09:15:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9E-0002si-E0; Mon, 12 Aug 2024 11:15:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-006KDI-Vh; Mon, 12 Aug 2024 11:15:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-00Cjq9-2s;
	Mon, 12 Aug 2024 11:15:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Aug 2024 11:15:20 +0200
Message-Id: <20240812091522.3035469-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_021529_906793_105D31A6 
X-CRM114-Status: GOOD (  11.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] test: sandbox: support testing with Labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bastian Krause <bst@pengutronix.de>

It turns out there is already support in Labgrid to execute an
interactive console application and run tests against it.

Switch our test/sandbox/sandbox_defconfig.yaml to use this, so we can
eventually test sandbox in CI as well.

For proper operation, we require that labgrid doesn't buffer output
of the barebox sandbox process, which was recently fixed in [1].

[1]: https://github.com/labgrid-project/labgrid/pull/1440

Signed-off-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/emulate.pl                     |  6 +++---
 test/sandbox/sandbox_defconfig.yaml | 17 ++++++++++-------
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/test/emulate.pl b/test/emulate.pl
index 086fae0f7708..df21d5c727bf 100755
--- a/test/emulate.pl
+++ b/test/emulate.pl
@@ -340,12 +340,12 @@ sub emulate {
 
 	    vsystem($temu{temu_bin}, "tinyemu.cfg", @OPTS) == 0
 		or die "Error running emulator: $?\n";
-    } elsif (defined $target{drivers}{NativeExecutableDriver}) {
-	    my %exec = %{$target{drivers}{NativeExecutableDriver}};
+    } elsif (defined $target{drivers}{ExternalConsoleDriver}) {
+	    my %exec = %{$target{drivers}{ExternalConsoleDriver}};
 
 	    pushd($args{builddir}) if $tuxmake;
 
-	    vsystem($exec{command}, @OPTS) == 0 or die "Error running emulator: $?\n";
+	    vsystem($exec{cmd}, @OPTS) == 0 or die "Error running emulator: $?\n";
     }
 
     popd() if $tuxmake;
diff --git a/test/sandbox/sandbox_defconfig.yaml b/test/sandbox/sandbox_defconfig.yaml
index 784f49146605..eb9ab7f17a55 100644
--- a/test/sandbox/sandbox_defconfig.yaml
+++ b/test/sandbox/sandbox_defconfig.yaml
@@ -1,12 +1,15 @@
 targets:
   main:
     drivers:
-      NativeExecutableDriver: # not yet supported by labgrid, only for interactive use
-        command: ./barebox
-        image: barebox
+      ExternalConsoleDriver:
+        cmd: !template "$LG_BUILDDIR/barebox"
+      ExternalPowerDriver:
+        cmd_on: 'true'
+        cmd_off: 'true'
+      BareboxDriver:
+        prompt: "barebox@[^:]+:[^ ]+ "
+      BareboxTestStrategy: {}
     runner:
       tuxmake_arch: um
-images:
-  barebox: !template "$LG_BUILDDIR/barebox"
-tools:
-  qemu: /usr/local/bin/temu
+imports:
+  -  ../strategy.py
-- 
2.39.2



