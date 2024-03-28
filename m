Delivery-date: Thu, 28 Mar 2024 19:39:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufH-00A25L-13
	for lore@lore.pengutronix.de;
	Thu, 28 Mar 2024 19:39:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpufG-0006zj-Lt
	for lore@pengutronix.de; Thu, 28 Mar 2024 19:39:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvPVAL9HJRo56RjVvvY1QWmU2Xsj/VhCNaaotuSNziU=; b=OPMewUK2V6sZrT
	hG5XpNJMIRDLZitVtWAuD1UlDtPJgzT5orgkdXtGbQQcwB1mK4tNcOX4blc3+OBUGw228gP6/VEwI
	1wT6ct7xA7P9UeP9FA1g1OWexrasxMK0D/zPHivD/aBokpLDcGNtEAzAIPAmXdpOShIHFRyrclnEN
	noMPcMO0ORg4mxf1kdlZc++o9LzzXVSAYddZVrTB0SLJGq5cItyajHqYE7CBenqrSxkzeYAUCKzgh
	ykXJnMAG1OFYGfvtD3YvZ/JXwse/0xNjnpDBl7OyFuzqzlkTinnc3JC/A0BklC2khV8xnOy0oYUoH
	lADr6aeuPvnbFhCLUrEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpuee-0000000FD8U-3kpB;
	Thu, 28 Mar 2024 18:39:12 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpueb-0000000FD7M-3QB4
	for barebox@lists.infradead.org;
	Thu, 28 Mar 2024 18:39:11 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5157af37806so1491392e87.0
        for <barebox@lists.infradead.org>; Thu, 28 Mar 2024 11:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711651148; x=1712255948; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IvPVAL9HJRo56RjVvvY1QWmU2Xsj/VhCNaaotuSNziU=;
        b=QYTMpT45Ri/gFGc0q3IVsZd0Hce1wvwW/ABbi1l0NbkISZi9H5POhZmvOhM7O1bjrT
         3HXuRB+8kLVxhQXwETPVt1mRMLDeLDNFYodE8zuT7G4qjzoAcVLeCPRRR+Pg6qTR9rcZ
         y6zSTWi3u+o6FNe9wD8OzFZoHL4ijhTGp3lYgq2v48Qc6F8Anz+v1AcLvX/O0WF5IPhU
         u74raY2GArv+lT3wLtPI/4TwR51UTP+TXI9WYrY25ceuDnBZ1RY1HlvJsJJe5bi7aHY5
         /opRhjd6gBeSrDHzqyTxPxZrYg3BM0NGNfiPuF9kDVAoGWUv/OuwcrgQIx/0em4mZDU7
         j6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711651148; x=1712255948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvPVAL9HJRo56RjVvvY1QWmU2Xsj/VhCNaaotuSNziU=;
        b=qRKHIOkmmAixBj93vf0lxHAT9A5X1P3Yw23ddycw+TsWQxDUTbmFW4dyv+A4KXbWWt
         tGOGsfHLjBnmhBzExxxNWSEDIp5CDY5o+gmryfM5IY218RJpaUgvcLbZwII9UqNovA4K
         9PGKRj43aZXWwHwxHr+O8lP8xuzhD1X2HJOAAcRiSdK6Q/awyOaQOIbiDWWeUVMTCUwm
         1ITKCwecwDm+DDl9zgIGCXUiw58DJ78SxYcba/8W4D+OEZ/y6GLGVO8rQcEvGW6nHKeH
         c45mdX7RFSqi0ZNc0hnP1DR4LDbSb6x2a4NXJ+mbfWA3lpY6LAoz3rBQV4QY5XuzzzoQ
         zXmQ==
X-Gm-Message-State: AOJu0YzWYgyNK4h7h4tSHop4+BSCVqrD566AsWcpPGMcXZjuVNzCvZhs
	TkLmEs506h47ve55YJnHYwJMma/bWjuuzcXnPYZPaGIlh6C9PCUjKiM1cUU2wZTS2Q==
X-Google-Smtp-Source: AGHT+IG6phxVL5otyLHrDd7+4mpOb2tXJqnFXf5uT+ugXq5MUw9fTtDsnfGDI+Og6iEdRnY61JuTxw==
X-Received: by 2002:ac2:4c39:0:b0:515:a8e0:dfd8 with SMTP id u25-20020ac24c39000000b00515a8e0dfd8mr173136lfq.3.1711651147534;
        Thu, 28 Mar 2024 11:39:07 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id z28-20020a195e5c000000b00513bd67f45asm308176lfi.66.2024.03.28.11.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:39:07 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Mar 2024 21:37:01 +0300
