Delivery-date: Wed, 04 Feb 2026 21:02:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4x-008rs3-07
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4v-00066b-KN
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2AxUiWdmHL3Q/QmBpg2p6pQ8aApvjIB+Gj9qfvpWwWs=; b=DvuS+EP0No28/ZQwBj/Xr1niAU
	00UPhs2ONsYQDSfV+E2XJWZdy0u8m7SnxkWtgZCrLXnpFMsjgcJBlec8Fe6Y4FbAGfB46hcttKmYJ
	A3MINLPLbm1zFjtHI8L0Cc+IXsZYMcjC/s/BDwGFLqyDdpweEiU2adjWExR7Tg6bDDqozjlnqpgbl
	eo67boCAxpz8lSxRILkoFzIB76h5taFNHoYuFqgSkeCV/tSnuW06/Gn+ZKbIKb4F/tPV7ySSS0HOB
	8+h3NPFjcQ4A11gGgOFDJrJHVYazmZ1Wc+A+NKkD3ICAu7LuarFQ8GIVkhY+lsElTebVrFKlloN8/
	yTL8MULA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4N-000000091Qm-3kcY;
	Wed, 04 Feb 2026 20:01:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4M-000000091Nz-0zh9
	for barebox@bombadil.infradead.org;
	Wed, 04 Feb 2026 20:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2AxUiWdmHL3Q/QmBpg2p6pQ8aApvjIB+Gj9qfvpWwWs=; b=f+NVTt3FzNNW7ZnknpJ/EoKJND
	6q4gAargl2hse5INArdqmjoxSnQ7ADA59FXvRgGycORjTWTmU/zCX03b5iAizoVo4rPYvx43xyjzJ
	mGQjRUnTc3cNszIFskxwLCq0cdzIZoJsCGlaKFgn+f0tkp+XI7JRlwXPYj+/EWpQb4ZfUVp67Rk6U
	s9qRTVEpLIhvN4lnhnz0lFjRqWkuGfrNwHfAq/d83YEubosvv7u7DEc5NWqPSJYAn71szinzcbd2u
	etqIEZ2eMzL6l80Lshu7NbIl0rHvrA4pgqoadfyqqxwCOr1VibSlBY7XwaxIMzlhgtxOQHFOdTemo
	yUmu0bKQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj43-00000001BQH-3pKA
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:35 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj41-0005Eh-6N; Wed, 04 Feb 2026 21:01:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-15-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_200132_351035_3226CDEC 
X-CRM114-Status: UNSURE (   6.63  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/15] handoff-data: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl/handoff-data.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index 399d769f386f30d0fb18a525ccc09cf3f3e8d402..81cb0880ad4a384d633a3983ea99d82df4f47d06 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -1,6 +1,7 @@
 #ifndef __PBL_HANDOFF_DATA_H
 #define __PBL_HANDOFF_DATA_H
 
+#include <linux/bug.h>
 #include <linux/list.h>
 
 struct handoff_data {

-- 
2.47.3



