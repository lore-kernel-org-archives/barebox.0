Delivery-date: Mon, 03 Mar 2025 10:02:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1ga-009GpP-0k
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:02:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gZ-0004EE-1R
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b8Z2VGrxqYA9wwIWUtGCtS3TheIqS81b7jeegQkIQ1A=; b=mPqJaWXLG4HykVByMIMUrlQkK9
	kpqlko3cN30b614gvhg1jAPU+aZX4NTV/US4/M6zzqIMF3p54ACTxs+N68FjDv3wTNUh9jJXEOWIU
	01zWw38gKP2doE/VnJZvrsOhHLBCB3kBTkfiWdAPVZld7su1EQdmWhA97Qe6sgWT7EYtwA3S2KufG
	6Wyd/sslc6S2eUFvXsbYADMLl+D8wDLnSDowxqeaQ36C+dMZNqSx7OdoD0fyymWis+5a4VwQsC5/M
	o9jlPqosHCu8iuZw1q24Peaf0jr2tZ1VmNG99DzVP7gbNzOBvPMcM7VVYEUwSmQ1ySaAhip2/QTYc
	/zapiSpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1g5-000000002rU-0b84;
	Mon, 03 Mar 2025 09:01:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e7-000000002Rm-0Piy
	for barebox@bombadil.infradead.org;
	Mon, 03 Mar 2025 08:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=b8Z2VGrxqYA9wwIWUtGCtS3TheIqS81b7jeegQkIQ1A=; b=cRY9gpJPskcC5UV28AxVWhHQHb
	Myp0VkDn9EcQ2KWTiXc7p5ALC1sefn82WF2pW5n4WGDk4tizZ6agILxExhmvWQTiduQ9EnichqQ50
	f7kouOfGLkm+KBrgMEWykVMOdIakm1sIo9CCIa5jcVTAYotZJG3cWZvThHt/KO7ImYc8Q0+A3wqL7
	JEzhTriDzVLLrZY3BngW2BYL6w/Ds0/nd5hR6j012l6WJtvLbFou8rkm/U8fl15uXbz5wVIW7//rX
	7a1LQcJPJ1BBN5YThw7kG24FAEOJyu7brvMgxbY6nhRmkuJEdoyv/OZHG12MQE+9i0JkfbZzrtnb5
	82zU6I+A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e2-00000004WeH-3NvJ
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:59:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp1dy-0003IF-Vk; Mon, 03 Mar 2025 09:59:23 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Mar 2025 09:59:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250303-v2025-02-0-topic-socfpga-arria10-v1-3-d66021246a66@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_085928_505727_C50C6714 
X-CRM114-Status: UNSURE (   9.96  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] ARM: SoCFPGA: arria10-sdram: cleanup emif_reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the __wait_on_timeout code to poll for EMIF reset.

Be sure to clear EMIF if reset fails before trying again.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-sdram.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index da7d3ea685e238c8c9abda84976a1161edfc4b03..c28cf50eb55fb97c2dfe52acfbc360784ca3e36b 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -244,13 +244,16 @@ static int emif_reset(void)
 
 	writel(CORE2SEQ_INT_REQ, DDR_REG_CORE2SEQ);
 
-	if (ddr_wait_bit(DDR_REG_SEQ2CORE, SEQ2CORE_INT_RESP_BIT, 0, 1000000)) {
+	ret = __wait_on_timeout(1000000, readl(DDR_REG_SEQ2CORE) &
+				SEQ2CORE_INT_RESP_BIT);
+	if (ret) {
 		printf("emif_reset failed to see interrupt acknowledge\n");
+		emif_clear();
 		return -2;
-	} else {
-		printf("emif_reset interrupt acknowledged\n");
 	}
 
+	__udelay(1000);
+
 	ret = emif_clear();
 	if (ret) {
 		printf("emif_clear() failed\n");

-- 
2.45.2



