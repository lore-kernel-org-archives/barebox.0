Delivery-date: Wed, 17 May 2023 11:05:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD65-0048cM-Tc
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD62-0004qq-H7
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jX5AbXTs54Iv6LKZbz9biKbNyWZaK/KcEOUFJ2dTZkM=; b=fCDJWxte3Ap3OPjuX3V9Vx30X4
	yDC/iWUWxDg/eMOmo4rZm1cqUJYjzxJVeIQOAAorPcfRgzF94EO3DDvvCKnHoraqhRdeld4FId9+P
	jtKBJ3e0mSXHvWxdivNFx+dE5+XYzmL7LGq6iK5JmGf6fSlah5qwVJIDvkCcTWRCrIq3nfJIus/C4
	rmctVlKXsrvm7/NFHyw29AO2a9ZbhkiTDkV2g5hu2DCjml49u4NLmpFny0IyyDgAPN5oYv6Eti/bc
	fS3T/T+0hevyVardAHMXPs5OmCQ1Mg3/Zi1e+9lw7EOTbT1O9UrNm2Tkv/wmT+aOkFK0JbCbWfSzF
	gDbMb1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4f-008yT0-1q;
	Wed, 17 May 2023 09:03:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-008yM6-2I
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-0003wX-6e; Wed, 17 May 2023 11:03:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4R-000o6Q-Bu; Wed, 17 May 2023 11:03:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00GarI-K8; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:13 +0200
Message-Id: <20230517090340.3954615-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020350_753805_EA7A22BE 
X-CRM114-Status: GOOD (  12.50  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/34] ARM: define stack base consistently
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The different arm_mem_* functions have the pattern that they take
the region above it and substract the size of the current region. follow
the pattern for getting the stack base as well. While at it move
arm_mem_stack_top() lower in the file so that we have all functions
following said pattern below each other.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 139ecce06d..8d8c102081 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -86,11 +86,9 @@ static inline const void *arm_mem_scratch_get(void)
 	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
 }
 
-#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K)
-
 static inline unsigned long arm_mem_stack(unsigned long endmem)
 {
-	return arm_mem_stack_top(endmem) - STACK_SIZE;
+	return arm_mem_scratch(endmem) - STACK_SIZE;
 }
 
 static inline unsigned long arm_mem_ttb(unsigned long endmem)
@@ -122,6 +120,11 @@ static inline unsigned long arm_mem_ramoops(unsigned long endmem)
 	return endmem;
 }
 
+static inline unsigned long arm_mem_stack_top(unsigned long endmem)
+{
+	return arm_mem_stack(endmem) + STACK_SIZE;
+}
+
 static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 						  unsigned long endmem,
 						  unsigned long size)
-- 
2.39.2



