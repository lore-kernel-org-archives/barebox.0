Delivery-date: Fri, 11 Oct 2024 22:28:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1szMFv-003B2f-1k
	for lore@lore.pengutronix.de;
	Fri, 11 Oct 2024 22:28:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1szMFv-0002V4-0x
	for lore@pengutronix.de; Fri, 11 Oct 2024 22:28:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8wsbJbEUot9PRuprsL46Aax00OwHnnFh8UnpxYToMg0=; b=ycvDTNrMSCOvU3MEFMT84ZXiH9
	YMPIC+L6xkQzafx9Zc3xTmPKukBkTEPaCEMxDKLTOh7iXjYRQRL89oonDBlYbqGG0pRftKjmAA8On
	rXAfxvdVhyktjTqqyad8mSB58BHElYrvDncwnEdvXjX0+l43xZ60B3oyFvsNAKe2IkHlHeoK7TAy4
	DXe9NvtfwdTq0Q5xmfiORLQMMTQ5utZLggmQgBjd396GIOXFZ2leqrI6EBI5W83AVUl/w+YMERHSg
	bTzSR3GJw8tOXFi+a6/PKsft8Hrr2qBhgasZZwZ2BrZTPhvLckcNgLcbhgid140UVQFg3I8+UPyMh
	kz1i+w9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szMF9-0000000HWiD-3Mfz;
	Fri, 11 Oct 2024 20:28:11 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szM6Q-0000000HW3g-0Ojt
	for barebox@lists.infradead.org;
	Fri, 11 Oct 2024 20:19:11 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-43117fd9afeso3729065e9.2
        for <barebox@lists.infradead.org>; Fri, 11 Oct 2024 13:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728677948; x=1729282748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8wsbJbEUot9PRuprsL46Aax00OwHnnFh8UnpxYToMg0=;
        b=CgQPgtHo66u7oxYjWCH8u7hy1Eyjuq7VtZftS+2DaOQ/9uvuMnSJFhfAfHR5i6z3Vi
         4XAZzpiEzr1S6PflfSz6YJT5J9ECY8liR2MRclYTD1VOspNdRBKEV9HuTiYNgjzWwQFB
         hnkOsyCWFtSSk4lIiCOTMQ+2b2d/6gIX1FXUolB+bDMk759YZLis5klx3EOK60SUXlAu
         KbeX6PPyUrB571TyIPi+T64KpxuiyxMWEnxFaRSBlKkbHl7TcS8bFSSyPkMOqHnxWzQ3
         6Z2qjR8RR6axyRHO7HaMQp0Bbzl1VNpiK0wiwFqpZuWXiWQUKBVWni227N91mqG0s+jV
         t47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728677948; x=1729282748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8wsbJbEUot9PRuprsL46Aax00OwHnnFh8UnpxYToMg0=;
        b=tk3OBKPIhGcRtXZPD/oTFd8Ta5n6MONGnq2sVxYv5XeH5stZHXdJPtESF4sfl0NZtm
         Uw48q9KoNckEMzwRUMqsz9+avxujO5hycYPF+Eyv3sw0pyHF9TauEJHd8QGY51HMHdlZ
         6gJ/7ZZMac3l+vNtoE9AUOTyDDxYkH6lFhi57mFHKuAqwv3GYwi3Mx38bOvSMtC7BUSJ
         0N/YU0RlhdGrHL/oQ6z+pW4fpIvRJZh8jkyTS+mO61nmib9huU848Un0a27jyyTCFfV6
         BXDvuO6RIOWMoRCLheyOM7CBJ4VKq2b/cz4iFujYJNlcd0WfXQVq7CtZM6d4uSikt62h
         +5PA==
X-Gm-Message-State: AOJu0YwNySLHB2B+D55iy+xU55t4yxtq2ZdV/HbgjX0pCVwj1k27+L4G
	Z7QIIqtlLoL5wj1qB37nsnZ1yeF9UpbBCIPetSwzBz/u5nrFlCfpBpWMEZ1EHPc=
X-Google-Smtp-Source: AGHT+IEM/g18fE1TXx4Ek9TqBdZBSgua7mA+NXbBVo8rZ6NMi+mIvlSDQUZ2g3HUmpZaV+OK28IrCQ==
X-Received: by 2002:a05:600c:1551:b0:42c:aeee:80c with SMTP id 5b1f17b1804b1-4311dfcf26dmr14858005e9.9.1728677947734;
        Fri, 11 Oct 2024 13:19:07 -0700 (PDT)
Received: from localhost.localdomain ([156.209.172.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4311fd69e1asm21866135e9.1.2024.10.11.13.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 13:19:06 -0700 (PDT)
From: Mohamed Sawy <mohamedsawy1022@gmail.com>
To: barebox@lists.infradead.org
Cc: Mohamed Sawy <mohamedsawy1022@gmail.com>
Date: Fri, 11 Oct 2024 23:18:18 +0300
Message-Id: <20241011201818.42338-1-mohamedsawy1022@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_131910_153354_B1FEE4AC 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] sandbox: defconfig: activate CONFIG_CONSOLE_ACTIVATE_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default CONSOLE_ACTIVATE value set in common/Kconfig is
CONSOLE_ACTIVATE_ALL_FALLBACK.

Which adds an error when there's no explicit activation for a specific
console, that is important for real hardware as it may write barebox log
to external devices that don't expect it.

But in case of sandbox mode there's no explicit activation and the error
is always there in spite of number of consoles and there are no external
devices to worry about.

Fixes: 219b2341dc16 ("console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option")
Signed-off-by: Mohamed Sawy <mohamedsawy1022@gmail.com>
---
 arch/sandbox/configs/sandbox_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 1bb98c550c..a5e0f72c63 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -3,6 +3,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
-- 
2.34.1



