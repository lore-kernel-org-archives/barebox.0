Delivery-date: Wed, 22 Oct 2025 07:25:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBRM9-00AV76-0T
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 07:25:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBRM8-0001m1-IO
	for lore@pengutronix.de; Wed, 22 Oct 2025 07:25:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7YjNajHlcDTD/oYdOeNY3ArS9vazpWyuYp8Owedh9oM=; b=ZjCaY0V3tBoBodCu3fbmm7LL7k
	D2+gW71Ws35ElEA1LOuOPbwaY4jFZ8eLnb+PVjuuO3kgE6p0njdaoRiLNjEpu/ZZNuJfkhdTKlmGy
	Xcssx+wVxMhWSRB2EL07r5KNOsj1oFo3pCQh6Vjvg3LpyoRexMf+eELIqEnVcwsxLGohsRaq4RiXW
	qLRXopRihp67IzRL2ow7EhHLd3sMp/VCDsL7RcDOEdY8DzPa7CISTue7gflG6Ouy09skZaYg7Vj6D
	9xdki3rK/K76EkvyFZ4YxCnyDWmmkFNAl/NjoNmQ3jPcUkv/ghrsOKFn//cMCCz+Pm0Ajd9KnkGBk
	1hJUF2zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBRLd-00000001Wil-0VI3;
	Wed, 22 Oct 2025 05:25:21 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBRLY-00000001Wi4-2SN5
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 05:25:18 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-8907af237ceso754234185a.3
        for <barebox@lists.infradead.org>; Tue, 21 Oct 2025 22:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761110715; x=1761715515; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7YjNajHlcDTD/oYdOeNY3ArS9vazpWyuYp8Owedh9oM=;
        b=RewgZMvGRYHOBOirjKEzQDIGi0Bu2yRvAkM+Z6YXb06PftzHYvYEDpET3xKNU3ziGJ
         mH2ZR+BYV2Dc2MJ7Y9KOSf7x4fxwMNEEdnCOPi6TIq6TwuBsLOMvVZQjzT2hxdOSXiky
         oALhNQqdnV86CsBTAiZd3/N5GP23JJ04tk7gOTAplSsiwWfXBzKuHbvfixcnzzyb51Ur
         HXUiJZIbYVPvKgcER8qim8D+ZvAH1lQD7eKOAYd9dYZoIGfPwPX0TuxWipMmoQxNVgRw
         n12ZAw02bd9TZ/FlNgCCVL+ydIalUrs0wIKaUx/X+glvEVIUWdNaByCeLRgzVg+FfYji
         ZT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761110715; x=1761715515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7YjNajHlcDTD/oYdOeNY3ArS9vazpWyuYp8Owedh9oM=;
        b=K1DT2qAP0ACnBGgpxR3GDlYaye/cbYYnTN9TcBmWW70aZv7f9C9WKXGSVopotgTJKz
         X3dxUYZWTTROcX7HU7eYnsHCVUIVgNBhK2FVzNyqDoUiQ/gVQmPHm8AlYTGFYrfs0vP3
         lKwqmRDZoPES/fkyx0BUY2/SoQWC4irchyfkrhrrHZu4PaTv5hbUuUQgIVLPp8q1PEtu
         ivJsXkToK/0VyOkGtlDBKUolBvQouhs9AOW/7FnI+AYG02pbDEsp2N44BW1se28pBWSO
         gRBYe9lXPnREvNqMnRHD7mnaE1I66D+x2mTdC+GT0imW7N4AoH7a950CM8rAu48lhHK1
         h6Yw==
X-Gm-Message-State: AOJu0Yw5dAAMNp2ghy9oegN7ExCr2Wp7X9LwPNVuiFRuUDDyhKvFtMNo
	vg+l9JQc4gEaE/JBQkXsMJT7ftrrJg12TJE0tP/HREoNBjwbff1/G4sf
