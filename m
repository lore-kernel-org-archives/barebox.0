Delivery-date: Wed, 06 Aug 2025 14:47:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdYQ-007dlx-2T
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:47:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdYQ-0002NR-79
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:47:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iDUvrBS5G5beZkt4bA+vC1MPY78HzrUDr92pNQpIH1I=; b=Cc/6PWGETgeEZopICN8ixwTiiO
	4NKZXU1dUIecXIZAe9fKElXw5/Ale5YHNIIt3WG0YX622JLWVcBk+pRDjUwSTDfUcfIhqn9+G0V1n
	eCoER1boz9QI2itohA4YAHHX4fQoCQzChKIX8s/1ykS9Nv/TK4CWYi55a/pvFt5dXcWrD5bVuryah
	RSCjJM9MlciKgyvh19LAAKnOG1HRaLM88nxbJ2+1f1QeOeI0OcemZCC9sOUykOzQ8xpxlD1JWYtZo
	DJz5RfLvZc0mRw8Hy97LGC0Rspykahr5BRcPUAXe32UOC8Z1FB7YhObBb+235TZOceQjxmGm6D7Dh
	xXS5ePdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdXz-0000000FCVw-1lzM;
	Wed, 06 Aug 2025 12:47:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdXC-0000000FCNa-3K00
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:46:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujdXB-00029F-6A; Wed, 06 Aug 2025 14:46:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 14:46:20 +0200
Message-Id: <20250806124620.2800123-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_054622_826575_A4543AF4 
X-CRM114-Status: UNSURE (   8.20  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ci: pytest: print labgrid console output inline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Makes it easier to debug issues instead of having to download the
console_main files:

- Print the console_main files inline on error
- Collect all console_main files at the end

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 38bd7126bd86..adec3defc1d7 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -96,6 +96,7 @@ jobs:
         done
 
     - name: labgrid-pytest
+      if: steps.build.outcome == 'success'
       run: |
         export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
 
@@ -113,17 +114,19 @@ jobs:
           --junitxml=$cfg.tests.xml --lg-log=log/$cfg $extraargs
         done
 
+    - name: Print Labgrid Console Output
+      if: always()
+      run: |
+        for i in ${{matrix.lgenv}}; do
+          grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
+
+          cfg=$(basename $i .yaml)
+          cat log/$cfg/* || true
+        done
+
     - name: Publish Test Results
       uses: EnricoMi/publish-unit-test-result-action@v2
       if: steps.build.outcome == 'success'
       with:
         check_name: "Test Results (${{matrix.defconfig}})"
         files: ./*.tests.xml
-
-    - name: Publish Labgrid Log Results
-      uses: actions/upload-artifact@v4
-      if: steps.build.outcome == 'success'
-      with:
-        name: console-log-${{matrix.defconfig}}
-        path: log/
-        if-no-files-found: error
-- 
2.39.5



