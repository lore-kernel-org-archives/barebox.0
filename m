Delivery-date: Mon, 06 Oct 2025 06:16:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdx-004ls3-2d
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdx-0002t6-7A
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O5PfSwkIhHUS/B7CzTu92SMaqxm78hrq/dhjgX6BwLA=; b=yCNcfjo3ICG83Hot5eYXJ5Uw4N
	C8jMDkXHPV924ZpwPXqED+1UWrk0GU+P5cERNU2DgxUQBRFnr7QE7UILHNwbnh+NKD1ruNrqpT+MJ
	Vq4C9ksuWtPTyQEQoh/mnlxODdIDnhpAKKLN+/5HpQh6ReJKy0FZusDXJ227fy0mUGPEHnzgosWA3
	AlurVtIblYfkDjdjk4dCEHOnrh1rJ540CVrwssxOsBZIbcXP+eh5lVCns210x9gZa0Brdb74oIwG4
	mkz9xW4kX2dvD/n882r7v/e4ccyjZVJOzHQdIHK58IDYr/XeehWvLzH2EN2pXjS345IN6nU3CnwKu
	CrkZSj/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cd7-0000000GuGN-1XoD;
	Mon, 06 Oct 2025 04:15:21 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cd5-0000000GuFa-3Aw7
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:20 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-4e6d9573c2aso962131cf.3
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724118; x=1760328918; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O5PfSwkIhHUS/B7CzTu92SMaqxm78hrq/dhjgX6BwLA=;
        b=RoE7pTqvNLjtxjMR5StsPg+D7qz3bF0AZNuBEeoK/MYnMpCR7oPPZsda+zg5tAVA/m
         ZzHRk+WGJ2EyIc6NB9h+TfSYOutc9BEKVmPBiu7o3151F6zKhYnRVt4VX/hMZASo50AZ
         OdTvNY/TDV9jSCNl2DCUbypyKyLElgdAgWLGlY9ZB2ICEP5EoOmpjqSPTexZfd4oWBrb
         YMauCmBtKVc1JPXMRKFRd7IQFMiWPseQVece1Lk1kKUBj0HuaZwvDmJT2zwy7zlF34Rc
         sWn/rKDJ3eKPLc3Ypy1JwNPz6RApjsSjx4Gp9TGYJF+VbQnj2TudSvH6itAJ4Y8lyImd
         dxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724118; x=1760328918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O5PfSwkIhHUS/B7CzTu92SMaqxm78hrq/dhjgX6BwLA=;
        b=g5MecS5QZD56HwevyaGigCy5nQayeRZFvz90Ho1SRIsNQeQlj4Y0US62hpEk462Pj8
         pPCeZ7u1dgMO4ALZZaxjCRNDgh538bdPiyyVH+vW+dAuxNnbCfHiNZ0LOuDchepxRryU
         AI8O7mnUgwZpPXis2qY/IQIibe1qR8bjnj5rXztd5qpCyXJiMPch25KZNTMmcuvfMFhp
         hPa5e973Wf+S9aMHkAjAuvVR5VP2qNvGGv70YipUkYoT+cRG1dSsQdUNqMPnjuFbTzgf
         tZ3RY7tfDpobhh88sFhFJAAsc10or5doOna7u3eguvUFcZ16tOXtywVTaMGpXq+3YZDX
         T2AA==
X-Gm-Message-State: AOJu0YxmIs7f306qc9knZUAvMbFsJBvzdCB/MgJOACYwvg0mRvInHgXg
	8JXdKJ0wXxKIrqgiI2QfTX8U9KAdhu+WVAiGNQ83xhX1PhFeOCUJaA2b
X-Gm-Gg: ASbGncs9RLvSNlzd3ad35abeGAsWFThkFI+cWsLl2V2zHqatEZA+RmwYHaCiRDjliLL
	CjdcqgNhvguF1p7vMHKV6j8T99ZLO/qAsTGXd3/Yrlr4xSzPDVTdqj6dLBfVc1xcCdhewxvicfp
	IeFrIZoWtKme9MYWu5dCk4E5vA3Qf9BTYKJv8GXKhBRrQjWCsa6kl+d/ybAKM4yq1RadB4YhYgy
	56CSJZHyphgDpGTW9jDrOLVplP97eSYa+04cOJxE5+3hVx9s+EyJKazsjHYvitQYeLYZtxBG88D
	bH3rGXtsyN2/nCJF5p/V7koaEH6tFgi582ylPJgKMK2TeqHyrJHnDnqfBpRNj81VHl9TA6LG1Vw
	Z7GQJVals/iDlz+zhtSs4VHvkro+m3WQr9SEbWaOYGsrL0WvfpXb1rtXTH+Xar7hGQmU48A8BvH
	A=
X-Google-Smtp-Source: AGHT+IFlK9De34kOmh3uvH8+uO0myhTt9Ley0KwkzjhD+B/iHIFpZ66hnq7vYS52UQDok/7zQ/9mhg==
X-Received: by 2002:a05:622a:513:b0:4b7:a2d0:6a25 with SMTP id d75a77b69052e-4e576aa04ccmr141424951cf.33.1759724118537;
        Sun, 05 Oct 2025 21:15:18 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:17 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 00:15:03 -0400
Message-Id: <20251006041512.1360284-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211519_804156_4EA187D8 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/11] efi: payload: split out payload Kconfig symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

We are already keeping different directories for payload and common EFI
support. In preparation for adding more payload-specific config options,
move the existing ones into their own Kconfig file.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig         | 20 +-------------------
 efi/payload/Kconfig | 27 +++++++++++++++++++++++++++
 2 files changed, 28 insertions(+), 19 deletions(-)
 create mode 100644 efi/payload/Kconfig

diff --git a/efi/Kconfig b/efi/Kconfig
index 84f670fd23d3..35850b20ef50 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -2,21 +2,7 @@
 
 menu "EFI (Extensible Firmware Interface) Support"
 
-config HAVE_EFI_PAYLOAD
-	bool
-
-config EFI_PAYLOAD
-	bool "Build as EFI payload" if COMPILE_TEST
-	depends on HAVE_EFI_PAYLOAD
-	select PBL_FULLY_PIC if ARM64
-	select EFI
-	select EFI_GUID
-	select EFI_DEVICEPATH
-	select PRINTF_UUID
-	select PRINTF_WCHAR
-	select BLOCK
-	select PARTITION_DISK
-	select HW_HAS_PCI
+source "efi/payload/Kconfig"
 
 config EFI
 	bool
@@ -26,10 +12,6 @@ config HAVE_EFI_STUB
 
 if EFI
 
-config EFI_STUB
-	def_bool EFI_PAYLOAD
-	depends on HAVE_EFI_STUB
-
 config EFI_GUID
 	bool
 	help
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
new file mode 100644
index 000000000000..9263d59de94a
--- /dev/null
+++ b/efi/payload/Kconfig
@@ -0,0 +1,27 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config HAVE_EFI_PAYLOAD
+	bool
+
+config EFI_PAYLOAD
+	bool "Build as EFI payload" if COMPILE_TEST
+	depends on HAVE_EFI_PAYLOAD
+	select PBL_FULLY_PIC if ARM64
+	select EFI
+	select EFI_GUID
+	select EFI_DEVICEPATH
+	select PRINTF_UUID
+	select PRINTF_WCHAR
+	select BLOCK
+	select PARTITION_DISK
+	select HW_HAS_PCI
+
+config HAVE_EFI_STUB
+	bool
+
+if EFI_PAYLOAD
+
+config EFI_STUB
+	def_bool HAVE_EFI_STUB
+
+endif
-- 
2.34.1



