Delivery-date: Thu, 02 Mar 2023 11:41:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNU-006TR9-HM
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNU-0003GF-El
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mFNjKfLDckQLayOAmGkwe9IBsxv6QiKuayQQAINc/zM=; b=P0pC7KnECjEsgzq05iohElQP/P
	YPBj8iPz5as3vtA0YiZ+gepZXszApIGoFh3KDLKwtuXGaB3xr3uh4uhr21LhQx0M4DbpovWFdRnrj
	pM0Wcu4MZZ4Tl2S8NRHRd4eyq95FGMLf/+GAbideIsPOedOmpM9EZI1OiBtKpweMVx2781oocFyyy
	2KXMdl8Yrz3z8jyb/F4+v37dlfF3gFedvGHeo5U04QUb2D7zEAUHzPUKyNOoMnUXrIjVHVL4RRqDM
	LsELU63+0hOMz8IFdPVNkXwrgmpfLj7SD2DU9norr5NTc8ZmB6HGpXnjBtZQAuI2huMoiO3HU3oNP
	1zuk/LhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgMB-001hKf-Rd; Thu, 02 Mar 2023 10:40:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM1-001hHK-Ld
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:40:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W1-9B; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLh-001J5I-Lt; Thu, 02 Mar 2023 11:39:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wYx-GB; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:36 +0100
Message-Id: <20230302103943.939422-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_024005_771056_D2C9D4D2 
X-CRM114-Status: GOOD (  10.93  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] scripts: dtc: disable interrupt_provider warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The kernel disabled interrupt provider warnings with
-Wno-interrupt_provide. Do likewise to avoid generating warnings that
we would have to fix in the imported kernel dts files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 6e0d92cf75..4da5bb4ee7 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -345,11 +345,11 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
 	 -Wno-unit_address_format \
 	 -Wno-avoid_unnecessary_addr_size \
 	 -Wno-alias_paths \
-	 -Wno-alias_paths \
 	 -Wno-graph_child_address \
 	 -Wno-simple_bus_reg \
 	 -Wno-unique_unit_address \
-	 -Wno-pci_device_reg
+	 -Wno-pci_device_reg \
+	 -Wno-interrupt_provider
 
 ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
 DTC_FLAGS += -@
-- 
2.30.2



