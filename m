Delivery-date: Mon, 30 Oct 2023 23:38:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qxatq-00B5ww-8Q
	for lore@lore.pengutronix.de; Mon, 30 Oct 2023 23:38:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qxato-0006ZX-Jd
	for lore@pengutronix.de; Mon, 30 Oct 2023 23:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fsT4WA86KP5WEaNHWlt0/nwwrlT9nA7NVvG1y0glBhY=; b=lypn1aOKexb01x
	hVyieciwEqBrfvAlvYNIh6MFVzf25zRWUWu+X92vS30tKt8//xA+IvZ5yLayPr7ix33BHjlq+Uu5i
	JGkqIsUfoXBr9YBgEU0vvDWCZf5Wfx0hCO0JG4DqvP0C6MZ+bGvadGN+ijw/HpJriGvgBMhk+5mg4
	Zm7vo7UhzGN+qyLcfa5XBpRir9cHY8iSiqQj2sGUILRVD1gGQp9zzzs3TOjpIucPKqLbIzZhOG4J8
	sZxv8c4Uy4zyrt25j7PwaYttSk+8KztHSdGPOiE7gwI1KPGkopWR+VlXbV23lOxpZ2hrxPHc9cGVP
	x2YId1DrgeKzQdfDzyTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxasN-0049ON-2m;
	Mon, 30 Oct 2023 22:36:51 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxasK-0049Nj-0D
	for barebox@lists.infradead.org;
	Mon, 30 Oct 2023 22:36:49 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507c1936fd5so6867123e87.1
        for <barebox@lists.infradead.org>; Mon, 30 Oct 2023 15:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698705402; x=1699310202; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fsT4WA86KP5WEaNHWlt0/nwwrlT9nA7NVvG1y0glBhY=;
        b=MsYpuF4O64VdKval2Q2DEhVMIVB3MGh6eZoUfkDaIZ0pU8dC5M9RUofQA14ODGAGSx
         0wQtIJsKpk224Qv/IEOxf7UdRJErkiKbMF4O6Rrh97vKBx+8oiAjZt6Qyrox40WV4gIv
         RlM5vcC0pNbNgkTM+ImjyHCdFqadXXZb/4Ih6Ei/fuaHZL/RsxYU5fDw0tK/7RoRIMpD
         NiR7PaiQWjPCupnASyYmwlqnb3rupmcX3PeR9j8lrA+rnQl2YZhkt1HT3HMdNhrbtj1g
         Dv/gwA+OvFoyemiJPKjQKIjVqNmjyCF5lPddOqfUxbXQ2cbrDkH9ZEkosCLqHdgN5N4F
         tH0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698705402; x=1699310202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fsT4WA86KP5WEaNHWlt0/nwwrlT9nA7NVvG1y0glBhY=;
        b=hVqCVij0Z+t9QIhrNfPUe1b+BcHwmcNsnJeKUtt17zKFnCksbKludteMLc/QRR7xvQ
         xL3PJKri43OjfuOxhj7mwEL+BAjzVghEmNbL5jiwCv12YgWT/fU29IDMr0mkvSWCkg7h
         5Q8Q4cErHdqY6ywyzpXI4mhaXtgbE4LQeBU71CV/E5u9TaMQojEtzoEcL8qtrO40mk1Y
         atkL/IXHsi33sZIoF8ne/ofxZSKL9+9WloO1+xK9uWwkw2hBdethC9RLX5oMochsThRO
         AH3YrhapMy070kwzq8q0Dgmofwsoj7I7ufDMtTumdK4Zl+r3e2TPYJkceF017CaMYPVG
         OMjA==
X-Gm-Message-State: AOJu0Yz2hSn/rLHQvQ7NbSgwc2cIUg45na+A+lKdeR8QZ1MgkZypDcae
	FXh4wO1RFjPBucPPj8KrzBGO/KxqC08=
X-Google-Smtp-Source: AGHT+IG7YAGZMG4RYzfCRKsOjHoV0JY0ySJerYF3Gf86bjr4BGOyfe+TzQOLuD2XdqOK5QROwiphxQ==
X-Received: by 2002:a05:6512:2215:b0:500:d96e:f6eb with SMTP id h21-20020a056512221500b00500d96ef6ebmr346607lfu.19.1698705401572;
        Mon, 30 Oct 2023 15:36:41 -0700 (PDT)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id b20-20020ac25634000000b004ff973cb14esm1561913lff.108.2023.10.30.15.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 15:36:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 31 Oct 2023 01:36:19 +0300
Message-Id: <20231030223619.344784-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_153648_102265_722AD553 
X-CRM114-Status: UNSURE (   9.54  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: qemu-malta: use 320 MHz input clock for CP0 clocksource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Modern qemu uses 24Kf CPU at 320 MHz for malta board.
By default arch/mips/lib/csrc-r4k.c clocksource driver
relies on CPU running at 200 MHz and CP0 timer runs
at the half of CPU clock that is 100 MHz.
As a result the `sleep 15` command runs for only
9 seconds on qemu-malta.

Setting CPU clock to 320 MHz in the qemu-malta.dts file
fixes the problem.

See these qemu commits for details:

  eea1f5bac6f hw/mips/malta: Set CPU frequency to 320 MHz
  a7519f2b39b mips: malta/boston: replace cpu_model with cpu_type

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig            |  3 +++
 arch/mips/dts/qemu-malta.dts | 20 ++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index e05ee2d7f1a..89fc16be133 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -79,6 +79,9 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select HAS_DEBUG_LL
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HW_HAS_PCI
 	select HAVE_PBL_IMAGE
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index f08832735f8..c2bc03dd463 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -19,6 +19,26 @@ memory@0 {
 		reg = <0x00000000 0x10000000>;
 	};
 
+	clocks {
+		ref_clk: ref_clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <320000000>;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "mips,mips24Kf";
+			clocks = <&ref_clk>;
+			reg = <0>;
+		};
+	};
+
 	uart0: serial@180003f8 {
 		compatible = "ns16550a";
 		reg = <0x180003f8 0x08>;
-- 
2.39.0



