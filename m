Delivery-date: Tue, 11 Apr 2023 09:17:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FV-00HIC4-HO
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:17:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FL-0001l7-IK
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:17:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GzKqge4zhUUxHXAEimSNqfL7MJ0Q+2/leBTOB5zahXA=; b=deGZFLUBoYRQM2hjRKK4NOqzCb
	HDeba+URgUOcUH30irQ5Eu/LP0v3LAKPpwZq3kwpfoEUdoffzvH2btx4xdlG4s6uTNtwXkAt7IdSD
	EKxQQA0X91DZdNWLLJoO0WsBRIro6VXdS6Tnie/ap5MXCEDDmygXlhsS7s6yWvDqogbFvBuVOuzPF
	euGHAz6MTnqUlePhSsxoEPT74bQO+b0t/sGIOvWpkSf+45SgGqKLYNvsOd9j6W3HacwJYi40uo3Ya
	KiPwxIsvNhTcgSDdiehlwATJpHYnP+ta8a4cRVXX7gijMVpu1xZR6kyg3nN7GyKVtHzTHrBHQv6in
	kVXMEJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DU-00Gg7F-0V;
	Tue, 11 Apr 2023 07:15:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DI-00Gfxc-0i
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000sE-E8; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-00ARvv-QD; Tue, 11 Apr 2023 09:14:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNQ-Nc; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:24 +0200
Message-Id: <20230411071436.1630752-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001448_257875_A0CF0D60 
X-CRM114-Status: GOOD (  11.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 02/14] RISC-V: board-dt-2nd: fix hang in startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

relocate_to_current_adr() will do a sync_caches_for_execution() after
concluding. The method used for icache synchronization depends on the
CPU being used. Allwinner D1 support added the assumption that any
code running in S-Mode will have populated sscratch with the flags
before calling riscv_vendor_id(). This is not the case for
barebox-dt-2nd, which does relocation before riscv_set_flags().

Quick fix this by calling riscv_set_flags manually.

Cc: Marco Felsch <m.felsch@pengutronix.de>
Fixes: c986c565b023 ("RISC-V: use m/sscratch registers for barebox_riscv_pbl_flags")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boot/board-dt-2nd.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index 8b78e1b11d31..f1479d834615 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -50,6 +50,12 @@ static void noinline __noreturn start_dt_2nd_nonnaked(unsigned long hartid,
 	if (!fdt)
 		hang();
 
+	/*
+	 * We need to call this here, as a multiplatform build
+	 * depends on querying mode for riscv_vendor_id()
+	 */
+	riscv_set_flags(RISCV_S_MODE);
+
 	relocate_to_current_adr();
 	setup_c();
 
-- 
2.39.2



