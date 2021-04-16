Delivery-date: Fri, 16 Apr 2021 11:59:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLFi-0001AK-T6
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:59:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLFg-0006hT-S2
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:59:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H61Glp64rHt9xEf5iGQrYf6VHGrg7icSWpGtlOiN1jI=; b=H1OhCwRqPYaZpPjo08YingMmq
	kwXTqKhPjUEq/bBtPibLOMmEUZZBbPDFxOBFNcUgNKLYxY8BI1kaSgsWpEACQzI3DmUqPzMstnEMk
	1jMZ6f0xnrfX6kGoyAzjpqf+zeKEjPV763f70k7pUGPo3nwuywoby7bGYkTF4suqS4ih1VJlnkHKU
	ulsPz24N9oo/8VQr4RvfBJ66hPzik0voZ1cvox1XSvA4Jf8kM8iyvvOhXLRaowTpiCopmzvZ8nObT
	gdSAaXMMDKeY4zJmzMXWYfwbcp2lzIS3d3u1EIbt0nmwgVgKwCuzcnolTDC8hvW8N9Y986/jhMG0N
	nxTojeRcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLDu-001e7C-Ub; Fri, 16 Apr 2021 09:57:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7R-001cVA-Bc
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=jZGgjnMt8et38bpdIeN6cr0foLUgwaPrZJE74u35f5c=; b=O3aBlcVAScsKo6aZu3h7fg3bnx
 pqg9rJvT5kzpBvDKYAbDQAJMqS1T0db8ZCP8tB5HV7p1L7t6RdjCFVUZ5mRGHJKWHIn0zZ541z+Y3
 xtQ5YSMlbXF/2qItTq4DAonA38liirD/VyMGAuSIi6P7bk4OsyFwnt4bpnVZPqMtsNda9ubevy30d
 V8Df7qzUFOVFxfJFCjUB5uYy0jKqN2RnLPUjChuDPZbLJ5iM6vPCCeCFEnm9tusHpZYhuy7v64y+R
 SAz2TyHLU/VMruDffnj3NKwkZDqRt4IYzgScYgu3x8FCmyOBBx723YHae4avnOHAr0W3Hl999xoCX
 /gS0ppBg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7N-009Fyd-KL
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051S-5a; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001Dv-UN; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:39 +0200
Message-Id: <20210416094943.3648-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025029_702425_D3EF6B6B 
X-CRM114-Status: GOOD (  12.83  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/17] ARM: i.MX: esdctl: add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

In case of deep-probe we have to ensure that the memory device is
available after the mem_initcall().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-9-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 135a16d111..6df4008c2d 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -706,7 +706,17 @@ static struct driver_d imx_esdctl_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_esdctl_dt_ids),
 };
 
-mem_platform_driver(imx_esdctl_driver);
+static int imx_esdctl_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&imx_esdctl_driver);
+	if (ret)
+		return ret;
+
+	return of_devices_ensure_probed_by_dev_id(imx_esdctl_dt_ids);
+}
+mem_initcall(imx_esdctl_init);
 
 /*
  * The i.MX SoCs usually have two SDRAM chipselects. The following
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

