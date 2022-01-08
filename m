Delivery-date: Sat, 08 Jan 2022 18:15:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJq-00Ecap-7E
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:15:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJo-0004J7-Gh
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:15:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtrvY7F/8tpH6+FZQmS66jauYMHAywsKAi5kawSZbHA=; b=TCiSmiP0boBmFm
	cPKuu1VWJDYsFzwSHGN+64MedVdLm3MD/zjLQGqKWI/noHjY/agXD3QS1b9QHR4DVMT67fMmhF8Ej
	LP0R+FSgNjACdoaV66apcxmZ1tNL//rbceY1Cw777BdHBNgE1JMfh2VH6VkBuV8ooEnwt6aomAdpB
	EZcYEuG9pf/WtU16klzam9IP81oNz2qcG9ZZI8P8mRtKW445CnA7TKbvPZLpCcpD6x8+AOQ0Zi9kn
	2TCFZEQffSbTHcCoM0Dp8iwPEbMea/u2yku+q63cvu53QNyeudG/sdQG9D9bq2YUBMb0prmEUCEmv
	D8M/buiMVrDzIpwkPGZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FI6-006jAk-Iv; Sat, 08 Jan 2022 17:14:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FI1-006jAR-BN
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:14:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FHx-0003pw-J5; Sat, 08 Jan 2022 18:13:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FHx-002SU9-3v; Sat, 08 Jan 2022 18:13:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:13:56 +0100
Message-Id: <20220108171356.586099-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171356.586099-1-a.fatoum@pengutronix.de>
References: <20220108171356.586099-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091401_429945_C161A67D 
X-CRM114-Status: UNSURE (   8.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM64: qemu-virt64: disable MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have CFI flash at address 0 till start of RAM. Until we have a scheme
to remap the flash, so it's usable at that address, just disable the MMU
in the defconfig. Currently the defconfig prints a couple of error
messages on every start up for cfi-flash as well as environment and
state that depend on it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/qemu_virt64_defconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
index 57e715bf8d09..3802ead279cd 100644
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ b/arch/arm/configs/qemu_virt64_defconfig
@@ -1,8 +1,5 @@
 CONFIG_ARCH_ARM64_VIRT=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
-CONFIG_MMU=y
-# CONFIG_MMU_EARLY is not set
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT=""
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

