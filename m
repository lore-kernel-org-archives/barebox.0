Delivery-date: Mon, 16 Feb 2026 09:39:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vru8x-002Fz4-0c
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:39:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vru8x-0000SN-GC
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:39:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uwBpDpKKaczUz6quFkhVnjcBZd61uw1E7ur+OhkrH4A=; b=3h6myNTETcWwENiCIx9Edn70yM
	uv0jEKa4RLohOljhEj7xo52sLrYrQkec5LCU5yAjxx9glxdfvGMDUQT5r5TdU1vJkK7PL7Dijvv80
	vDYFwfJJZf/BWz4aPGDanmoCfPio5yQ1Qmwo+vH6CWkJboD+2EDGUJO71klyjs3A2bwJIFqYrqq9r
	qqQmDe8K7ouPApP2crXqFgNUXR1a17w0WCcKZqhqCWSotYtlEAmuKFbJ0cFZ6bfqKSHJvTWBVztM4
	5JWHXtjLuc1CvdUu7Me/s0qjNm+968o4tt0U5+xIA1FQwOnzTMmTeyEBFPmJh9Bri6iudFCkHCRJK
	plvq7QCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vru8V-00000006AEK-0xeH;
	Mon, 16 Feb 2026 08:39:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vru8T-00000006ADe-1mHl
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:39:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vru8J-0000KC-UQ; Mon, 16 Feb 2026 09:39:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vru8I-0012Ax-1I;
	Mon, 16 Feb 2026 09:39:07 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vru8J-0000000Err4-2lMs;
	Mon, 16 Feb 2026 09:39:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:39:02 +0100
Message-ID: <20260216083907.3543595-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216083907.3543595-1-a.fatoum@pengutronix.de>
References: <20260216083907.3543595-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_003917_465951_A3BFFA9C 
X-CRM114-Status: UNSURE (   7.52  )
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
Subject: [PATCH 2/2] test: report used Labgrid environment and build dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have custom logic for populating LG_ENV and LG_BUILDDIR if they
are not set. Let's print out this information at start to help avoid
surprises.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/conftest.py b/conftest.py
index 40c93d2f0473..8c76f8ddf3cf 100644
--- a/conftest.py
+++ b/conftest.py
@@ -76,6 +76,9 @@ def guess_lg_env():
     return None
 
 
+lg_env = lg_builddir = None
+
+
 def pytest_configure(config):
     if 'LG_BUILDDIR' not in os.environ:
         if 'KBUILD_OUTPUT' in os.environ:
@@ -88,6 +91,10 @@ def pytest_configure(config):
     if os.environ['LG_BUILDDIR'] is not None:
         os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
 
+    global lg_env
+    global lg_builddir
+
+    lg_builddir = os.environ['LG_BUILDDIR']
     lg_env = config.option.lg_env
     if lg_env is None:
         lg_env = os.environ.get('LG_ENV')
@@ -96,6 +103,15 @@ def pytest_configure(config):
             os.environ['LG_ENV'] = lg_env
 
 
+def pytest_report_header(config):
+    report = []
+    if lg_builddir is not None:
+        report += [f"Build diectory: {lg_builddir}"]
+    if lg_env is not None:
+        report += [f"Labgrid Environment: {lg_env}"]
+    return "\n".join(report)
+
+
 def pytest_addoption(parser):
     def assignment(arg):
         return arg.split('=', 1)
-- 
2.47.3



