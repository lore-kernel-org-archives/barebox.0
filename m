Delivery-date: Mon, 05 Jun 2023 22:28:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoU-00CCVg-3F
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoP-00014S-G4
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDG/hrMbrVCXpBFA0uVLTFtj26XoOz2etUvACmunWPU=; b=rZZEydeSntXNLN
	cDWSJPUXRkB0ms92ksKhBIoITPVkFO/4ZUFy8mNlrtMoKRvASuR9Aa7ZRicM9EGOV09GMZ9JnLzdC
	mTCpfqlM0sIP/zmXU3Z/oB2NFpQ+Z2l/759v/j2s8HV2Ej04vOTTgbpZ3cWnqyxhxjB8/4HQofy3b
	Z/UueVQGpoljtxejWfio4t8uyw2RXSZjXQg+NFrVo3gCuih278Z6WFuFQ+YgdU47e+A4u+6AbnzB/
	OEmhMKfITPbcc+kN4lZqkneaGKv6ZDXVk1cPRf8SfZy10KjeiYcOblwK6RX0WgrMMAwB9BzOUFwbR
	sWD0o0JvuMEXXIEfzyTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn1-00Gh6k-1F;
	Mon, 05 Jun 2023 20:26:55 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gmx-00Gh4h-2L
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:52 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b1a46ad09fso63192031fa.2
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996808; x=1688588808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fDG/hrMbrVCXpBFA0uVLTFtj26XoOz2etUvACmunWPU=;
        b=jjoWa+4uDvTSrRxb6cCdn5ILtsH9NmXuN4aM5P3C15Ez1Dga7ikdtbLu2nfJs2jr8u
         yGWOj0wnorHu4v0gViIUggrtVs6lPWerCNPPBpoQlc97wEfGgMa8r8FycvHvvN72SvUm
         KGQ1+XjLk9p4SE7uuzmBUOGT5QsjzmP7v6gcb0cg9JiYBASoBHLH8MlaMUxpiTAj37pr
         wfgHkw+ufNeRcN/BqwQPi8TNhWrpPUzhYmep7BFhm8ZqqftF9c+rQBGbvZMegJ02WeOh
         Qr98XR+hjv4EnEczNKB2ZDN/N+ZxsZQqs2nmG8pCP/spL0WvWwTtvmROumypCYrgCozI
         kfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996808; x=1688588808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDG/hrMbrVCXpBFA0uVLTFtj26XoOz2etUvACmunWPU=;
        b=b7NdGWsA1i3aAK1l3EBzf8Bs+jY99oRRfV0OpqyF6fBgrfni3ywr09lIX+OSHAfzEb
         Qf7PqbwCCZZ6+dbMqIa5Ipv7JJCRXdzVXCR63L3a/IH3o6KqBQYK8uWLa7qsT/If3hhX
         N/27mqdycBUR0gKcm7Q/vzAjA+sOqgoX8T8m7sDB80TRYjRzxX93k7YaVZgRs+jKVkac
         T+2DdoVyAAdNfGOet5hIniNy3mMVm+Us9pqE6nbiRt4bcgmq42cV52MMDzhz5StQcUdn
         kJ4Vh0D2sst0EsMBU1Kzsrwqj2UwFYL/PSWayJ0+TgCF3g8SUC89NZ/1BCCCqTSPk8eU
         oYQg==
X-Gm-Message-State: AC+VfDygix8HhvlIZv8F3SnCQ+RSXRDvhQV9nBvBvHrFIOEdq0NLoRcI
	oWbVWk0itZA4Uc3a/KwunqM9pjMYrn9YWA==
X-Google-Smtp-Source: ACHHUZ5xD+uOx4BBa46PlxOgRKfSdKBRSI3fgPzRfs+IA38zgDr3q8hVb3mHg1E8Dbdb2a9YMW0NiQ==
X-Received: by 2002:a05:651c:1054:b0:2b1:c111:6c29 with SMTP id x20-20020a05651c105400b002b1c1116c29mr173173ljm.32.1685996808009;
        Mon, 05 Jun 2023 13:26:48 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:47 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:32 +0300
Message-ID: <20230605202634.42175-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132651_764772_FF540E5F 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/17] MIPS: malta: allow to choose MIPS64 target CPU in config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QEMU is able to emulate malta machine with a variety of MIPS CPUs,
including MIPS64 ones, so allow to compile barebox for such
configurations.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 70d85690da..ab8c8cf176 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -70,8 +70,11 @@ config MACH_MIPS_MALTA
 	select CSRC_R4K_LIB
 	select DRIVER_SERIAL_NS16550
 	select SYS_HAS_CPU_MIPS32_R1
+	select SYS_HAS_CPU_MIPS64_R1
 	select SYS_HAS_CPU_MIPS32_R2
+	select SYS_HAS_CPU_MIPS64_R2
 	select SYS_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_64BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select HAS_DEBUG_LL
-- 
2.41.0



