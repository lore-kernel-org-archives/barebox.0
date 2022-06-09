Delivery-date: Thu, 09 Jun 2022 09:52:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCyR-008WkC-Ix
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 09:52:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCyQ-0002Xi-G9
	for lore@pengutronix.de; Thu, 09 Jun 2022 09:52:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L6YorW7JNagIh6pdvNH7KReKahufQkyW3y+zmqtGW6c=; b=H8XwsLzKANCLOw
	6roe3lndldzgbnGeyKhWX2hCHjqS5b4uLLacRhMqv1p2oDyJL1KiIxYgA2IHoT/XA0X5Lup7ncHdV
	xDQNMP+4mrxV6VZ+rH9ixe0rpmB7YAwB09AtHgxlkbKkgAC+QmNktEQzJeduPDfVR9Ry0JuV9sl8G
	/22dVb7DjkYYAcCmzSM5k63v2mnajux/bd9wb5ruoGdwfMmAkVbNYn74IIt972m7AuALk3ojdQ1PF
	VtE/CZw4WHnzhZu/6CL/HQFu3plXf96V7v3jkQnqRhRkXYiJXXw1XhkLjJ7NC9HxGN0FoF+m2p7jH
	iWwOgU3R5qnz+hFAoIBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCx4-00HaHu-Vt; Thu, 09 Jun 2022 07:51:35 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCx0-00HaFE-2i
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 07:51:31 +0000
Received: by mail-lf1-x134.google.com with SMTP id s6so36671026lfo.13
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 00:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=if4G4BNXQ5+tTu1pyLTAX7ykHPy31jJYEu3pgq026eY=;
        b=HDVrU+cnT8PPUpewfJg3Usf0mOviRLJGz9GIbpgOct5KBG9ZLuttUL+jWud/fL/Q8h
         +ysELAgp4Ut0pSIhq9ftVmhfhsEZlj1sVIMyc0dUpUaFY49QDcqR7FfQLuMWmpGeRX1Z
         Z6hqStcF+FS8NnYCTDcbujiwYLYRP0CAQ46009OGqmV8O3wsLDfh04oldxHSkl8b3/py
         +7zOOqkOj6QqdoEgz6oGTXcjgN9BYN0AhFiXAqsOBRhMh/U8QCp0XxB5qrUWKJWunMLb
         +cV1OpXE3DxK9KWB4MJdJPCV3UDkXci+6sS8WH4FUG6qxzu5PvQR4IB3qykr1ToONqQb
         KWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=if4G4BNXQ5+tTu1pyLTAX7ykHPy31jJYEu3pgq026eY=;
        b=i3ICl2AUcyh7uM7jEuhR/tD3xG+RqBtI78NRkZygOAz5xTS7foze3r4Yn4G1xG29XZ
         3qX03LtgDmNTk5eUhDPZW6F/3g3OOCvTcc9fYXyURx8ggvPIJIyIsCBy5Rux078OigKT
         UQ+TH9A/ZZl6tqvopuMhqAt7kXcuHPOZnitj6niCeTl8HtinQSkEBCTsDwT8pLObjbP6
         YiH8hfQlsu4FDdhKxexdxV9284LWWhQVAEGzuFFmMtXgu70xE+atBo81FPGUouB1HOmn
         hn08iwJgw3XS/Qmcahu5R5uKyyUhsfz0PpjjRctX12FAnu4ox6cgvYVdVSJbzv9syIi7
         hzvg==
X-Gm-Message-State: AOAM5304SV1uoX4ds3TcZp19yaCMvCRnBoKh/xnL+FBULaLuw3qdwIXW
	gUEWrRfP7kUNUb3tosJOWd064erCO3Y=
X-Google-Smtp-Source: ABdhPJwGXaJhMy5KrafRo5LZFP5DUOREYGqWaYHgJGn8gXhfbo4nnmPn49+25nkC7vcR1aY9wz6nHw==
X-Received: by 2002:a05:6512:39d6:b0:478:fd24:36 with SMTP id k22-20020a05651239d600b00478fd240036mr23094961lfu.504.1654761086544;
        Thu, 09 Jun 2022 00:51:26 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id t3-20020a2e9d03000000b00254169b47e2sm2863766lji.76.2022.06.09.00.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 00:51:26 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  9 Jun 2022 10:51:24 +0300
Message-Id: <20220609075124.16925-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_005130_197629_0235D764 
X-CRM114-Status: UNSURE (   7.20  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] serial: Kconfig: Remove DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS Kconfig option does nothing,
so let's remove it.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/serial/Kconfig | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 9d4a534580..6fda32d44c 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -92,13 +92,6 @@ config DRIVER_SERIAL_ATMEL
 	default y
 	bool "Atmel serial driver"
 
-config DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	bool "OMAP Extensions for NS16550"
-	depends on DRIVER_SERIAL_NS16550
-	depends on ARCH_OMAP
-	help
-	  Say Y here if you are using OMAP extensions to NS16550
-
 config DRIVER_SERIAL_NS16550_PCI
 	depends on DRIVER_SERIAL_NS16550
 	depends on PCI
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

