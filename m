Delivery-date: Fri, 17 Feb 2023 11:24:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxuX-00A3Qd-8S
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 11:24:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxuW-0005JB-6V
	for lore@pengutronix.de; Fri, 17 Feb 2023 11:24:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TV81Nvrr/5SpZ/fYE2nVrjdj1Am/9Q3fWPUWZOM2oAo=; b=ztHXasR51UAPtqqHm6aK555MME
	SZs79x2AKamODkBP/h4DOSozokJBMOs/RfR4RBOmT3pAXu/BhNQ9BuvQByi2nhUeN7tfVugoRUPpC
	g5uprXVlmKwaTJQmxCAbdLzXCNX16pVShfjfMZ689r5gVCHlRtjVinv1guu6/5RBLNuxvmKqtXPp9
	MkLLCDvNSJR5skNk1vEJhVuYA+CejYvfsZZj7HCEA0R75kWW6edBSauNUr+ca+sVH2emMtEE3YP7f
	A9IuUFR4LNfe3Zxq3PfMcAnjaLQ1ysgZrBcuj/e9QA2tN7yFi0Y+ox+4JtgvVYMMxVqnUm8W25H8P
	axZqMxAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxt9-00DffB-US; Fri, 17 Feb 2023 10:22:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxt4-00DfcD-Nd
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 10:22:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pSxsz-00059b-H2; Fri, 17 Feb 2023 11:22:37 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pSxsx-005Yq5-Me; Fri, 17 Feb 2023 11:22:36 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pSxsx-006jwU-NM; Fri, 17 Feb 2023 11:22:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 11:22:35 +0100
Message-Id: <20230217102235.1606522-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_022242_794691_FE289315 
X-CRM114-Status: UNSURE (   7.31  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: <asm/barebox-arm.h>: drop undefined barebox_arm_get_boarddata()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Function is only declared, but defined nowere, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 515525e49d31..d4be719bc401 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -61,8 +61,6 @@ unsigned long arm_mem_ramoops_get(void);
 unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
-struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
-
 #if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
 void arm_fixup_vectors(void);
 #else
-- 
2.30.2



