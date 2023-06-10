Delivery-date: Sat, 10 Jun 2023 12:33:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuU-000xva-Iv
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 12:33:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuR-0006u0-8g
	for lore@pengutronix.de; Sat, 10 Jun 2023 12:33:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F00LVNwnoI8BSiixYGeaW6/Ch0t73fSYmUIUAvymL8o=; b=BITPeupIr/Vmn3
	MpxD1pE0IYR7WttT+AxBXbRtN4FXTB+EOMe9WswzgaBuqbndp10fkwcftu8n+B1u+ylPPtWZ657ey
	9ChfMxJD3P1EIlYqtmsm/VSVTiyIGnJfG4EUzVCnNlwlVhaweDhoOM4Y4s385rltH6enjAhFdMCve
	ZySTBLrUUnG5BNAgCA3IaqENQuSpS7tVffqvcNNTFUMAx4TgSURCStZaIDz//+AeHhztpjqssN5UD
	45MUs3UWWH6mHr1QOaSUB6vus0MKp1whN6gIQMirdCHujTM5KDEWwb6lsCaRwqUlBSKcgzwwmIpLe
	Pv8QOlN1SkOiAKprIqYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vtD-00FqUp-0z;
	Sat, 10 Jun 2023 10:32:11 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vt7-00FqOq-2g
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 10:32:08 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b1a86cdec6so28633831fa.3
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 03:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686393122; x=1688985122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F00LVNwnoI8BSiixYGeaW6/Ch0t73fSYmUIUAvymL8o=;
        b=K98OXMTwhDzp0wDTxd3uoIA035DQYci9ltn3oYgh6NUN66JsR33scSbNqzREDvSjm5
         U/kyJJZsZ3PiRtcV5omI7pTRV4gC9mCtGu48kdHLo7WUrfjGp4I7wbv7DD8pSrHNUtBa
         EUnfNZA9Tqa+qAWLGYlBQ//Oa9TradcsfmeYeAyguFmC0V5ANwrU5KTnndEKFTKdgU6a
         1fpnK/7IgTyI91TJFk3IG5qRKjeJF/Ibw/+1iN9F/bLKfFy2007u0K/aC6xgy6Zd7DHg
         7TM4yh4gDMKCmc6F1Bnt1N35QaEe03yJRR1kU8Xn/a2KDs5pJY1VQgAUePf5uvmgM+Sc
         6sTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686393122; x=1688985122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F00LVNwnoI8BSiixYGeaW6/Ch0t73fSYmUIUAvymL8o=;
        b=Gm/y9KI3HOGvQMzjRm1jTwLMHBDsvJJG9HaMw8memk1LywGmMq7E43e1Pqthpfhbr7
         P1kssuivmDASm840buPGvBPhGf2ethfSUag3BrlPDrhVV2uC7QOjR8ftmHK/gxNzm7ir
         cfbJR1Dvq5P3t3Sy+DYV7uHyEb8vWQpfP8fITYmLJy2cPOdrfWfpPYO3hnoPq3o99Yyd
         fmKwC4tGYrQt6wiEdWi6Nda+L2k9Mc1ok3TkBVP4ZROeW16sFBr9Ml5DxdITjRV6Skr+
         mDBBzv/0MMwVFoIumByb5FKVVHrHE561iqAYlqFFuzNzi7/209relS3k20p92qblFH4S
         Xy8g==
X-Gm-Message-State: AC+VfDwxapUs93cHRP1wvg9r1spo2NPq9gT+JrI0O77hswiyNc/PxDhQ
	enPgek4We9BpaJXNMO1LhXzJRqtX0nE=
X-Google-Smtp-Source: ACHHUZ7ALxDe/+Z2gPIisPySR1ozTkOVqWI3/lzoAMetJdCZZB2bkz2ST1IjmuzW/luKbESNA67Bwg==
X-Received: by 2002:a2e:9bd8:0:b0:2b1:eba8:c23e with SMTP id w24-20020a2e9bd8000000b002b1eba8c23emr481544ljj.27.1686393122474;
        Sat, 10 Jun 2023 03:32:02 -0700 (PDT)
