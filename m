Delivery-date: Mon, 03 Nov 2025 05:39:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFmLl-00EjKb-2r
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 05:39:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFmLl-0004h8-8r
	for lore@pengutronix.de; Mon, 03 Nov 2025 05:39:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H2R+vPUf3zn6n2OmSaMOc357GvkOiJc90d3PKOpd01g=; b=x2QmjYx+ab+mea0IhWiQg3C17Z
	dH/Qyz8ntKMaktX/7RZnRe2va0sHyzuzDro3VAjUp3Skfkkpq9T4JMNs2QUDbGlv6BVMWrBPh8zLR
	WCA7XKDn+bBHWXjPjpw0cAKcmezIxcmtxEGovhx7VCGZCrv877hq+tnncfRIgYXQUtnyDlstl8+p+
	eFtOPQZTcHfuMSnRRvaCW3esAOKFS/qe2rhejyV0N5xCHP7rrUroDDEg9USYqgZiQ70mk9cpKt1i1
	bNZIMPMk5w3YdTR7ecJurMFweR4g6A0jBR5Un2I0fxSQc5FBNb0lWK/flseBJQ9bdaCo9TuaRFkpi
	6tGVikWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFmL4-00000009C4L-45SQ;
	Mon, 03 Nov 2025 04:38:42 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFmL3-00000009C3j-1BoU
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 04:38:42 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-8af121588d9so108480785a.2
        for <barebox@lists.infradead.org>; Sun, 02 Nov 2025 20:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762144720; x=1762749520; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2R+vPUf3zn6n2OmSaMOc357GvkOiJc90d3PKOpd01g=;
        b=Xj+DguMpZoLguB9YOzCxWWYUf2Y/r3uRS/w5vqKq5Mkd256/mRSJAOlUnhFJcpNPMy
         PNotskqtpTs+HR4XT3GqS80wjh0VIja66S17ufc0cEtZOLRcrHLOnDChNCC1LSy9aLGa
         AdmB4hVOKgsD7fioHTXT4fOq6lNUF+UDNnOVJ2+t0nWEnfgbCEebjHZsKf22LmLhUDOV
         /1K00988yc4bTuVLwFNoUGbty293BqQbn564Jhsc2H09tXnQJVCTZsXXoaGjEwhdkIw+
         WCwCH+lLuvaYkV5I8Sr+gMJ3ADz+pGyxpBnQCHZumETn+YShKsFypplqArwzBMXJs++5
         n2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762144720; x=1762749520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H2R+vPUf3zn6n2OmSaMOc357GvkOiJc90d3PKOpd01g=;
        b=FZCUxDp+IweKbfmaYrgEbzoAVPhXb71CfiLqufPt38lcsfjGCR+Ri21jCkuO+AnLQw
         Zl+HuJ7QevWUvai83qzja59BP0HR9sux4HeKzzZpJd2FzePhOn3MzenMoOv5VOQckuq5
         cif33oBi0a6CYGHq+QthCq80TI0mXQqVZDyv2Bzf7wZ0aIJDM7+kLymvbBSaxTRWn1gB
         6DEC+wsNo3ibqPUxQe3rUpJrb7tWiBEjs1E4j+jI4gSRopWUYTaXGCf7O2nM0N6CdQRD
         8d/aYfAnxAd91QKgGTBBK9Vorr19K+TwBGoEsw1qlbBUq8IVBDyW/EVVjEawNZEmTueS
         LH8Q==
X-Gm-Message-State: AOJu0YwCFUGGDICnn1Z8QCtD22D0CczTFKHR7KHa3U+szSYflBiTWmvm
	wbGA7onZwz/C/0iHZ5eAEgbHsBlvGxZXkW+5PFzyH1XeMvK5EWL27+EK
