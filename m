Delivery-date: Thu, 18 Sep 2025 09:45:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L2-004NzS-2I
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L1-0001nq-20
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xxschE5JL/vQ1V/SgbnD+PZq5QCTueDLUXrxTA4sAtA=; b=ab9r8cbKKe+20gZaC/Zqfbrk9D
	AGHGYI2fQ03CMXwsnIDJaWAH6/uH5HmRtLQq9iCmfDvblvch5Nty2ymE5KMJd1YV0j0z9qh5nvnjW
	a0BN1047z7ZcfPQeoGRhb1fEIJYsWCkhduMU/YnXQnHg26aI9oAcnudZgMVgyOKU2of4qi/SNdL1j
	c6ogHOw85mV8YCpIC912hWl23zJr/mDmzaVTrOge1okvJM2SK2TeFc6lkkh63PIBjF6ziXYONDH2O
	e2t9wVG2PHczCj8Luh3hPHzj6JGQmOGfXI5ljn8YVaEvodCL+IPbERMXdVqQI0W8NaGkId+y1bQnB
	e4yuAOug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KQ-0000000GaSw-2wkC;
	Thu, 18 Sep 2025 07:45:18 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KL-0000000GaN3-33pQ
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:15 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b0e7bc49263so105593066b.1
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181512; x=1758786312; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxschE5JL/vQ1V/SgbnD+PZq5QCTueDLUXrxTA4sAtA=;
        b=wi7TMfjgd1dWYkzH8kWD8ZotKk/HC5uze3PnMNKX6lJYwiycWp1gtjIzldt3gjEhFU
         Gam4d5gF1sAyS+SPeR3dXtrmv5ZwFxYQF0dcwfspMEpRWkWJ7cqKSD4xO191JGepOiJ0
         Vs4lj0haqtKCBvI3hvAfZIA9iCmomI0QQXew2F3OjUtjE57jO0Q2FH2r2fCJWQpxe3mG
         q9jFy09Nu0xD2tdgi4IpuyAWIPcXdq9pkB7dPJrGZ81Q22Bzzk/BNMy9VX+2iuRLHSu/
         nJPb7eOwdmof9a64GX/maeAcloe3dZcpC2fT8IjgQPb6gIJiijuGbUbYVOnMIy+oadlO
         yOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181512; x=1758786312;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xxschE5JL/vQ1V/SgbnD+PZq5QCTueDLUXrxTA4sAtA=;
        b=EDiJv4eyP114btXOVfm9Vy6L9N9P4yiXKpKn6rdb2KGYlwMIsGH4ZagD+MKLkSGmvg
         rt20jCIRzOHJoq7Z1dUi2xPBKNrzZDGHtJD/4MZHdkCKf1tXtBz1l+tqA94TSlzYGv6M
         HoaVuLZyNACUnxusVpiIdVg9czjurm73YbFm8G3BI9vGwZuWmG54lr1j7Ey9mlsCiBbC
         dS0WIX8STv3I3wJMs7RUnZG0IucBHDzTxUSg1yrUWSgByKZlgiDgTuOjN2495VarJ5XL
         dDFRuDQdy6I/SFPx7/WFUHim7KOs0LixI1TVqF7aadVRY/KcnjwzOqmAgt370h2liMoC
         hlpQ==
X-Gm-Message-State: AOJu0YwhgGyYebpElCIx7jQY3a9q0QlhGvUc5yno+Sc3udbgu2wA/Sct
	LzxKkV6/qE5t0w/REOFaNK5wvpUSgGyK7NW67QVQQMrGsKcS/Rrbc6db0PxRyyS91CyRwe96k00
	SM57g
X-Gm-Gg: ASbGncv7NE/vt+4lMKOTf+0+Fx5fsYVdS7+Hg/59nAAMA+GQwZI+fdIuxKnRflxPneM
	/R+3pSh6FSeQwR7EcENdyECr1APdhxFtkeW0xqmhO63uSEMx3SCuD/wRI6ThMIUCsm+VKhdo9lE
	SbYCSm1sOcJMUTTWg2EeN2Dy9qSyVqz39p+yFMaQXE38AcdLqQmLgtZMrslDA+aFPJPFl4CX1OF
	5dnAgVWFaUSFP4B6W3EfZs5pVANpUh1sYf1KMnokOIVMLwsuLiKdpmgrVnd/m1+pADrL8YqV/Te
	XmmFEEcwkRwAluUWMMAzJKt6KLNwaVURwcVMHMzGhwBA1JQJEKIaSb6WN6tfIsZdkcT7ThZE2pY
	rN9mETY/AhFiOeUfRvSwwbTGkT/Z3yhcIm6x0jEXq0F6o2dYuZNtlmRkTKQAfzjhu1gjNujzsNA
	brZOBbEk2k
