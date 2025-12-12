Delivery-date: Fri, 12 Dec 2025 06:09:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP3-00AYPe-0c
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 06:09:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP2-0000dw-Ib
	for lore@pengutronix.de; Fri, 12 Dec 2025 06:09:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DemXOp5CNooaaYGSA31sKApvpbS4BROLzKgIDsd+gVI=; b=RRiHI7wTagOWh9wUQQN0g20iM7
	h3F1h4RSKtwedyI2OtJOJlc4KLsG6RhdFYHXdhi3EZs/Kr92uQqNXl7oG6X0imFMgrTTovAXYrBSb
	eMlElCr0uo7cn2LqNR3eh/HMDWo+g92Qr4pU/kgH2wruv/ltiHKvnWu94vwDvxvBfge3tyId0jLeh
	LjRtkQh0zwk8WHB8wUoHR1AAC3DO4Lxyyj5NN0zx5xfBoXZueDk2Duiz7Uh2GiXuMmv73kVYTWiRA
	LdjfTcHKdjMexO36oVRqnziAoaswgC0rKepECxOX6ocKZP5IaD1y5M/P/IPuk3lkLOdI6k9Y9dhYi
	LNzOki4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOX-000000005xN-1UlZ;
	Fri, 12 Dec 2025 05:08:45 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOS-000000005vh-0Icp
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 05:08:41 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4eddfb8c7f5so8594861cf.1
        for <barebox@lists.infradead.org>; Thu, 11 Dec 2025 21:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765516119; x=1766120919; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DemXOp5CNooaaYGSA31sKApvpbS4BROLzKgIDsd+gVI=;
        b=kWheqKAuHunuMtIDlvwl6eIyCrzgYc+PfCdP1nQQdpQnEXeLyshsQkfY4NX1SpgTpU
         yYSRrXnGCrYXxocYVClp+Ee560kURK11THOP7rmeFsQ48d2vzu5Ou/eeFEiE/LtoP6Eg
         GxbwAv0mxf2gZXo66nGJ5Xe/OhvCmyG1PMT4GyNAnek1RvNDwyTbSGkzZMyA0Tl0xrMb
         tPtM8I7CN5qVvQlb42VvPV/vtwFCbubKxxRIVe3nImYkbY4Dn8ry1yc3TZXBuYxDG8rG
         pxVczvDAFJQPupkIRyt4Ot57/7mDs/hO+sUrOePuI06ZeneCeM6BEb7UOKLNVI0XsJrt
         /Mew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765516119; x=1766120919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DemXOp5CNooaaYGSA31sKApvpbS4BROLzKgIDsd+gVI=;
        b=E5aN1dwoH/NIfyBDKBvH4bX6QkTq9y3VFWdUJ+4DUmNMdY8O9B5aKxcqptwZVy1Sj2
         UYX9tZHmlUPpwSasoh9KpYgt15zzcbS5+RU2WsTPp+tOu/BcLz+tUNxYaW1O8qlttfyi
         MhKXdrb5UYXMODHQlG4C4cftiTpo7pCrX6erUNNmgWvboUFdTotZpqXo6qnJ4+w5SKbz
         O3BzZJkNzj4nrL0JncJfmRzhKBz/pX/nMuGU+RER3d9Z5nyQW9ZSl71ib6MvsKfp4k5b
         9DLBlui2BjBBaG51xKY5aXwtuQRnH1nmZz5IY+HT3XfJdpQEch3My5buUs4kzQ3KITYc
         Q+HQ==
X-Gm-Message-State: AOJu0Yz6Re2/dH/egsBKFVsTc3JBn48/pEWYOpyiEoTKWIhUohjM/HEv
	cLFfJd0ZY+tD48d4YTnYiFNizbhhJl7utXoV7Xd7FiIOOjxIv5myUNYG1nOuX5ar
X-Gm-Gg: AY/fxX6Nrz0JTkXrqpBhLZ0c7Hy8YLFRrY0SONu7saFFeAmaEjV4RJZrNsilrV7fiYB
	0IGtQKmdDYJ8l0U2G7Tclqs6nx0E+Z2ltwnEL6hIPm1axE4s00QgWl73YaBpI/SV4PeKl724Ti7
	Knm3NPgZhsbI947ChxXr5HVuehiNuIkVml+gFs5nwusj2273fhs6u7pv1wbvWC/suO2V+mlPaKQ
	Rx8FH49tkMbJ7JeRcOsU2kDoOCWSIiojE8PGVoqOH/xNQ9MezD6H0KXGk0dk3gJ1U72SED+CiIj
	/aTnkyxGehzA+KVOA/sa4cl7JC9g7ZdT/qsU5ph3zosmvbn0wvDPNLKLqpYd/iWjhr7tx3Gt//j
	wQv5w51wy5Ol6aTh7Q3r7ETtNuKD2Snxoq7WEfLflYAJ/wRjGGt9wApYmHZNSUZJI7r391ieXau
	I54uqlLvtgdIo=
X-Google-Smtp-Source: AGHT+IGFxM0HeeRCMYSoJnSUr3rVVpTi4zBthTkoQ6wa25Fd2zB5CXkbT6wkGOg51+KMAKQEy6/gtg==
X-Received: by 2002:a05:622a:1f14:b0:4ec:f6ae:d5d9 with SMTP id d75a77b69052e-4f1d05a923bmr10623051cf.39.1765516118745;
        Thu, 11 Dec 2025 21:08:38 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::3a34])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm33486341cf.21.2025.12.11.21.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 21:08:38 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 12 Dec 2025 00:08:23 -0500
Message-ID: <20251212050824.1273837-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251212050824.1273837-1-chalianis1@gmail.com>
References: <20251212050824.1273837-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_210840_136763_92517D47 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] test: arm: add efi v8 test for efi arm64 payload.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 .github/workflows/test-labgrid-pytest.yml |  5 ++++
 test/arm/efi_v8_defconfig.yaml            | 31 +++++++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 test/arm/efi_v8_defconfig.yaml

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index d9822fc206a5..9997cd69ebca 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -27,6 +27,11 @@ jobs:
             lgenv: test/arm/multi_v8_defconfig.yaml
             defconfig: multi_v8_defconfig
             lgargs: --runxfail
+          
+          - ARCH: arm
+            lgenv: 'test/arm/efi_v8_defconfig.yaml'
+            defconfig: efi_v8_defconfig
+            lgargs: --runxfail
 
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
diff --git a/test/arm/efi_v8_defconfig.yaml b/test/arm/efi_v8_defconfig.yaml
new file mode 100644
index 000000000000..21d0feaed8e1
--- /dev/null
+++ b/test/arm/efi_v8_defconfig.yaml
@@ -0,0 +1,31 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-aarch64
+        machine: virt
+        cpu: cortex-a57
+        memory: 1024M
+        kernel: barebox.efi
+        display: qemu-default
+        extra_args: '-L /usr/share/qemu-efi-aarch64 -bios QEMU_EFI.fd'
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+      - testfs
+    devices:
+      fb0: 'Type: primary'
+      fbconsole0: 'Parent: fb0'
+      wdog0: 'Parent: efi-wdt'
+      efivarfs0: 'Driver: efivarfs'
+      efifs0: 'Driver: efifs'
+    runner:
+      kconfig_add:
+        - CONFIG_FRAMEBUFFER_CONSOLE=y
+images:
+  barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
+imports:
+  -  ../strategy.py


