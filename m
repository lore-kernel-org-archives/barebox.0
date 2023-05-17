Delivery-date: Wed, 17 May 2023 11:41:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfR-0049vv-Kh
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfM-0002qP-Rx
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Byt9J4o6JoQELUB4Qax/2xxxkeO91DtVWPfOMPSjwzA=; b=CivcFQk5gBObLmKuiy2dQFZHiB
	/3pu594L8mmW9kc41wSFQvTpEu5gy1qVI64vxDFQNQw08eMr5a9FbRh5fPxP4lrj4KdIkUksMkIh+
	z7x7wzKpyuPGgEYkjvPtV+K0T9qdqzIxpTvd78ogaF6ry6uQiGsZD0HW4avwJd36nI30y8x9VFZ7e
	Y03/20E5PUbOpSW+UhZKEP5E/J4UDyaT+cw3Ul6QyCc4L0l2glix61otubTEsLnKHnJk+oihrzNw8
	Y9Wx5qzscQCmkchbnD+20E1JM1Sy8P66hFtnJHIBjpEtJ3NShbRbVpyCtPxvtaxAKjm4RC3Gd2dIM
	OnbA6wlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeN-0096lF-1p;
	Wed, 17 May 2023 09:40:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeD-0096Z7-0u
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Byt9J4o6JoQELUB4Qax/2xxxkeO91DtVWPfOMPSjwzA=; b=VPj/Ojtts9m8Si405oICAQEP8X
	F5DpF7LyfnIRayJ9mD+7WV77TqyP3zp9scB/KoVKt+9DR2G/p4+kEMVz2i5NI79TZfEE6Rb6NlvBl
	2gPfWU70EFoUYs5DWlBmJ5bSG/Y2b1yfL5DLmUfJtGuTKt4s2tVC6nwzni0aRVDEOd97XGOt2azZs
	puj4MJNvWNN3PSSF2x/yqFtYkYq7bJiL9qtXceBSBUA9U+EUKxNI113FvjKC1RtrdoBldwnOEYpck
	eoNXuU5fW7coUw7UylSj10U1nEURCV2YzQARJm5TcmJrA3r7KzdnR2sDkrXGka7DfyXb8q7I77+e2
	9ZkJZNjw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4b-00DAxz-1f
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-000410-AN; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7l-Lr; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00GarA-Ia; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:11 +0200
Message-Id: <20230517090340.3954615-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100353_770715_CCF04D79 
X-CRM114-Status: GOOD (  11.51  )
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
Subject: [PATCH v2 05/34] ARM: add arm_mem_optee()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have several functions/macros named arm_mem_* returning the different
addresses for early memory locations. Add one for OP-Tee as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 5 +++++
 arch/arm/mach-imx/atf.c            | 6 +++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 6e6606d005..8ab1e90e94 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -71,6 +71,11 @@ static inline void arm_fixup_vectors(void)
 
 void *barebox_arm_boot_dtb(void);
 
+static inline unsigned long arm_mem_optee(unsigned long endmem)
+{
+	return endmem - OPTEE_SIZE;
+}
+
 #define arm_mem_scratch(endmem) ((endmem) - OPTEE_SIZE - SZ_32K)
 
 static inline const void *arm_mem_scratch_get(void)
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index c5e6817aad..659798b95f 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -141,7 +141,7 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mm, endmem - OPTEE_SIZE, bl33);
+		imx8m_load_and_start_optee_via_tfa(imx8mm, arm_mem_optee(endmem), bl33);
 	else
 		imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
 }
@@ -189,7 +189,7 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mp, endmem - OPTEE_SIZE, bl33);
+		imx8m_load_and_start_optee_via_tfa(imx8mp, arm_mem_optee(endmem), bl33);
 	else
 		imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
 }
@@ -238,7 +238,7 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mn, endmem - OPTEE_SIZE, bl33);
+		imx8m_load_and_start_optee_via_tfa(imx8mn, arm_mem_optee(endmem), bl33);
 	else
 		imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
 }
-- 
2.39.2



