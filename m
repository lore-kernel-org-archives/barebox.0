Delivery-date: Tue, 19 May 2026 08:22:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDqM-001PCY-1t
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 08:22:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDqM-0004BO-08
	for lore@pengutronix.de; Tue, 19 May 2026 08:22:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wukJUzig492//Tpm7PCibMoPQJKyQFBMrSUEu4mAsQM=; b=vJqoHx7RzPqyrCOgqHwNmLaHkD
	sF9ITtcCSHag0wC1yDZ1WS/BhPVnUinGQ2wup9sO1kdV32I109QIoyl/PsPqaTVmQeYj03Y073AH/
	1+v0NS9OL4tD0rqsLcJczFjXIyCZz9gBo7CISpt5I73YTJzSkX18IYMyfPW6a5jJvQ1Al90hRfmzw
	CZsM9gmyuhFaZHL66P9RLpilCyp7gsvIyuZmhbJZkZYlPxbDDszhR46Y1/KEit0I3RiNCx2EORIBy
	BPrLv2dsRlk0kVOwyIsFJg4ZvX3z+W/9E4IsWTeNvsBP3eeS6TjgLFo5nTtN6mxLck0qoXxQkDOiC
	ua4DTchQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDpG-00000000JGr-3rd4;
	Tue, 19 May 2026 06:21:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDpE-00000000JG2-1g09
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 06:21:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPDpC-0003zo-7Q; Tue, 19 May 2026 08:21:06 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPDpB-000iTd-1y;
	Tue, 19 May 2026 08:21:06 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPDpC-0000000HJ9C-0LfI;
	Tue, 19 May 2026 08:21:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 May 2026 08:21:02 +0200
Message-ID: <20260519062104.4125168-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_232108_439015_B4C26460 
X-CRM114-Status: GOOD (  11.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arch: enable RELR relocation packing support by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RELR support has been disabled at the last minute prior to the
v2026.04.0 release, because that appeared to fix a not yet understood
boot hang on the Rock 3A.

The boot hang appears to have been fixed properly by commit
3ef8ba6540ef ("ARM: fix wrong calculation of barebox base"), so re-enable
RELR again to benefit from the code size savings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 858dd6b28383..9f5673b5da31 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -54,7 +54,7 @@ config ARCH_HAS_RELR
 config RELR
 	bool "Use RELR relocation packing"
 	depends on ARCH_HAS_RELR && TOOLS_SUPPORT_RELR
-	depends on EXPERIMENTAL
+	default y
 	help
 	  Store the dynamic relocations in the RELR relocation packing
 	  format. Requires a compatible linker (LLD supports this feature), as
@@ -64,9 +64,6 @@ config RELR
 	  This can save ~10% of binary size, more if the final barebox image
 	  contains less external firmware blobs.
 
-	  This is marked experimental until the early hang for rock3a when
-	  this is enabled is understood and repaired.
-
 config ARCH_HAS_CTRLC
 	bool
 
-- 
2.47.3



