Delivery-date: Tue, 27 May 2025 22:13:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gR-000xIf-1T
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:13:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gQ-0002FC-UJ
	for lore@pengutronix.de; Tue, 27 May 2025 22:13:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TJDzZq6IIngwcVEC/0aQ4WF0jwOJAJ1d0G+zLtHzEiQ=; b=lKvEdBYdUCraZfhnIZSj3lal0t
	BTG5PPO7tw5RrDiPfwPBH5IOuSXHX3wiFqaSikTQzW1pTBvCaO3jDYOx4QrCxj7DRlQJS/5G4ElgV
	dU1lY6tOeRcGh/D5Y6bJVqRrBvdoOnX5EEkVY2BQUAYryDmqY4nMMZj21P5GjSsbVahGh9OCMSPnK
	M9pyFNEkKuWI+VwLjI3NSAl/MTq3oQU6r1kz6cA0PXSxyjeV/YVgwUEF5K1ac4sF9QrwQpQu8YaHA
	rTRtrZPA1dc9JqTmcLHLmPw6hHGrDUjDQApgkQAxBK6ad8avr9LFtUVr8E8uigfzm2MCa5JB3f1qa
	0PWuECcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0fn-0000000BUJP-3cIQ;
	Tue, 27 May 2025 20:13:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0fk-0000000BUJ5-3d3z
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:13:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0fj-0001uh-9W; Tue, 27 May 2025 22:13:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0fj-000TVC-0L;
	Tue, 27 May 2025 22:13:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0fj-003jIc-03;
	Tue, 27 May 2025 22:13:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:14 +0200
Message-Id: <20250527201314.889055-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131316_902047_C38A6BA8 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ci: pytest: don't attempt uploading test logs if build fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the build failed, no tests can be run and no artifacts from the
test tun will be created. We still want to upload any test logs we have
if the tests themselves failed, therefore replace always() with an
explicit check for the build step to have succeeded.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 315868779bee..d4043de961b2 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -64,6 +64,7 @@ jobs:
       uses: actions/checkout@v4
 
     - name: Build
+      id: build
       run: |
         export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
         export ARCH=${{matrix.arch}}
@@ -94,14 +95,14 @@ jobs:
 
     - name: Publish Test Results
       uses: EnricoMi/publish-unit-test-result-action@v2
-      if: always()
+      if: steps.build.outcome == 'success'
       with:
         check_name: "Test Results (${{matrix.defconfig}})"
         files: ./*.tests.xml
 
     - name: Publish Labgrid Log Results
       uses: actions/upload-artifact@v4
-      if: always()
+      if: steps.build.outcome == 'success'
       with:
         name: console-log-${{matrix.defconfig}}
         path: log/
-- 
2.39.5



