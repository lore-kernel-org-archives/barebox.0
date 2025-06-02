Delivery-date: Mon, 02 Jun 2025 08:20:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyXY-002rke-2t
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 08:20:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyXY-0002vS-B7
	for lore@pengutronix.de; Mon, 02 Jun 2025 08:20:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q2lySjs84tMPOa0NX3OIWYjgCIgScsyRWr26pQ+Z0O0=; b=V09Ru+Ne1PDjzD6OwiLkYhBzqc
	2HfhfgPCv9/F1bMSEf5Uza5fFxtFWJfYO3TIsvPn7HoMQ0d0E9BcbYwmkTHMmkvo8piiGqpTHZhXT
	+KK7aZiXdqRnFYYTWOh4/wq+ebAfJz00GL3V7zGApJzfQGDjY0nWOR+6R6O9nZinsNsyvrtowNzjp
	KAXkPfB6IBZMGozFwsxO1hFtR96zrxmRwsSlDihvZMqwFt4HZ8l3nJhF/PFnj0snWAlHHspaTX5Dr
	PFZNZLzw5UmATLBfuJCwRjdqhB4XQZJlmxLuRsUjnSnZgI3rqRPb6psoLHC4LY+2JLAs9xg510A4H
	0odjBNtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyX7-00000006pc9-0Lgo;
	Mon, 02 Jun 2025 06:20:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyX5-00000006pbX-3Gpq
	for barebox@bombadil.infradead.org;
	Mon, 02 Jun 2025 06:20:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Q2lySjs84tMPOa0NX3OIWYjgCIgScsyRWr26pQ+Z0O0=; b=CiZCCYC9Np4LkZr/IXyMdExGA1
	yNyP4yolus8Bygso391xhPMSs3KVnM0JltEB94xfiSwcLKDlNBQ23z/N6BZyJM9z3DGFc8JDrEydt
	r1t4a63myH3udG/ZXh/p9hDEybZKq64KLwzxDMn/afxswXMm6lejRdmejAl9w5ifVi+tNWRg4RmJ3
	hj6FlcTyelzi4nitITck5K4CAkAJP+UjZ/zqpTA9grhJcRYorsSy19npEK7vl1ToCaC/VxowjC7ze
	BzIWQW02RLuF64eeWFU7TakpQN/udHUQ7k06yeAKyT69S181qxRMGHWgSu9Bp1GT2lTyXVrjswgPs
	mUkO1g9g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyX2-00000000b9e-3lhm
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 06:20:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLyWz-0002iL-E7; Mon, 02 Jun 2025 08:20:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 08:20:20 +0200
Message-Id: <20250602062020.754880-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250602062020.754880-1-a.fatoum@barebox.org>
References: <20250602062020.754880-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_072025_001003_AD9027E5 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: Arria10: xload: don't check writel return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

No one checks a10_update_bits()'s return value, which is good as
return value has no indication over operation success anyway.

Make it void and fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/mach-socfpga/arria10-xload.c | 7 ++-----
 include/mach/socfpga/arria10-xload.h  | 2 +-
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index fb87135ca94a..4c8f9c7f0e55 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -16,20 +16,17 @@
 #include <mach/socfpga/generic.h>
 #include <linux/sizes.h>
 
-int a10_update_bits(unsigned int reg, unsigned int mask,
+void a10_update_bits(unsigned int reg, unsigned int mask,
 		    unsigned int val)
 {
 	unsigned int tmp, orig;
-	int ret = 0;
 
 	orig = readl(ARRIA10_FPGAMGRREGS_ADDR + reg);
 	tmp = orig & ~mask;
 	tmp |= val & mask;
 
 	if (tmp != orig)
-		ret = writel(tmp, ARRIA10_FPGAMGRREGS_ADDR + reg);
-
-	return ret;
+		writel(tmp, ARRIA10_FPGAMGRREGS_ADDR + reg);
 }
 
 static uint32_t socfpga_a10_fpga_read_stat(void)
diff --git a/include/mach/socfpga/arria10-xload.h b/include/mach/socfpga/arria10-xload.h
index c58ab7f8cfd2..b7f100d90a96 100644
--- a/include/mach/socfpga/arria10-xload.h
+++ b/include/mach/socfpga/arria10-xload.h
@@ -6,7 +6,7 @@
 void arria10_init_mmc(void);
 int arria10_prepare_mmc(int barebox_part, int rbf_part);
 int arria10_read_blocks(void *dst, int blocknum, size_t len);
-int a10_update_bits(unsigned int reg, unsigned int mask, unsigned int val);
+void a10_update_bits(unsigned int reg, unsigned int mask, unsigned int val);
 
 struct partition {
 	uint64_t first_sec;
-- 
2.39.5