X-Gm-Gg: ASbGncumLPPpKpwcy/NuE5eQZa104ZV91cWn22On+HvWtNk7SM6JnEEBLaRoM+vHzvP
	qGuTygxtQzQfw3ulssP/SY0YMRISScZMg/C19b3ExqMl/cd3PezdeBK8/sTbfYLfA0hpCOBm5F9
	8Adj4k5W8bUbVieDddoFz6WdJSc2fjdTZ2WdnDui7qNI841Sw//FjIC3JNLtyyV/Q9q7Dymq1XT
	NtGMzJa6FPhIkP8HiDfjDqC27kCh1zBPLi20BQd8T8u7ggZyay8LBrtQ1YjpE+SDQpFHYb3YuIC
	UxkDm5GVJxsyNLA0I9svdM3EaXPHjVE0uqPks6aODW/Eacns6+ZJ54wWgipltHutFE533L+DQel
	PE/QzulRnS3mZYxS/Y5MDs9ATp4myHG/47FTP59s/tgH1hLOTDUnEfuZ55BQVTSEijIvVFJ1E1s
	2lIpQiBdFCZHHz9wTvhu+bP2XnOrrW
X-Google-Smtp-Source: AGHT+IGYtcPCkyMU2VP93/6W0RuySnCPuarw0MpQx61x/yUeNGFktWDyLuWqGii5hwls6+ciY5uH+g==
X-Received: by 2002:a05:620a:2688:b0:85f:d78c:579f with SMTP id af79cd13be357-890715aef86mr2095284585a.80.1761110715382;
        Tue, 21 Oct 2025 22:25:15 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:3b30:d6e6:3dc0:29f0])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cc8d5edasm912895285a.7.2025.10.21.22.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 22:25:14 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 22 Oct 2025 01:25:08 -0400
Message-Id: <20251022052508.1368520-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251022052508.1368520-1-chalianis1@gmail.com>
References: <20251022052508.1368520-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_222516_954943_868EC470 
X-CRM114-Status: GOOD (  13.03  )
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
Subject: [PATCH 3/3] doc: efi: add efi armv8 payload documentation.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add how to compile armv8 efi payload and how to run it with qemu

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 Documentation/boards/efi.rst | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 869e5e88172f..a3a06b987f97 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -23,7 +23,7 @@ x86_64 binary currently is tested.
 Building barebox for EFI
 ------------------------
 
-Use the following to build barebox for EFI:
+Use the following to build barebox for EFI to target x86 machine:
 
 .. code-block:: sh
 
@@ -31,6 +31,14 @@ Use the following to build barebox for EFI:
   make efi_defconfig
   make
 
+Use the following to build barebox for EFI to target armv8 machine:
+
+.. code-block:: sh
+
+  export ARCH=arm
+  make efi_v8_defconfig
+  make
+
 The resulting EFI image is ``barebox.efi`` (or the barebox-flash-image link).
 
 Running barebox on EFI systems
@@ -39,8 +47,9 @@ Running barebox on EFI systems
 The simplest way to run barebox on a USB memory stick. (U)EFI only supports
 FAT filesystems, so make sure you either have a FAT16 or FAT32 filesystem on
 the memory stick. Put ``barebox.efi`` into the ``EFI/BOOT/`` directory and
-name it ``BOOTx64.EFI`` on 64bit architectures and ``BOOTIA32.EFI`` on 32bit
-architectures. Switching to USB boot in the BIOS should then be enough to
+name it, for x86 ``BOOTx64.EFI`` or ``BOOTIA32.EFI`` on 64bit or 32bit
+architectures recpectivly, for armv8 ``BOOTAA64.EFI``.
+Switching to USB boot in the BIOS should then be enough to
 start barebox via USB. Some BIOSes allow to specify a path to a binary to
 be executed, others have a "start UEFI shell" entry which executes
 EFI/Shellx64.efi on the :term:`ESP`. This can be a barebox binary as well.
@@ -87,9 +96,13 @@ necessary to make a copy first.
 To start it create a USB memory stick like above and execute:
 
 .. code-block:: sh
-
+
+  # On x86
   qemu-system-x86_64 -pflash OVMF.fd -nographic /dev/sdx
 
+  # On armv8
+  qemu-system-aarch64 -L /usr/share/qemu-efi-aarch64 -bios QEMU_EFI.fd -nographic /dev/sdx
+
 A plain VFAT image will work aswell, but in this case the UEFI BIOS won't
 recognize it as ESP and ``/boot`` won't be mounted.
 
-- 
2.34.1



