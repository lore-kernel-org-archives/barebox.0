Delivery-date: Wed, 14 Jan 2026 13:03:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzag-001Dno-2O
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:03:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzaf-0008Qq-8u
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jht+rUoKJ7szQChk20hAOrKbmESpOxyJ/HqDLRqwCko=; b=2m7uo76is/nPgxxxdOSvVhj6U5
	psqHbdjPmbrUoGsK+6ldlSyJ/GSoWqXe1vHpaWoEnqo1yOxGn6NdiLbpv3bpyby255nMrqb3prLcV
	Z2IcMg/enjaNKRyf1rZAVnCHV4K1QunGT+rrzOYjygzJXnjlvfrfkqu3b+wQ3YZFXEgIOYgn0cMGy
	J/QWrxYYeHO8qBLCeuIUXB7fD3VLZEk7hZb2yq0eimU/0BHmxBE2yLI5UITA3TNpEFXM3NPFxH/sl
	QcLOHhFURz3FEM2BfUDgPsZvmzBZV+oK8GoFaWAryy9Y/f7sRUj8+ohcgvN8m6EEhy0No0+G7Xs5a
	QXos3XvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfza3-000000094Vd-1IPc;
	Wed, 14 Jan 2026 12:02:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzZx-000000094TO-1NS6
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:02:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZu-00084b-Vh; Wed, 14 Jan 2026 13:02:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-000a7O-1N;
	Wed, 14 Jan 2026 13:02:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-00000003xZ4-1SFl;
	Wed, 14 Jan 2026 13:02:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 13:00:56 +0100
Message-ID: <20260114120221.941836-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260114120221.941836-1-a.fatoum@pengutronix.de>
References: <20260114120221.941836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040225_365535_61A68B71 
X-CRM114-Status: UNSURE (   8.48  )
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
Subject: [PATCH v2 2/5] pbl: compressed-dtb: add missing includes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Add missing includes else compressed-dtb.h depends on the include order.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 - > v2:
  - split off preparatory patch from
    https://lore.barebox.org/barebox/20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de/T/#t
---
 include/compressed-dtb.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/compressed-dtb.h b/include/compressed-dtb.h
index cc5fbb276984..ff7c932f5b01 100644
--- a/include/compressed-dtb.h
+++ b/include/compressed-dtb.h
@@ -2,9 +2,11 @@
 #ifndef COMPRESSED_DTB_H_
 #define COMPRESSED_DTB_H_
 
+#include <linux/align.h>
 #include <linux/types.h>
 #include <linux/sizes.h>
 #include <asm/unaligned.h>
+#include <fdt.h>
 
 struct barebox_boarddata_compressed_dtb {
 #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
-- 
2.47.3



