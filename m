Delivery-date: Tue, 30 Sep 2025 11:36:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3WmG-002jSF-31
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 11:36:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3WmG-00060X-DT
	for lore@pengutronix.de; Tue, 30 Sep 2025 11:36:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GGy7shkyvEc0V8Q9JFo9l2W2r+6azFLwM80z16yTBwE=; b=x1/tKQbM9si6ngLFpD/KYcbxmx
	q18qWocLJNghvaWgVUN1lJ/YrtJywQ+aC7sB8jfx6FfBFZEJFk3+qVgD06HAzikab0DhNKCqgaRgU
	aBEgVaWrEwbFnvZNVfQm4148wLCNUn8vf5U+KEVqV/6IU4DjPvKjXE8rv/+Jcck6J3PHLXe/AjaUY
	EuO2Cy7Y+ZbDyqzdcPT98PJwibCvR+8crMLrO4uMnbNE51UZeT8uXgLovny/c2emcmB/4GBcYj4wo
	PAiZBdjavwWsfK5JEK3vlJ+ZB/jHD1JouW2a0hUwjc/NnUOQ8/goFJjGdAmACYi8tdNcNZJFGgocJ
	BnFRQk3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Wlm-00000004pY4-1OVC;
	Tue, 30 Sep 2025 09:35:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Wlj-00000004pXP-2EQK
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 09:35:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3Wlh-0005n4-Td; Tue, 30 Sep 2025 11:35:33 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3Wlh-001DxT-2L;
	Tue, 30 Sep 2025 11:35:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3Wlh-00000009ltL-2esn;
	Tue, 30 Sep 2025 11:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Sep 2025 11:35:27 +0200
Message-ID: <20250930093532.2329023-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_023535_572466_8977F9F6 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Makefile: fix spurious find No such file or directory warnings

When building with:

  $ ./MAKEALL -O build-arm -a arm imx_v8_defconfig

we run into a couple of messages:

  Building arm64 imx_v8_defconfig
  Configure: OK
  find: ‘common’: No such file or directory
  find: ‘drivers’: No such file or directory
  find: ‘commands’: No such file or directory
  find: ‘lib’: No such file or directory
  [snip]

This is because the working directory during the run of MAKEALL is the
build directory, which at such an early time may not have these
directories yet.

Fix this by explicitly referencing the build directory while suppressing
the error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 760ac28e8ff8..5d39261d7b74 100644
--- a/Makefile
+++ b/Makefile
@@ -1085,7 +1085,7 @@ $(sort $(BAREBOX_OBJS)) $(BAREBOX_LDS) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
 
 PHONY += $(barebox-dirs)
 $(barebox-dirs): prepare scripts
-	@find $@ -name policy-list | xargs rm -f
+	@find $(objtree)/$@ -name policy-list -exec rm -f {} \; 2>/dev/null || true
 	$(Q)$(MAKE) $(build)=$@
 
 # Store (new) KERNELRELASE string in include/config/kernel.release
-- 
2.47.3



