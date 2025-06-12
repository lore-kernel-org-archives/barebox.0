Delivery-date: Thu, 12 Jun 2025 12:07:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqg-006TXy-13
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqf-00077O-Et
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZLy+eBbUjKdlqkUQcJeLf/AkJifgXYlFEayXIeX9xAE=; b=J/ZIMI1lQp7s8CFTBn3w8sbi8M
	+gwVEzq/QXTHhFfRivDqJLecWsPmvJu0fxxQ++3pldkEd/UikI+xw4R9FdLOLm1BaY+LdqOItz+qR
	c+l9sVn/r9HwLr/ujVw1Tu/dmCZNaEvNHcgCawFs0YTGblJLsgxff0WwNHUUW9NJqqX9Rgg2U0ZR4
	WOzdSetpbc+2JiA2wh1V9VvQxTihS1PYmnvhnfFrMbWEe97HHJbVMK4zzF/XMX3JYvK2vqp5OeDK2
	YryotWzuG07BP8/JCMiEqWfz+DMzEnevF0rK5NiYTA32V/RcSmhgxbpQsNjG633+sXUUACHbRtlch
	Z4fuJ4Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPeqC-0000000Cv3E-3kVX;
	Thu, 12 Jun 2025 10:07:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdjC-0000000Cjse-228m
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:56:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPdjB-0001k5-8B; Thu, 12 Jun 2025 10:56:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 10:56:02 +0200
Message-Id: <20250612085603.4190573-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612085603.4190573-1-a.fatoum@barebox.org>
References: <20250612085603.4190573-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015606_538916_CE842BDD 
X-CRM114-Status: UNSURE (   8.65  )
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
Subject: [PATCH 3/4] ci: pytest: multi_v8_defconfig: pass --runxfail
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently use xfail in test_network.py to skip the network tests if
the networking feature is not enabled. For ARMv8, the CI sets up
networking and the feature is set, so pass it --runxfail, so unintended
xfails don't creep in.

Cc: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 64618582a940..38bd7126bd86 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -26,6 +26,7 @@ jobs:
           - ARCH: arm
             lgenv: test/arm/multi_v8_defconfig.yaml
             defconfig: multi_v8_defconfig
+            lgargs: --runxfail
 
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
@@ -101,8 +102,9 @@ jobs:
         for i in ${{matrix.lgenv}}; do
           grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
 
+          extraargs="${{matrix.lgargs}}"
           if grep -wq 'testfs' "$i"; then
-            extraargs="--fs testfs=${KBUILD_OUTPUT}/testfs"
+            extraargs="${extraargs} --fs testfs=${KBUILD_OUTPUT}/testfs"
           fi
 
           cfg=$(basename $i .yaml)
-- 
2.39.5