Received: from cinco.. ([109.252.8.26])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e81d0000000b002adf8d948dasm792727ljg.35.2023.06.10.03.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 03:32:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 13:32:20 +0300
Message-Id: <20230610103220.566369-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230610103220.566369-1-antonynpavlov@gmail.com>
References: <20230610103220.566369-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_033205_866767_26AF899B 
X-CRM114-Status: GOOD (  12.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 4/4] Documentation: add sc6531e instructions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/sc6531e.rst | 187 +++++++++++++++++++++++++++++++
 1 file changed, 187 insertions(+)

diff --git a/Documentation/boards/sc6531e.rst b/Documentation/boards/sc6531e.rst
new file mode 100644
index 00000000000..cbda8b6def0
--- /dev/null
+++ b/Documentation/boards/sc6531e.rst
@@ -0,0 +1,187 @@
+SC6531E
+=======
+
+F+ Ezzy 4
+---------
+
+Barebox has limited support for the SC6531E-based feature phones::
+
+  ARCH=arm make ezzy-4_defconfig
+  ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make
+
+The resulting ``./images/barebox.img`` can be loaded with
+``spd_dump`` utility::
+
+  git clone https://github.com/ilyakurdyukov/spreadtrum_flash
+  ( cd spreadtrum_flash && git log -1 --pretty='%h %s' && make )
+  6886a85 Readme update about smartphones.
+  
+  wget https://github.com/ilyakurdyukov/fpdoom/releases/download/1.20230513/fpdoom.zip
+  unzip fpdoom.zip nor_fdl1.bin
+  
+  git clone https://github.com/ilyakurdyukov/fpdoom
+  ( cd fpdoom/libc_server && git log -1 --pretty='%h %s' && make )
+  cc90d2a faster usb io
+  
+  ./spreadtrum_flash/spd_dump --wait 300 fdl nor_fdl1.bin 0x40004000 fdl images/barebox.img ram && ./fpdoom/libc_server/libc_server
+
+  BSL_REP_VER: "SPRD3\0"
+  BSL_REP_VER: "Custom FDL1: CHIP ID = 0x65620001\0"
+  + ./fpdoom/libc_server/libc_server
+  !!! debug_ll
+  
+  Hello world
+  
+  start.c: memory at 0x14000000, size 0x00400000
+  start.c: found DTB in boarddata, copying to 0x142ffe80
+  start.c: initializing malloc pool at 0x141ffe80 (size 0x00100000)
+  start.c: starting barebox...
+  initcall-> 0x143021fc
+  initcall-> 0x14307040
+  initcall-> 0x1430d598
+  initcall-> 0x1430dfd8
+  initcall-> 0x143263f4
+  initcall-> 0x1432a9c0
+  start.c: barebox_arm_boot_dtb: using barebox_boarddata
+  initcall-> 0x143012fc
+  initcall-> 0x143120f0
+  initcall-> 0x1432602c
+  initcall-> 0x14312060
+  initcall-> 0x14310844
+  initcall-> 0x14300058
+  initcall-> 0x14312390
+  initcall-> 0x14300590
+  initcall-> 0x1430bfe8
+  initcall-> 0x1430d6e4
+  initcall-> 0x143233fc
+  initcall-> 0x14324b7c
+  initcall-> 0x14325a10
+  initcall-> 0x14329c74
+  initcall-> 0x14301238
+  initcall-> 0x143090bc
+  initcall-> 0x14300dc8
+  initcall-> 0x143018ac
+  initcall-> 0x14304b8c
+  initcall-> 0x1430dbd0
+  initcall-> 0x1430de24
+  initcall-> 0x14312268
+  initcall-> 0x143127fc
+  initcall-> 0x143127bc
+  initcall-> 0x1431277c
+  initcall-> 0x1431273c
+  initcall-> 0x14323224
+  initcall-> 0x1432a228
+  initcall-> 0x143109ac
+  initcall-> 0x143000cc
+  initcall-> 0x14300b00
+  initcall-> 0x14303244
+  initcall-> 0x143049c0
+  initcall-> 0x14308588
+  malloc space: 0x141ffe80 -> 0x142ffe7f (size 1 MiB)
+  initcall-> 0x143088a0
+  initcall-> 0x1430b920
+  initcall-> 0x1430cf14
+  initcall-> 0x1430d794
+  initcall-> 0x14310fe4
+  initcall-> 0x1432af50
+  initcall-> 0x143012bc
+  environment load /dev/env0: No such file or directory
+  Maybe you have to create the partition.
+  initcalls done
+  Executing '/env/init/automount'...
+  
+  barebox 2023.05.0-00182-g726a6ded65fc-dirty #1 Sat Jun 10 10:50:06 MSK 2023
+  
+  
+  
+  Information commands:
+    ?, cpuinfo, devinfo, drvinfo, gpioinfo, help, iomem, meminfo, version
+  Boot commands:
+    boot, go
+  Partition commands:
+    automount
+  Environment commands:
+    export, global, nv, setenv
+  File commands:
+    basename, cat, cd, cp, digest, dirname, ll, ls, md5sum, mkdir, readlink, rm
+    rmdir, sha1sum
+  Scripting commands:
+    ., :, [, exit, false, getopt, let, msleep, sh, sleep, source, test, true
+  Console commands:
+    echo, edit, sedit, timeout, vi
+  Memory commands:
+    md, memcmp, memcpy, memset, memtest, mm, mw
+  Hardware manipulation commands:
+    gpio_direction_input, gpio_direction_output, gpio_get_value, gpio_set_value
+    led
+  Miscellaneous commands:
+    of_dump, of_node, of_property, oftree, time, uptime
+  Use 'help COMMAND' for more details.
+  
+  
+  implementer: ARM
+  architecture: v5TEJ
+  I-cache: 8192 bytes (linelen = 32)
+  D-cache: 8192 bytes (linelen = 32)
+  Control register: A W P D L I DT IT 
+  
+  0x00000000 - 0xffffffff (size 0x00000000) iomem
+    0x14000000 - 0x143fffff (size 0x00400000) ram0
+      0x141ffe80 - 0x142ffe7f (size 0x00100000) malloc space
+      0x142ffe80 - 0x142ffffe (size 0x0000017f) board data
+      0x14300000 - 0x1433149f (size 0x000314a0) barebox
+      0x143314a0 - 0x14333fbf (size 0x00002b20) barebox data
+      0x14333fc0 - 0x14336973 (size 0x000029b4) bss
+      0x143f0000 - 0x143f7fff (size 0x00008000) stack
+    0x81003000 - 0x810030ff (size 0x00000100) 81003000.timer@81003000.of
+  
+  Maximum system memory: 139648
+  Current system memory: 139648
+  in use: 136240
+  
+   {
+          model = "F+ Ezzy 4";
+          compatible = "f+,ezzy-4";
+          #address-cells = <0x1>;
+          #size-cells = <0x1>;
+          chosen {
+          };
+          memory {
+                  device_type = "memory";
+                  reg = <0x14000000 0x400000>;
+          };
+          timer@81003000 {
+                  compatible = "sc6531e-timer";
+                  reg = <0x81003000 0x100>;
+                  status = "okay";
+          };
+  };
+  
+  Driver	Device(s)
+  --------------------
+  sc6531e-timer
+  	81003000.timer@81003000.of
+  ramfs
+  	ramfs0
+  devfs
+  	devfs0
+  gpio-leds
+  mem
+  	mem0
+  	mem1
+  
+  Use 'devinfo DEVICE' for more information
+  
+     1
+  
+  sleep 0
+  sleep 1
+  sleep 2
+  sleep 3
+  Executing '/env/init/automount-ratp'...
+  Executing '/env/init/ps1'...
+  
+  Hit any to stop autoboot:    0
+  Booting entry 'net'
+  ifup: No such file or directory
+  host: No such file or directory
-- 
2.39.0