Message-ID: <20240328183851.3842-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240328183851.3842-1-denorl2009@gmail.com>
References: <20240328183851.3842-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_113909_994209_E67F6702 
X-CRM114-Status: GOOD (  11.29  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mips: cpu-probe: identify more MIPS CPUs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for identifying more CPUs emulatable by QEMU, so that
their names are shown when using 'cpuinfo' command.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/cpu.h | 30 +++++++++++++++----
 arch/mips/lib/cpu-probe.c   | 59 ++++++++++++++++++++++++++++++++++++-
 2 files changed, 83 insertions(+), 6 deletions(-)

diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
index 155e254a81..7fba0b77df 100644
--- a/arch/mips/include/asm/cpu.h
+++ b/arch/mips/include/asm/cpu.h
@@ -51,9 +51,25 @@
  * These are the PRID's for when 23:16 == PRID_COMP_MIPS
  */
 
+#define PRID_IMP_QEMU_GENERIC	0x0000
+#define PRID_IMP_4KC		0x8000
+#define PRID_IMP_5KC		0x8100
+#define PRID_IMP_20KC		0x8200
+#define PRID_IMP_4KEC		0x8400
+#define PRID_IMP_4KSC		0x8600
+#define PRID_IMP_25KF		0x8800
+#define PRID_IMP_5KE		0x8900
+#define PRID_IMP_4KECR2		0x9000
+#define PRID_IMP_4KEMPR2	0x9100
+#define PRID_IMP_4KSD		0x9200
 #define PRID_IMP_24K		0x9300
+#define PRID_IMP_34K		0x9500
 #define PRID_IMP_24KE		0x9600
 #define PRID_IMP_74K		0x9700
+#define PRID_IMP_1004K		0x9900
+#define PRID_IMP_1074K		0x9a00
+#define PRID_IMP_M14KC		0x9c00
+#define PRID_IMP_M14KEC		0x9e00
 
 /*
  * These are the PRID's for when 23:16 == PRID_COMP_BROADCOM
@@ -107,11 +123,15 @@ enum cpu_type_enum {
 	/*
 	 * MIPS32 class processors
 	 */
-	CPU_24K,
-	CPU_74K,
-	CPU_BMIPS3300,
-	CPU_JZRISC,
-	CPU_GS232,
+	CPU_4KC, CPU_4KEC, CPU_4KSC, CPU_24K, CPU_34K, CPU_1004K, CPU_74K,
+	CPU_M14KC, CPU_M14KEC, CPU_1074K, CPU_BMIPS3300, CPU_JZRISC, CPU_GS232,
+
+	/*
+	 * MIPS64 class processors
+	 */
+	CPU_5KC, CPU_5KE, CPU_20KC, CPU_25KF,
+
+	CPU_QEMU_GENERIC,
 
 	CPU_LAST
 };
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index 47c9c671eb..fc20281597 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -102,15 +102,72 @@ static inline void cpu_probe_mips(struct cpuinfo_mips *c)
 {
 	decode_configs(c);
 	switch (c->processor_id & 0xff00) {
+	case PRID_IMP_QEMU_GENERIC:
+		c->cputype = CPU_QEMU_GENERIC;
+		__cpu_name = "MIPS GENERIC QEMU";
+		break;
+	case PRID_IMP_4KC:
+		c->cputype = CPU_4KC;
+		__cpu_name = "MIPS 4Kc";
+		break;
+	case PRID_IMP_4KEC:
+	case PRID_IMP_4KECR2:
+		c->cputype = CPU_4KEC;
+		__cpu_name = "MIPS 4KEc";
+		break;
+	case PRID_IMP_4KSC:
+	case PRID_IMP_4KSD:
+		c->cputype = CPU_4KSC;
+		__cpu_name = "MIPS 4KSc";
+		break;
+	case PRID_IMP_5KC:
+		c->cputype = CPU_5KC;
+		__cpu_name = "MIPS 5Kc";
+		break;
+	case PRID_IMP_5KE:
+		c->cputype = CPU_5KE;
+		__cpu_name = "MIPS 5KE";
+		break;
+	case PRID_IMP_20KC:
+		c->cputype = CPU_20KC;
+		__cpu_name = "MIPS 20Kc";
+		break;
 	case PRID_IMP_24K:
-	case PRID_IMP_24KE:
 		c->cputype = CPU_24K;
 		__cpu_name = "MIPS 24Kc";
 		break;
+	case PRID_IMP_24KE:
+		c->cputype = CPU_24K;
+		__cpu_name = "MIPS 24KEc";
+		break;
+	case PRID_IMP_25KF:
+		c->cputype = CPU_25KF;
+		__cpu_name = "MIPS 25Kc";
+		break;
+	case PRID_IMP_34K:
+		c->cputype = CPU_34K;
+		__cpu_name = "MIPS 34Kc";
+		break;
 	case PRID_IMP_74K:
 		c->cputype = CPU_74K;
 		__cpu_name = "MIPS 74Kc";
 		break;
+	case PRID_IMP_M14KC:
+		c->cputype = CPU_M14KC;
+		__cpu_name = "MIPS M14Kc";
+		break;
+	case PRID_IMP_M14KEC:
+		c->cputype = CPU_M14KEC;
+		__cpu_name = "MIPS M14KEc";
+		break;
+	case PRID_IMP_1004K:
+		c->cputype = CPU_1004K;
+		__cpu_name = "MIPS 1004Kc";
+		break;
+	case PRID_IMP_1074K:
+		c->cputype = CPU_1074K;
+		__cpu_name = "MIPS 1074Kc";
+		break;
 	}
 }
 
-- 
2.44.0



