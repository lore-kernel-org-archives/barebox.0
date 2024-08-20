Delivery-date: Tue, 20 Aug 2024 14:41:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgOBG-00BaFE-37
	for lore@lore.pengutronix.de;
	Tue, 20 Aug 2024 14:41:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgOBG-0005kT-DD
	for lore@pengutronix.de; Tue, 20 Aug 2024 14:41:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jCYi6d1CtmGsXVMxmpgr9rdVRWg8d/uC7BqdxY40b2c=; b=0LAHg8L8j2qJXLkg+hEeuwyN50
	1fxZ7ozfzwuEdriItzHXDJWycJthecRNkJi1yZF8b+3fJdKQP7c5kyL9We6aYrHAN/42swmXU3kJm
	J+Vuabrne6tr3co4XurEL3whoSf/oen/KWAYSKCN2KHGr3TrONWUTLZz0XZ+2kc3Zr/5NR7HLSD62
	LRHh1PYmJMP/fN1OZG1v7YLYPr6IidLHvXw5cXXDgfyjokLmrZXWeZ5E7af4KYlDo+OYm+23S9Qp4
	E2wvVfP6tdJ/YbeffO6ada82wIt/JJp+zid/k/4Gbcr3wfqLUWvhusyPbQISvp/ZLY4jz1K/aZzBR
	IOX68pVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgOAl-00000005Ezl-3twm;
	Tue, 20 Aug 2024 12:41:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgOAA-00000005Eun-2RyQ
	for barebox@lists.infradead.org;
	Tue, 20 Aug 2024 12:40:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sgOA7-0005cv-M9
	for barebox@lists.infradead.org; Tue, 20 Aug 2024 14:40:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sgOA7-001m5W-9A
	for barebox@lists.infradead.org; Tue, 20 Aug 2024 14:40:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sgOA7-00C2pA-0c
	for barebox@lists.infradead.org;
	Tue, 20 Aug 2024 14:40:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 20 Aug 2024 14:40:34 +0200
Message-Id: <20240820124034.2870742-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_054038_647060_80169828 
X-CRM114-Status: GOOD (  12.43  )
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
Subject: [PATCH v3] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Build test on 32-bit failed because of forcing the bigger alignment on
the flexible array.

Removing the alignment in turn broke the CI tests for 64-bit, so
let's go back to using a packed struct, but have the alignment follow
the size of the pointer.

Fixes: 4fa3b9d2b64b ("acpi: fix compilation for 32-bit")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v2 -> v3:
  - make commit apply on top of v1, which has already been applied.
v1 -> v2:
  - fix CI x86_64 breakage, by keeping the packed/aligned specifiction
    as is, but changing it to 32-bit on 32-bit systems.
---
 include/acpi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/acpi.h b/include/acpi.h
index 837476424664..fc0da30610a6 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -113,9 +113,9 @@ struct __packed acpi_sdt { /* system description table header */
 	u32		creator_revision;
 };
 
-struct acpi_rsdt { /* system description table header */
+struct __packed acpi_rsdt { /* system description table header */
 	struct acpi_sdt	sdt;
-	struct acpi_sdt	*entries[];
+	struct acpi_sdt	*__aligned(sizeof(void *)) entries[];
 };
 
 struct acpi_driver {
-- 
2.39.2



