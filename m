Delivery-date: Thu, 08 Jul 2021 10:32:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSn-0006Ni-Pq
	for lore@lore.pengutronix.de; Thu, 08 Jul 2021 10:32:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSm-00070X-V6
	for lore@pengutronix.de; Thu, 08 Jul 2021 10:32:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQ2sJIECbf+RoeOe0+Y2s2/u3hFhkIT3h2EZU8toxP4=; b=JHorofnx6g6+/v
	x5hjyc6bEvOuUHD0D3UHISToXeZV/ANvjBnyBte3axISeCQvdeljBWyUvAblBexplxmqqpaMYbAWY
	WnD1BZYbvHSKOFuvQsvjzebyp1aWiOrJAchoMo397sDjwbB/CqoWWuSNWm/3MDN7RLzScKha1Lk1a
	IcsSjHTGk65R6Ez4G1UYSjDo/Re7br8PITttsxReh7Cmb0yf5M/Daz+swp0g2IYtDr43u0qoq3FZP
	MgQui0UhaaBtVB7BcsoxvHhBxaFveRXNNoaasZOs/Fsk9O/iTYoID06dht78KYAXlRaIrLTwZ9nC9
	8UPW8HOIpZMBDCXGifAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1PQu-00GJxg-V2; Thu, 08 Jul 2021 08:30:57 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1PQk-00GJvR-12
 for barebox@lists.infradead.org; Thu, 08 Jul 2021 08:30:47 +0000
Received: by mail-lf1-x135.google.com with SMTP id y42so12896928lfa.3
 for <barebox@lists.infradead.org>; Thu, 08 Jul 2021 01:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ynsDJrVlkyAQ4NJBMy1bkXgF1IaEFcfZM57aHpQPl1Y=;
 b=mh/+PDx33RDcIk3l4S238DjfWrw83XVK5WXKvV558VzV+uJaxv9H/EcGa3U5paP34X
 pVQG1ecRzT7zyEPf6YpglBlrygOy6mZ/CJFyG/n0ItsiXSftn0armg892Fn/JTYt//4/
 3TB0w/DtgqSxqw2+0TThtAKQyt3mNVXOAvCVbq3J9qF7s77Nf81xSb7XTwrGPh7oYWZN
 7obQXyfPve/4TzN5OxaLG6RzI6yKv5CywGcfc1kVcHFnZzb2LRQxbpkPqP0l1QdeYF9W
 /bWNfskaxcclnK8em3BX3jcl04rdFEUJti+yr+PGbeABp0w8TqkXIL8rAg+rPjziW568
 lgPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ynsDJrVlkyAQ4NJBMy1bkXgF1IaEFcfZM57aHpQPl1Y=;
 b=ay3DCbi4EJC/dxQ4Kd7qiV2ffxiwcwx+KO3+cnOLokAH681nOq7zKXkYQXyv+uXZ35
 BpO9gigAKJztYZlVcMRDxJtAo9T5fEiEfWx92eiS9A6/IACrVwXmIeFkHn9i2r6F+cOK
 C9CV6mbTl2Uptz++fK1c1ZMyAs+N8OkNowDlfAng/UjMi9te9q3g6lQmaVAXpb3IpvFu
 YlYO786hxnj38xO/5ciwN1UFFSL7S8ZwAYF9HjTrHXTh9f+09RBkzRDFBS7fJWAeMXmb
 J+AhbvIBtasLIqPdB0HiJaoJorEwBD1g5ij0msgTdcS1RRaMXZ4olI3sBHNBS5GzLTex
 90jg==
X-Gm-Message-State: AOAM53049X9D7aObFRBAl9P48askfuyZYc/7nuvWsXlf9/93RkTXg7xK
 F3DGXR+uevGFRwyw6zQ3t9EjOXaMJpY=
X-Google-Smtp-Source: ABdhPJzwqVhd56PvGN3/teJOROLT9r5o2ijLDv0mZLALHtOqarDj3bvO9q7WT8OosYwjJhauI/Ptjg==
X-Received: by 2002:a2e:9a4c:: with SMTP id k12mr15023520ljj.306.1625733043907; 
 Thu, 08 Jul 2021 01:30:43 -0700 (PDT)
Received: from localhost.localdomain ([176.59.43.199])
 by smtp.gmail.com with ESMTPSA id i21sm127364lfe.86.2021.07.08.01.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 01:30:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  8 Jul 2021 11:30:35 +0300
Message-Id: <20210708083035.40814-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708083035.40814-1-antonynpavlov@gmail.com>
References: <20210708083035.40814-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_013046_097236_046CEBD6 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH next 3/3] RISC-V: boards: beaglev: make it possible to use nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig.socs              | 1 +
 arch/riscv/boards/beaglev/lowlevel.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index de74f216a2..221ea133d4 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -52,6 +52,7 @@ config SOC_STARFIVE
 	select ARCH_HAS_RESET_CONTROLLER
 	select RISCV_S_MODE
 	select HAS_ASM_DEBUG_LL
+	select HAS_NMON
 	help
 	  This enables support for SiFive SoC platform hardware.
 
diff --git a/arch/riscv/boards/beaglev/lowlevel.c b/arch/riscv/boards/beaglev/lowlevel.c
index cccb928bc8..db884dc762 100644
--- a/arch/riscv/boards/beaglev/lowlevel.c
+++ b/arch/riscv/boards/beaglev/lowlevel.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <asm/barebox-riscv.h>
+#include <asm/riscv_nmon.h>
 
 ENTRY_FUNCTION(start_beaglev_starlight, a0, a1, a2)
 {
@@ -10,6 +11,7 @@ ENTRY_FUNCTION(start_beaglev_starlight, a0, a1, a2)
 	void *fdt;
 
 	debug_ll_init();
+	barebox_nmon_entry();
 	putc_ll('>');
 
 	fdt = __dtb_z_jh7100_beaglev_starlight_start + get_runtime_offset();
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