X-Google-Smtp-Source: AGHT+IF08VrQyPW9AsetY5n8M98O/k9vIhyZ0stbpIbpIH577WGd05n5mXKkSSsFzrUse9oChEzK3Q==
X-Received: by 2002:a17:906:7954:b0:afd:d94b:830d with SMTP id a640c23a62f3a-b1bc320c8b3mr492522866b.62.1758181511601;
        Thu, 18 Sep 2025 00:45:11 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.11
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:11 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:16 +0200
Message-ID: <20250918074455.891780-7-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004513_837181_3BBB92AA 
X-CRM114-Status: GOOD (  12.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/11] ci: pytest: Open up testfs to more consumers than the FIT test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With upcoming dm-verity tests, we want to store more test artifacts
than the FIT image in the testfs.

Since the dm tests might run on systems for which no ITS is available
to build an FIT from, make FIT generation conditional on the ITS being
available. This allows us to enable the testfs feature on all matrix
cells that support 9p over virtio.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 scripts/generate_testfs.sh                  | 20 ++++++++++++--------
 test/py/test_fit.py                         |  4 +++-
 test/riscv/qemu-virt64@rv64i_defconfig.yaml |  1 +
 test/riscv/qemu@virt32_defconfig.yaml       |  1 +
 4 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
index c5d24f7e1a..3c200bd401 100755
--- a/scripts/generate_testfs.sh
+++ b/scripts/generate_testfs.sh
@@ -13,14 +13,18 @@ fi
 rm -rf "${KBUILD_OUTPUT}/testfs/"
 mkdir -p ${KBUILD_OUTPUT}/testfs
 
-cat ${KBUILD_OUTPUT}/images/barebox-dt-2nd.img | \
-  ${KGZIP} -n -f -9 >${KBUILD_OUTPUT}/barebox-dt-2nd.img.gz
+generate_fit()
+{
+    cat ${KBUILD_OUTPUT}/images/barebox-dt-2nd.img | \
+	${KGZIP} -n -f -9 >${KBUILD_OUTPUT}/barebox-dt-2nd.img.gz
 
-cp .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ${KBUILD_OUTPUT}/
+    cp .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ${KBUILD_OUTPUT}/
 
-find COPYING LICENSES/ | cpio -o -H newc | ${KGZIP} \
-  > ${KBUILD_OUTPUT}/ramdisk.cpio.gz
+    find COPYING LICENSES/ | cpio -o -H newc | ${KGZIP} \
+						   > ${KBUILD_OUTPUT}/ramdisk.cpio.gz
 
-${MKIMAGE} -G $PWD/test/self/development_rsa2048.pem -r \
-      -f ${KBUILD_OUTPUT}/${KBUILD_DEFCONFIG}-gzipped.its \
-	 ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
+    ${MKIMAGE} -G $PWD/test/self/development_rsa2048.pem -r \
+	       -f ${KBUILD_OUTPUT}/${KBUILD_DEFCONFIG}-gzipped.its \
+	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
+}
+[ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index c53a1ece14..1a23a53a32 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -23,7 +23,9 @@ def test_fit(barebox, env, target, barebox_config):
     if returncode != 0:
         pytest.xfail("skipping test due to missing --fs testfs=")
 
-    barebox.run_check(f"ls {fit_name('gzipped')}")
+    _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
+    if returncode != 0:
+        pytest.xfail("skipping test due to missing FIT image")
 
     # Sanity check, this is only fixed up on first boot
     assert of_get_property(barebox, "/chosen/barebox-version") is False
diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
index 7f86d9ac7d..5f1310617a 100644
--- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
+++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
@@ -15,6 +15,7 @@ targets:
     features:
       - virtio-mmio
       - barebox-state
+      - testfs
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 imports:
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
index 7860e97c52..d0b640aa18 100644
--- a/test/riscv/qemu@virt32_defconfig.yaml
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -16,6 +16,7 @@ targets:
     features:
       - virtio-mmio
       - barebox-state
+      - testfs
     runner:
       download:
         opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true
-- 
2.43.0



