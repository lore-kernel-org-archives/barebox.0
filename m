Delivery-date: Wed, 17 May 2023 11:41:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfL-0049uu-Ts
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfJ-0002mK-3k
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UjoMjLeCedREFIjdsSjzMsChFABiIuZGf11NjyryeuQ=; b=DMDGohnEeHmshGjWNRZhiGtX1t
	eojLt4rX2p8aIB1UfMH39Z8t7KW5S2QnPvHu207BP28yYL/wtPmrvc6i+CglK74i38yDUS8xzJOeK
	IyN4oBcnmFo5pDc0bcNPurnNUamcj3p/ONzpfEYpCgqpomCu0U5rgABGWrtVxEB4pkF3k1fp3p7sq
	1cHUHqzWFuxvCo2rOBNr41p0KqwX05x9tif9Y0IKnM3GR//6SGMs05pzzqZ20sPvGFv1ayNUmSqZp
	q9KN0DLHQkza1YFTP45Ot7jqu44irpckMBjZwWY2u68ZavFL8Gg/gEm0BKWoFnlK/G8ytrbpvwNF6
	SsCYspig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeE-0096aT-1j;
	Wed, 17 May 2023 09:40:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe3-0096Lj-24
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UjoMjLeCedREFIjdsSjzMsChFABiIuZGf11NjyryeuQ=; b=V35mLw7nX3dAJtW9KE7XIl9FcQ
	M6VV23i6VmCrCN7zlR87P6BE3v7HBI1+D4iiD7w2C4mhZ6YQZgveO0CRx+X12fdOLKOALKPGWRks6
	mslJI/HOuVHnDLm+UTf/oqeXdIx6cNp/RhpxQfJHGsMRLh6VxXe8sndnmlfurAN1M8RG1koUT1K+Q
	uGxlQAnG/SRMezDKIS/+oBhoV1xuPcP5uxeDIdr2pCQQl0TrEt4rOic63tTqjuC9F2ijhYqHyv8Jo
	KeXGzilrMSnNmc2FewO0Ne+R42K/aMsK7lF5CtGNeXSEBhALmUsHR/jhlgyixm31EYglqAerSfVTx
	N6wd3qLg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-00DAxx-2h
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040m-7x; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7e-Ib; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00GarM-Kp; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:14 +0200
Message-Id: <20230517090340.3954615-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_226507_F7516F2D 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH v2 08/34] ARM: move arm_mem_scratch_get() lower for consistency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The different arm_mem_* functions all follow the same pattern of
taking the base address of the upper region minus the size of the
current region and with the exception of arm_mem_scratch_get() they
are all below each other. arm_mem_scratch_get() doesn't fit into
this row, so move it lower.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 8d8c102081..f5a74b4746 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -81,11 +81,6 @@ static inline unsigned long arm_mem_scratch(unsigned long endmem)
 	return arm_mem_optee(endmem) - SZ_32K;
 }
 
-static inline const void *arm_mem_scratch_get(void)
-{
-	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
-}
-
 static inline unsigned long arm_mem_stack(unsigned long endmem)
 {
 	return arm_mem_scratch(endmem) - STACK_SIZE;
@@ -125,6 +120,11 @@ static inline unsigned long arm_mem_stack_top(unsigned long endmem)
 	return arm_mem_stack(endmem) + STACK_SIZE;
 }
 
+static inline const void *arm_mem_scratch_get(void)
+{
+	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
+}
+
 static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 						  unsigned long endmem,
 						  unsigned long size)
-- 
2.39.2



