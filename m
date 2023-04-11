Delivery-date: Tue, 11 Apr 2023 09:16:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FN-00HI8N-N5
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:16:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FD-0001i6-70
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:16:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U3XgtBKw/f1Jf7FYhmoPuJIoylUDS9/MRaiBZeWx520=; b=hKS8g4IU4MnfO3g/AttUQpF960
	RtS3WUw/djBtVCKOHGFLc16EekMDZVLLD848gwxVaULry6GH1ymsZIr9o/cedGGEVRWfpv3P9mQz4
	hIPkXhMYCbN72GeVa7Zv+wsgWXyvZUOPGOEB8XCKRoxP6w3EWkVGhlGKryNc0M42cPs+iG9iAHdEb
	d4T8Wmb0bTxqbXTQeklI+E5lh6YUROv8jJW9EVwQKLaK9cby0EH5S/vroA+gHjZy5aYyEF7tDOnf0
	AkCVr7i1r4AMNcpH7tBMscxoBADYBY4i34g0b04UdCrKzDi6vtWASktbvBUzifQ4x4E7rD77/75LX
	y+74xZGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DN-00Gg2G-0D;
	Tue, 11 Apr 2023 07:14:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DH-00GfxK-0d
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-0000rW-H5; Tue, 11 Apr 2023 09:14:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DD-00ARvP-PV; Tue, 11 Apr 2023 09:14:43 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNg-Of; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:28 +0200
Message-Id: <20230411071436.1630752-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001447_250299_C27CB382 
X-CRM114-Status: GOOD (  10.52  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 06/14] test: emulate.pl: fix firmware use with non-tuxmake out-of-tree build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The YAMLs may contain URLs for firmware that needs to be fetched before
starting Qemu. This firmware needs to be installed where Qemu will find
it, which is _not_ the source directory for out-of-tree builds. This
adjust the path.

Fixes: 7271ce78d0fc ("test: add emulate.pl, a runner for barebox on emulated targets")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/emulate.pl | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/test/emulate.pl b/test/emulate.pl
index b5e2188b86dd..a4ca6b7aee6e 100755
--- a/test/emulate.pl
+++ b/test/emulate.pl
@@ -18,6 +18,17 @@ my @QEMU_INTERACTIVE_OPTS = qw(-serial mon:stdio -trace file=/dev/null);
 
 my %targets;
 
+my $LG_BUILDDIR;
+
+if (exists $ENV{KBUILD_OUTPUT}) {
+    $LG_BUILDDIR = $ENV{KBUILD_OUTPUT};
+} elsif (-d 'build') {
+    $LG_BUILDDIR = 'build';
+} else {
+    $LG_BUILDDIR = getcwd();
+}
+
+
 for my $arch (glob dirname(__FILE__) . "/*/") {
     for my $cfg (glob "$arch/*.yaml") {
 	my $linkdest = readlink $cfg // '';
@@ -152,7 +163,7 @@ sub process {
 		    or die "Failed to download resource `$v': $?\n";
 	    }
 
-	    symlink_force("$dir/$k", "$k") unless $tuxmake;
+	    symlink_force("$dir/$k", "$LG_BUILDDIR/$k") unless $tuxmake;
 	}
 
 	if ($shell) {
@@ -388,20 +399,11 @@ sub rel2abs {
 
 sub abs_configpath {
     my ($path, $args) = @_;
-    my $LG_BUILDDIR;
 
     return unless defined $path;
     $path = $args->{target}{images}{$path};
     return unless defined $path;
 
-    if (exists $ENV{KBUILD_OUTPUT}) {
-	$LG_BUILDDIR = $ENV{KBUILD_OUTPUT};
-    } elsif (-d 'build') {
-	$LG_BUILDDIR = 'build';
-    } else {
-	$LG_BUILDDIR = getcwd();
-    }
-
     $path =~ s/\$LG_BUILDDIR\b/$LG_BUILDDIR/g;
 
     return rel2abs($path, $args->{builddir})
-- 
2.39.2



