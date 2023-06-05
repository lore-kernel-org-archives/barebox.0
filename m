Delivery-date: Mon, 05 Jun 2023 08:37:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qc-00BSIz-85
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qZ-0004GK-SG
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=504cthl8OL8N/3ApVyRxY0TIov6EsgvirhoSjkTHTs8=; b=q8G+6Ij+3ca1lbGC1iEDP1EHCL
	H1PIWFAGCubKGtM4VRwIbs2N4gMwPINYafaVEaVmjHpmh0ykxYlH8DYNt6eYDRXW2nt0vtouXxp/N
	1Q3p5sKskfUgCayodoTMlqKOBM/9bzmUmGfNtND7LY9/BE8y42fBP1rPYg9dt1N1HZiD6tBiJa0Ps
	PirlxNbAiRyrg2Qiy/XZbPnTvgmqn26NVG0NDHDlaUw9831ygYeai2oBqFuVg6u2TLkIxYaihbV1x
	orANYcUhhtQ/ceMxiM5TISXkqAZon0AvKJnyH5e29n9Ug8NgMNQRUXbwHMRhchL5KWVCc+qa0TcJt
	ckJspu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pb-00ENKB-0T;
	Mon, 05 Jun 2023 06:36:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pP-00EN8s-0w
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pO-0003X4-1h; Mon, 05 Jun 2023 08:36:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-005Ctp-EW; Mon, 05 Jun 2023 08:36:29 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pQS-GI; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:20 +0200
Message-Id: <20230605063623.1254764-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233631_332525_9888C69C 
X-CRM114-Status: UNSURE (   9.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/14] ci: pytest: upload artifacts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pytest can output junit XML files and labgrid writes a console_main file
with serial output. Let's collect both as artifacts of the build to make
it easier to debug issues.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index ae49decbaeae..6647237284d9 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -60,6 +60,22 @@ jobs:
         export KBUILD_OUTPUT=build-${{matrix.arch}}
 
         for i in ${{matrix.lgenv}}; do
-          echo "Testing $i"
-          labgrid-pytest --lg-env $i test/py --verbosity=1 --lg-log
+          cfg=$(basename $i .yaml)
+          echo "Testing $cfg"
+          labgrid-pytest --lg-env $i test/py --verbosity=1 \
+          --junitxml=$cfg.tests.xml --lg-log=log/$cfg
         done
+
+    - name: Publish Test Results
+      uses: EnricoMi/publish-unit-test-result-action@v2
+      if: always()
+      with:
+        files: ./*.tests.xml
+
+    - name: Publish Labgrid Log Results
+      uses: actions/upload-artifact@v3
+      if: always()
+      with:
+        name: Console Logs
+        path: log/
+        if-no-files-found: error
-- 
2.39.2



