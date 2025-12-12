Delivery-date: Fri, 12 Dec 2025 06:09:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP5-00AYQx-1V
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 06:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP4-0000fC-Sf
	for lore@pengutronix.de; Fri, 12 Dec 2025 06:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UBealpq6IEnAt9ACoJ8djiAmKfgdTf+ft563Ox3FMTE=; b=NilCzKx/GKiEP/TssvnkUKlBnx
	YCpbwxVoeJInq8ichTnB38rlXjGIWQGGU8frnIfxpOPMKlsyMoKhVFUUpTMNfR0AviRR1PqRitI4r
	AhKvxg3P6Bnt1AeY0Iqzp2j6l+Fm/QsU64lLbUoShSbj2f2srzrpVRdOGa5Gnq2C/gQ6E0vvSDaig
	NFGYafAq5nmQ+geJMfrrXha/pU2gHdCLzVfT83TgiOUMsURFwgbFPAtp2vnkyHqPkIUQVduAgZYrB
	3JOMwOUHV0H4lqTZHX/G7QSrN1IlZmjmK3GSkOH8eYHd5IDI/NYNhyDXUAgShJMGnJBt9pUKh1yVE
	qYYZ5l3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOX-000000005y9-2hgi;
	Fri, 12 Dec 2025 05:08:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOT-000000005wM-1pFr
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 05:08:44 +0000
Received: by mail-qt1-x842.google.com with SMTP id d75a77b69052e-4ee1e18fb37so8967941cf.0
        for <barebox@lists.infradead.org>; Thu, 11 Dec 2025 21:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765516120; x=1766120920; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBealpq6IEnAt9ACoJ8djiAmKfgdTf+ft563Ox3FMTE=;
        b=fIEiBk/fcZkVsLD3xGL+/pBTKclrly8vTY/91tADRax+5wbo7x9VOJKb7DiCtqAkFP
         7N+HgmQAHWDRL695I3X8pHRk/KV7c5g1rHucAdPbYsomTV6iGn3CoI9NZPZoKjZDcp4w
         4Jy3rl6jUGVTRinF8inTnmTR7Njuaw5Apor8TAEUeVjxKgwq85dzL8awhgS4c+ant/eg
         /UNsmHhYnTZ3FHFW4D3blTIF98UuagN2Szg96M0UJVuqRws9u6V8vpYBGNmnIiKqbwJ6
         lUwsKlpXU+1myokv6OcjMEaaOSyx1vJAx4wuaNVV+vAo8knxjLSnOm/rha9PtFTWQv/q
         6ybQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765516120; x=1766120920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UBealpq6IEnAt9ACoJ8djiAmKfgdTf+ft563Ox3FMTE=;
        b=FsXspCUSPhI3QRvtxcHOlmxEBN7Wso7w6DygQWZHG/072zbhXXn2vHe0PsRi6He0Wx
         Gq6hXxS6xTI0h4LP1JV3d71tdWXpQPYSP5zL0cQlFY2u1sgg22H4KnuR305PerIsJEu6
         38VoBPmvqjcHX7IMP2CNENHztRVidAgNNtHuFhVV0sffn85nGkNRxpxUaeR+FABg47OA
         QyAEBoju3TstcT775E00gnrBdzQtkxFSJDAKYwGtXgdrgOnmHussgRec1u96g42b4IVN
         qfK4pDL1Zc9Vd2l+XS6JyE/mh5Rg4RAmYX7lUuLyKVyEREMtedgO23YzM383mphOo7NE
         AkHg==
X-Gm-Message-State: AOJu0Yw6dWk675XM0O5RBfodQPvPn4Cd3YVpd2xsMDnIDJ5ktt34XSn+
	799GpLll5EuG7ECPdHoLjWLQIZQ75906MXi5UQbu0raMAfQR/E2D2nP3Xjg2BAIRZ0Y=
X-Gm-Gg: AY/fxX60Qy/Gj1qf1t7xCZNH5ECKhQWlnGzh7yfkdOg5IHCMCUegjXKMLkGLvya2Df6
	QDn0ZWaHdGuHQUEtRFIWO97vB2OY4wiiCV9ST6sPNsh7gA4dwRcvyWuJ7n9iOjxMhg5qAzh4MDy
	hpAn8kygyemqpwIBxhwqVsz7TzNREGXtPBfOJTcNuhQ6UvnuMyLLy/r5FmVT/j1XL6dK08hCaGi
	VcwY/NNl9+rSvpSEqaGT69rPdkLMQAk/pODBw0fJ3Vxs3abwWOFklHd2Dfc0DoUGO16EZgVQCeE
	YBXVixoJ0i4wfs/ysk+tCUynTHwGTPC1uoDD3nKqp0e9CPDYY9D0S2C7E6Aq+bWxejbKzPFfspS
	YRRI+O+a0/BlAe/+9QChVwinY6crsJtVTY6F+yxr5yfeNvtTB/fpnhr8NwgNRtNXbfMhXOCF20H
	PwQ1P1zNahWnA3Ps6dawQYmg==
X-Google-Smtp-Source: AGHT+IG9RYJSMoile9ZETvm6/Jfq5xWgChSDEQWZ5XzTP+hWGBhQiI98b54zEuOBOXR6ksnnx+GAHg==
X-Received: by 2002:a05:622a:4893:b0:4ee:dad:27a2 with SMTP id d75a77b69052e-4f1d05af386mr10691841cf.51.1765516120015;
        Thu, 11 Dec 2025 21:08:40 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::3a34])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm33486341cf.21.2025.12.11.21.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 21:08:39 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 12 Dec 2025 00:08:24 -0500
Message-ID: <20251212050824.1273837-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251212050824.1273837-1-chalianis1@gmail.com>
References: <20251212050824.1273837-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_210841_481851_2DF2F547 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [PATCH v2 5/5] doc: efi: add efi armv8 documentaion.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

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
 


