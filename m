Delivery-date: Wed, 17 May 2023 11:05:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD62-0048aA-GP
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD5y-0004mu-2j
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+UnyRlkNSrukxr2xkiY5TKneEmjj/yIX+j/ePypLZp8=; b=qI1ICg8OJVdqC6Aj2fwE036kB8
	kKbTTGc9fiugjzhKEO7LW+2JMkdwK90AHHzNgN//ueF6r0jzLLLBAZ8YrwiOYqid9V4HCvZdjnliU
	2+XtJApbXQ8E4JdkujM55lRvngGb4RudE9Wj8PMoPDF/m7OCgdcbBiR3ZEUq46APs3NyKc64nUp4P
	+YyRY8D8PozF9AA7XYtCB47P2a17Lx4Lkzgf8/TTjyJxDygxKzMU7CLJLVq0jhqMFv9ypLjt/jSvz
	NAB9bClV1ruOct938Ojz4P7cZ1+MUGWsYxBOcigM82QJoPCyjpf6Ub7Nbb11d3wBS1Em47h6KQWtL
	7AK9Q4nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4l-008yWn-1D;
	Wed, 17 May 2023 09:04:03 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4b-008yQQ-2m
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-0003wm-Jy; Wed, 17 May 2023 11:03:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4R-000o6V-Mg; Wed, 17 May 2023 11:03:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gaqy-GA; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:08 +0200
Message-Id: <20230517090340.3954615-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020353_937891_88E034EA 
X-CRM114-Status: GOOD (  10.48  )
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
Subject: [PATCH v2 02/34] ARM: remove unused define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

__ARM_SETUP_STACK isn't used anywhere. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 2e0d8dc9a7..3a0c3d7d40 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -130,10 +130,6 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	}
 }
 
-#ifndef CONFIG_CPU_64
-#define __ARM_SETUP_STACK(name, stack_top) if (stack_top) arm_setup_stack(stack_top)
-#endif
-
 /*
  * Unlike ENTRY_FUNCTION, this can be used to setup stack for a C entry
  * point on both ARM32 and ARM64. ENTRY_FUNCTION on ARM64 can only be used
-- 
2.39.2