X-Gm-Gg: ASbGnctNQVsqUxSW+VWJJ2HyYoRm/RVKmbnafxzp8Idv8el0ilJLva+D7oUO9yJAVR/
	bZ8FZYYy4Q7saL08KgAhVR9WRxvtRfKQFWTJffsMwEvdTRgVpkf66ZCl9L//uwsjXMhQnWzrTY+
	AlChaHEY+Nq3qMbcu+GNHU3DvE7Yim5BKk57IJFRcUmv37DKufpfIsyzURnsO8sMsinhf0huTIx
	awr4C2RGXVgeST/SZ1bg/S92+WaAM3HS84rdWAMPuEsuPpc3T5kaFyGXaw71LrwTvddmxO7FLMT
	rYgOsnOffFCPFlE5Nzx8y6dQWrT4/Eoqdnh3LRdIGb34aiJmgGPZtZr51V0kiX/jBQLLik6APxn
	ZWQbFJ60gzhPix+Un4iMx3iRXWfGztDFl5KBVCkpW4Y687lLK004NWwbaYwe6YgzoYZYZPOMdah
	ZMbtJXT260LDI0fOFn
X-Google-Smtp-Source: AGHT+IEQqALXHF0uSYBEkFh6hnj28mvxs+W6MoELlxLWpzZUAejYy831Ea+wM8hu7j3VXaZXxhqJLg==
X-Received: by 2002:a05:620a:394a:b0:88e:483f:1e7 with SMTP id af79cd13be357-8ab9b4a3dabmr1450754485a.65.1762144719997;
        Sun, 02 Nov 2025 20:38:39 -0800 (PST)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:4474:25a:7017:ff44])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ac02f854a0sm594864185a.27.2025.11.02.20.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 20:38:39 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sun,  2 Nov 2025 23:38:33 -0500
Message-Id: <20251103043833.149013-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251103043833.149013-1-chalianis1@gmail.com>
References: <20251103043833.149013-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_203841_329041_22D68470 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH 2/2] efi: payload: refactor to use the external barebox state driver.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

use the external state config to pass the barebox state.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/configs/efi_v8_defconfig |  2 ++
 efi/payload/init.c                | 50 -------------------------------
 2 files changed, 2 insertions(+), 50 deletions(-)

diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
index 5f946dd51d4a..26682aab304a 100644
--- a/arch/arm/configs/efi_v8_defconfig
+++ b/arch/arm/configs/efi_v8_defconfig
@@ -21,6 +21,8 @@ CONFIG_CONSOLE_RATP=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
+CONFIG_EXTERNAL_STATE=y
+CONFIG_EXTERNAL_STATE_DTB_PATH="/boot/EFI/barebox/state.dtb"
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_MACHINE_ID=y
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 5b827c57ed1f..63d62395cf3f 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -376,56 +376,6 @@ static int efi_postcore_init(void)
 }
 postcore_efi_initcall(efi_postcore_init);
 
-static int efi_late_init(void)
-{
-	const char *state_desc = "/boot/EFI/barebox/state.dtb";
-	struct device_node *state_root = NULL;
-	size_t size;
-	void *fdt;
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_STATE))
-		return 0;
-
-	if (!get_mounted_path("/boot")) {
-		pr_warn("boot device couldn't be determined%s\n",
-			IS_ENABLED(CONFIG_FS_EFI) ? "" : " without CONFIG_FS_EFI");
-		return 0;
-	}
-
-	fdt = read_file(state_desc, &size);
-	if (!fdt) {
-		pr_info("unable to read %s: %m\n", state_desc);
-		return 0;
-	}
-
-	state_root = of_unflatten_dtb(fdt, size);
-	if (!IS_ERR(state_root)) {
-		struct device_node *np = NULL;
-		struct state *state;
-
-		ret = barebox_register_of(state_root);
-		if (ret)
-			pr_warn("Failed to register device-tree: %pe\n", ERR_PTR(ret));
-
-		np = of_find_node_by_alias(state_root, "state");
-
-		state = state_new_from_node(np, false);
-		if (IS_ERR(state))
-			return PTR_ERR(state);
-
-		ret = state_load(state);
-		if (ret != -ENOMEDIUM)
-			pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
-				ret);
-
-		return 0;
-	}
-
-	return 0;
-}
-late_efi_initcall(efi_late_init);
-
 static int do_efiexit(int argc, char *argv[])
 {
 	if (!BS)
-- 
2.34.1



