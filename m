Delivery-date: Mon, 01 Aug 2022 14:19:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOs-007eLN-SF
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:19:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOq-0008O9-UU
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:19:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sf34+GRO34EkWa9ikMHaIRI+rZXOfqJR9rymKR+OnBk=; b=NTk5Km3H2yC+qho484O15ELM8Y
	xLVBHjvNh7KIZs55ES7liVneehBHRvkbLzSH0xcl1L8OyYWRsLpqxh41H1UeeM1/SccTcUC0Twjfw
	e7qaP2X2sstn40DWBH7Ph4js03yYCdoO9xWuYSCwPZOrvM/OI73Ax/bNMA1tOtY/RI6qjJ9UgJjP1
	Xnt2pmRHUysz6Vrcb+XpjygVI9FRc49pT23Vnlc++CkwER+G915XyL5LEBfj14atgJn1QKWRLCOCh
	qRpgHwrhHRJI+Li6A1VA3d9dNO1k8cThF25PWIzsxtiJ8Fi/AttCUqu1U5mM+DjP+ZVPuAV0FQ6cQ
	NWpQ9V8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUNI-0063rS-2p; Mon, 01 Aug 2022 12:18:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005tsL-OO
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCc-0005zv-1j; Mon, 01 Aug 2022 14:07:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0016gc-Ar; Mon, 01 Aug 2022 14:07:17 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXms-SJ; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:08 +0200
Message-Id: <20220801120708.2511165-8-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_874295_37D21D1A 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 8/8] ARM: socfpga: defconfig: add aa1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Disable KALLSYMS because of image size.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga-arria10_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index a37bae6217..5ac2198d41 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_SOCFPGA=y
+CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1=y
 CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-- 
2.30.2



