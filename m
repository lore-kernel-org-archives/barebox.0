Delivery-date: Tue, 07 Oct 2025 03:00:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4O-0054an-1D
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4N-000425-Mj
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O5PfSwkIhHUS/B7CzTu92SMaqxm78hrq/dhjgX6BwLA=; b=g1F8/KVBefTnmoGkeyT5sFr/TC
	oZl1eyd2OnWZB4P2HvUKKov4s+g/ugDIxmNN82YAM6OcN5QaxnADTc21ScOEfFfzL3rR4L2rjMBdy
	3IFFQxEFYLPeJY7dOEAd/+b+yxjVbbrAUJzb00dIihKGaWndxARnB1H0s5On3n2895lZtmDBi8345
	C4r3hsimTv7QCjh+ObFf8eTq9uL9HR0tCywO0g98GU7l50f/qtm9EbKys8mAJ6KoSwkP6LrRvSfi7
	nIV7ZRPflk4V9zRLV/n4DS5wZGEjA8AILLDxYms5rIQcq2us4OjQYUtgdQzvZnqpUgh3KV5qOTKC9
	PNpmNVWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3f-000000014wD-0vcm;
	Tue, 07 Oct 2025 01:00:03 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3c-000000014v7-326W
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:01 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4df60ea79d1so60676231cf.2
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798799; x=1760403599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O5PfSwkIhHUS/B7CzTu92SMaqxm78hrq/dhjgX6BwLA=;
        b=ct0wFZf28pz9Eq3Jx3QHiAgk0+hv/Eo3KAbKR1aitaOTjC5qaM2u5quqgR8LC7VcxQ
         KtmyIwCbtMGd/wM4mJHBv4h2aByken8MN6WIBj2UmynF70w5N4Mh8bUdd9HrEaY4U2UL
         cAn6GsPxflSIC5kS+NwP+hADHHUCKmNMhiGQn5G2FVcVGas1DIeXsRjQj2KAvV7S9Ut1
         sHDauhIGBw0V9Ye2CrNXkFrCpATPfKDsTCU98zfXHKM+r2VWAhqvtOCJOYSfWn9RuIMn
         lJ+u+7ckoTKurf9VIs7IC9+uJ+4LNIGh/uHGShVFTQ8oW5tYDrm4uxr2kyBa2Ht0Sf7/
         Hqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798799; x=1760403599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O5PfSwkIhHUS/B7CzTu92SMaqxm78hrq/dhjgX6BwLA=;
        b=Ao703qPzJakvJBssUwAO0CO6BHR98f/tSjgfSO5cD6TuhDdVe8qjFt+VG9cei4Z4uA
         Lj14LJJh2nT8H0d6EmEb1lDxz81uRVb5myBSCcUSJbd3msQURoxte5xEh0i8K6T/HWBX
         pKROn+ArMQLTIrpv9Ta+mLM5vYfeEnEB9zwXH4Txv1j5/OLfa0h6smUCXFLXK3GQH2nL
         AiL5qdGkXA2HJCkyI8/4yk6kwKzZKkDF81d71L9MxswooglihpKmSzr+IEe25mMIqTIb
         q2p5+T+QF9j3JVYkiRTD3TUBvEpF0VoG3uOT1FiwUK0PclOhLZj/ji74VatgM4+gLwFj
         sBpQ==
X-Gm-Message-State: AOJu0YyDyJyRF7Mg17MqQVW93icPWHp+gZQ1+5tNBrY8xWb60Typk64X
	n38jUsc8ivZJ9hnNrNdmffw0UnXdSVSwfJN57LH+7q3Oz3MbFzDZtKvZ
X-Gm-Gg: ASbGncttnBdIh7XfFMvyEZj4FY7mvwFFukX770hwZWko2IO4Bf2pTicAKmtLTMg1Scd
	574zyYrq/1+RFxVD0Q0WdAYJl6bLsZWkiDMguv7cXC4o33IhHCmzmVcBOHOID1G1//mWOj+Qxmq
	ufgD4/wotxZmVUrhbZd1IMbKEWfHLMV2lfiHAD6l5TZuZPigireD+kuvzbXkYSRdnYN/SyI+2vY
	4zqpeK9x3HPf0mKjqk6zDolNXnn9jzrFbIRMVZ9p8hgH+ga/wNb1sQaGN24pbMQu+i25/7WzJVq
	uNHdfBrEAJQ06VyfwkPY+7wJQw9fa5TZYqJRZjKVlnRPJMKNYozmADtXAI0WEjrXj5TEXnGSTqG
	VjEc0MmWatY8p31v1P2/hDi9mOO0OvQYo58TqW7HbIdROQBtX3dsHCqmjVeXD4omy
X-Google-Smtp-Source: AGHT+IGN07yi6pnDQTDyvxrOHI+3iIpsT+W3OaUZyDKGG88DOn+F1pTPuPPdgppyVjLxLVzmAWAJqQ==
X-Received: by 2002:ac8:5f96:0:b0:4e5:7627:1aaf with SMTP id d75a77b69052e-4e576ae611cmr188373611cf.45.1759798799378;
        Mon, 06 Oct 2025 17:59:59 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.17.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 17:59:58 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 20:59:46 -0400
Message-Id: <20251007005955.1427990-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180000_764836_FA0E3E62 
X-CRM114-Status: GOOD (  12.42  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 01/10] efi: payload: split out payload Kconfig symbols
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



