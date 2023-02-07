Delivery-date: Tue, 07 Feb 2023 02:07:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSW-00GWH7-CE
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 02:07:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCST-0007H7-Nj
	for lore@pengutronix.de; Tue, 07 Feb 2023 02:07:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bWPFv/fH0042ahP8ziopn3TZl43tGSWRgYXSHxbz5zk=; b=Q945RdG1NivPyDdlkhuklLaq2a
	BDKIW+jEj25sEoDi3C3p4dAcnRa0Ev3+EqauFtHE9eneYAdV1seddoC9+LpgJqiAzfNS1UiUojZ6N
	RBJklocpw+IXbOlVUg08XEgcXXXUUMMm1ibJMh2mcQ2Ildp0nldY7kNWfmKi3qV+MnYBErIjlYIJW
	gbERFqgKsRYGEuxe6WUlNiwNAGNyspEkL6/nsJwVLoXBPad4LcGm0eU8b3fiGdgLrnoqrZuBITJcN
	pJyNsRuYgYVsQiG5DbygCtDuEaQG2J+qacMFzGJAUuiwf8Y6F/XyeoYrwLBaVrRR/FjwNEjdt35T+
	IRrt0hPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRL-00AKLf-CP; Tue, 07 Feb 2023 01:06:31 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRF-00AKJC-7B
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 01:06:26 +0000
Received: by mail-ej1-x632.google.com with SMTP id mf7so39300399ejc.6
        for <barebox@lists.infradead.org>; Mon, 06 Feb 2023 17:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWPFv/fH0042ahP8ziopn3TZl43tGSWRgYXSHxbz5zk=;
        b=PlAT9i47EGKYdlRqsY7JgjlBEP2QiDcrqs2yxwi6W2VwLvL57/mxXOpLXtb3eiwj9P
         eXvu6o/wywN+VQN1UyIun5x41bta7hFfoYUEOTR9lMoQwS0o3ZVQQ/U2Qixgirwpf0Jv
         AdO6JpPYo4yJH0LQou0Bzr56EtwKEDn8e442biraHWq0+pukLl7bBLgj5+y1An9esvQh
         bAHZmwDUrQWnSBAAAiVhxAdvsjjJqU/Xintx3nOXBNFi15MZjHQXjwztEPSwER08DwnQ
         bafLBmXmGoIfSQ/RXZR+ZQOLl/nQP9Z+AA32OrMGyBGzP6hm/4+uVUtgxpIhNlj/XQaq
         VBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bWPFv/fH0042ahP8ziopn3TZl43tGSWRgYXSHxbz5zk=;
        b=iOXDfyE6xMI1qyuRmthxY2g4cYpCiuAeslunSxH7BCTTNH/+L2u7XKvJ+RkoX5/lhJ
         qRhr4vuvlyFhp0NAEefKdXzS3RRulH9TB4a0bcGPlMS3Gbh1uvz3S4eCwY6WO0PQKICB
         HrduR0+pcvD+0qu4zBFopHHQCrx7IrxhzKQIFPC/JVqVroE2PmEH42SpWssWo8Pdb01d
         HTVXul77hrH7F8RpT57qd68Kt3GlCMEv+t+IgM9e69QoP2HbodZ4vqbRZafGgLp/gVVG
         YzlTmamFKjZj8w3Eige5qRYuEgg1Vl29VwCGkMFxo26XWM2uZnqBYn2s/wpXZ3nFTR8c
         IXqw==
X-Gm-Message-State: AO0yUKXtQlWhEpXn0lfj/3LAywaDFjstLHHrPGVVDUPr2ppXTpksOW9B
	uGhnMxnRJQELsUUHakb4kkdIOAB+Tzo=
X-Google-Smtp-Source: AK7set+2SLdZKvv7cgvVpOx5oi72EcINIwzdd+FGzkqiE9OOeXAUanzIn6CeeOscXz3/NI76xbllKA==
X-Received: by 2002:a17:906:2f81:b0:888:a29:b645 with SMTP id w1-20020a1709062f8100b008880a29b645mr1366906eji.64.1675731982998;
        Mon, 06 Feb 2023 17:06:22 -0800 (PST)
Received: from localhost.localdomain (ip-78-45-34-87.bb.vodafone.cz. [78.45.34.87])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906391200b0088a9e083318sm6078754eje.168.2023.02.06.17.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 17:06:22 -0800 (PST)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue,  7 Feb 2023 02:05:24 +0100
Message-Id: <20230207010525.2693-5-danek.brat@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207010525.2693-1-danek.brat@gmail.com>
References: <20230207010525.2693-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_170625_290228_920A5F3C 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: rpi: add machine-id support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Pass board's serial number as hashable for machine-id generation and
enable machine-id support for rpi platform by default.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++++
 arch/arm/configs/rpi_defconfig            | 1 +
 arch/arm/configs/rpi_v8a_defconfig        | 1 +
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 9bf6e0334d..7ddbe1c289 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -24,6 +24,7 @@
 #include <globalvar.h>
 #include <asm/system_info.h>
 #include <reset_source.h>
+#include <machine_id.h>
 #include <dt-bindings/gpio/gpio.h>
 
 #include <mach/core.h>
@@ -74,6 +75,9 @@ static void rpi_set_serial_number(void)
 	serial_str = basprintf("%016llx", serial);
 	barebox_set_serial_number(serial_str);
 	free(serial_str);
+
+	if (IS_ENABLED(CONFIG_MACHINE_ID))
+		machine_id_set_hashable(&serial, sizeof(serial));
 }
 
 static void rpi_set_ethaddr(void)
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 500c92a821..6019584d48 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -24,6 +24,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_MACHINE_ID=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 75f62ddb65..1ea86c5893 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -23,6 +23,7 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_MACHINE_ID=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-- 
2.34.1



