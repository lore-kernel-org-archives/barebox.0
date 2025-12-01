Delivery-date: Mon, 01 Dec 2025 15:48:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ5CA-006qcV-0t
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 15:48:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ5C9-0002lV-O0
	for lore@pengutronix.de; Mon, 01 Dec 2025 15:48:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GjVdqiDGi7GEk46qyuzaoKU6CTPvQUYh6A96bou2sfY=; b=adRt200/Dmj79iZUgptmbEwn1/
	r0CEMlhXF9naq7TzJ4GoGr+Nn4B2r7Ks1JcSQyzvn1xxqVKeY2G4TYbNA5J6oFUhf/Tk1CXsbLDIU
	pAS0R8V+9j0KHG6uimRZVADIjq7wHNRW+W6tJ1+XrRtqpHcrffgNoy3Ky7L32Nc+NwWBTSwWb0dDV
	u353mVkQ87KvW9kx4uQDEr0M8GpF1CQd2t76cPxZ21iHdJC0zUYj0wWZhuKFRm/Z7nn3D3AJXqjeV
	hgYtIiqzsPndX6PGD0EdOm9qj3+nv44M/lfLYOCn5UndrEIIKLx/9yArMj5sZclmmvX+fDeUX3Vge
	39r8dfKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ5Bc-000000046MZ-2GDH;
	Mon, 01 Dec 2025 14:47:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ5Ba-000000046MB-32Kg
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 14:47:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQ5BZ-0002gs-6E; Mon, 01 Dec 2025 15:47:29 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 01 Dec 2025 15:47:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-coverity-schedule-v1-1-fc79a839e6df@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHqqLWkC/x3MTQqAIBBA4avIrBMc6f8q0SJ0qoHI0JIivHvS8
 i2+90IgzxSgFy94ihzY7TmwEGDWaV9Iss0NWukKtUJpXMzifGQwK9lrI9nUWGKrm84oguwOTzP
 f/3MYU/oAib8YD2MAAAA=
X-Change-ID: 20251201-coverity-schedule-761418279c0e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1104; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=cIYp1+Dp6NCfkxfaHO7KOUUNqaQLBQdaI49HxFhqNSU=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUXVXrbGbMlcn0Yo12WfBDN7E2g6uMxxd+bs4oeTQx4
 mZw0tLAjlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwETenWT4H+3uruFwJ1dAWtZl
 YiP73eV3V/wK+n34jlhXpYYV+6cjjYwMzakSydOTowOtz3x3OvSS9WPobZ2GjNXvvmQ3L1Ip1BZ
 jAAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_064730_770977_92D10EB2 
X-CRM114-Status: UNSURE (   8.88  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ci: coverity: Run monthly, on branch next
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Coverity should have been set up to run on the next branch in the first
place, to catch mistakes before they reach master.

Always run it on branch next, and set a timer to run it in the night to
the first of every month.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .github/workflows/coverity.yml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.github/workflows/coverity.yml b/.github/workflows/coverity.yml
index 0ab7f9b8a0..f2b05d4c96 100644
--- a/.github/workflows/coverity.yml
+++ b/.github/workflows/coverity.yml
@@ -7,6 +7,8 @@ name: Coverity
 
 on:
   workflow_dispatch:
+  schedule:
+    - cron: "0 0 1 * *"
 
 permissions:
   contents: read
@@ -26,5 +28,7 @@ jobs:
     steps:
       - name: Repository checkout
         uses: actions/checkout@v4
+        with:
+          ref: next
       - name: Build & upload the results
         run: .github/workflows/coverity.sh

---
base-commit: ec00fef65d808f8bc9c5655262b0e4f8ce2c4e92
change-id: 20251201-coverity-schedule-761418279c0e

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



