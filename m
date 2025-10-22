Delivery-date: Wed, 22 Oct 2025 07:25:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBRM7-00AV6Z-24
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 07:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBRM7-0001lO-1t
	for lore@pengutronix.de; Wed, 22 Oct 2025 07:25:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WiiMDr+Tmkkn/Iqv7ICnc/5EyTyOBRmz716+8826jbE=; b=CK1PUNnGqYqflNKt/REOqnoIwk
	PGC23OP/xgW3Hqe2k5kkcAC4UpO4HGUMOy/b/C38cFulx7OZvz8VjFxL7oxFI75VdKG1jlOIPVCAD
	CP9/XNSkK5XC7X1Y6xXHQr5/xe5LQsBrD6Sjda0/D4Eu2Oq84qI3SZS9j1MSwz3vhAnF3U6b12sR8
	voiw4qNme924WlaGRuIXhD3zOJvU8bpNa97W6+Lxjp5G9V8/6Xw/X5zNcci2yMD9B99W/9EIuXw2T
	DdSRGpH3rp0Y+ESG7V8AJgpXT963S8Ulv/Hi+YJW755Bi72G0C29En2GjBus9q0qQ5881CcUBQo6a
	X7HLikZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBRLa-00000001Wic-3Ohl;
	Wed, 22 Oct 2025 05:25:18 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBRLX-00000001Whg-1Wgh
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 05:25:16 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-88f27b67744so865332285a.0
        for <barebox@lists.infradead.org>; Tue, 21 Oct 2025 22:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761110714; x=1761715514; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WiiMDr+Tmkkn/Iqv7ICnc/5EyTyOBRmz716+8826jbE=;
        b=DM8tyAKMOaAEpPlhKXPty8/2ktILPnRhQiq2Sdx/TWwPBXkRIJrm/7YtgV1F/vx9Dm
         6WJZExfxA4wPIIJJTlypGrYqecU0AmecBSuVU7UFv2bYAl2RoYUCCYBMG3ZoOysKmYoo
         1TdbS+EKiFJRWWwa8Sxkgns/IspLQDfO0JEeoexx6QJHChkf4v5T9n1EvcyEqIAtTwpM
         EoO5fwPNim2QhHUChUmA5WAGUr/nK965pKOSiCcYiLrYzZ5AVrd2jWx7lcc2WN09cYe1
         uGG4ZypxWReP3myOLrZjgoZeEYF/FPTlJLEY4u9VwzBzYj+q7ozIRuJVBV342E7E4JoH
         1Kzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761110714; x=1761715514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WiiMDr+Tmkkn/Iqv7ICnc/5EyTyOBRmz716+8826jbE=;
        b=RLjOa2T9dr6h/W3C4XLSLXo8QSbb1zNyxoGdTvmSfd91T6jANhOTrEgDyACpmAzOSB
         qiml6TykxmWV/IWP/iisd3rgQ4PNbKDwE/73GEYpG2SN+bIcou1OVnj3+TM6noGAsuw8
         vyZZzlN0Qrk9Dwd239wXBugpzzYHt/bvMOFuQs/GQR8HDMJddnW6FJ4MvdEAM/branFC
         xeNY2YL0xfoGe+kFKONjnSe6XzedtnPf/eZAQGhtbWcentGe4lusyUXamf/iqq4w8/Ok
         aawp/MkpIvsKf5Kso4FnC+cv0LBR/oUWawhQJozeq5Q8Mb+uoKixnlKI+v7I3LA8M+O8
         0hLg==
X-Gm-Message-State: AOJu0Ywi8q9GRqoUBJBtGpsFkhv3OdPld1eQrb6Sq49X1vnCafl6Tt0D
	JQxiID0el4bn6WkKwUPdEopLy7d0q32vaJ7CwIrQbt7wlzKV5VZxVso4
X-Gm-Gg: ASbGnctLbRSrFn3c+ZcwZnH1xjGdRf8PqFa0DuRsnvc/5anruYcFfrgnWnCaoE9VFy8
	ZzhyhIZO3OXzkkRnZqGgbre0ORdK7To1Z3wfFleSQcSApukADX6mhQV2RRsjXcF9xyuHbI5qVdm
	z7CZ5U2PWnFJ3BvybP5Xq0Dic+azohhtRixXLBjRhOrDZfWn2OzU9rQQvAcZl7nJfDRqUKq3zhq
	t9g6TUVjE1KMfPuWfUx/ISQnc+ycP5WYBpqECqqT6YeMQSTku+cxT9KLNEjMIzfKq9itfok/mqM
	PAWDyabNxbvuMuTuKraalFO4u/0YGOraQpp8VTzQYgbSMr1ol5v9p2kj9GZn9IZe9WsG06Kd0n0
	lDpDPOdYENHc8LI/ja0wJUMjm8vTTQxvDtkQpzmNB/TdOyK/15i1l4ZcTkgCWkzKHQFEX3nxra6
	YX2WdHtHgYD1yRaK8oJw==
X-Google-Smtp-Source: AGHT+IHBZJf7U6PvYFqX71+kr3brLejYpVu+o1/S8XN4fI+oziXLFA8WQFoagiL3FiQwq/2pp9OkoQ==
X-Received: by 2002:a05:620a:1aa2:b0:865:916b:2751 with SMTP id af79cd13be357-8906dfde1e3mr2036215785a.14.1761110714122;
        Tue, 21 Oct 2025 22:25:14 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:3b30:d6e6:3dc0:29f0])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cc8d5edasm912895285a.7.2025.10.21.22.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 22:25:13 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 22 Oct 2025 01:25:07 -0400
Message-Id: <20251022052508.1368520-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251022052508.1368520-1-chalianis1@gmail.com>
References: <20251022052508.1368520-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_222515_801070_EE79F59D 
X-CRM114-Status: GOOD (  11.07  )
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
Subject: [PATCH 2/3] test: arm: add efi v8 test for efi arm64 payload.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add efi armv8 payload labgrid yaml and add it in the barebox ci.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 .github/workflows/test-labgrid-pytest.yml |  5 ++++
 test/arm/efi_v8_defconfig.yaml            | 31 +++++++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 test/arm/efi_v8_defconfig.yaml

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index ccf8ae172cef..f364ed1843d9 100644
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
-- 
2.34.1



