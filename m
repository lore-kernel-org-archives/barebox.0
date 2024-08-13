Delivery-date: Tue, 13 Aug 2024 09:02:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYP-009790-1c
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 09:02:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYO-0004Qz-Ly
	for lore@pengutronix.de; Tue, 13 Aug 2024 09:02:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aM2WU7laiQ49w6ounvnZ1CIzaNr0WRpgQgcbTctZCfs=; b=PNETkjEa3EiQZJAXaARkN1PDSa
	kjclsaMgeWYmQ4Z4ilP32tP9PzQzfUXqkpLmlnXdxHpBpzNWf6duGpuNOWiRxv9LWAjBEtnA9KUDu
	SO+iQpAHVRl53smRHo7Zmusz0Pe/BnUypUrZwQK0IOW1ooIx3CvMY2NJVMSOtwWST+w21ebqrNQh9
	y+LgJvx+IHJwLZY5WajdyB3O8sDyvixco/MCxQ2W8iGPiP7YMxcEo0D4QOI+vWoIC3MkKed34j0pQ
	Yvs2r85MG/UGfkExEyYqKGlELM6LOxckRap9Ymgbgvx81I9lMLvBRaN1kZrTdKdquX4Hj27133loA
	YG/hIAiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXu-00000002dcP-3ZTK;
	Tue, 13 Aug 2024 07:02:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXg-00000002dYN-0CJ8
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 07:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-000484-MO; Tue, 13 Aug 2024 09:02:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-0004Ea-8p; Tue, 13 Aug 2024 09:02:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-004UK1-0a;
	Tue, 13 Aug 2024 09:02:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Aug 2024 09:01:58 +0200
Message-Id: <20240813070201.1069847-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
References: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_000204_613469_5D6D3BB7 
X-CRM114-Status: GOOD (  11.42  )
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
Subject: [PATCH 4/7] test: sandbox: support testing with Labgrid
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
v1 -> v2:
  - no change
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



