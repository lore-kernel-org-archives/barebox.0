Delivery-date: Sat, 20 Sep 2025 05:04:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntp-00551V-0Q
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznto-0005EC-BF
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t61ni9d2meyCRNIVGimMgAG8IaTdDSK4oelFEipYF3A=; b=sVCBWMdja3DQmEARe028A6266p
	IR61lXdeiR7Bdn2OSfumWmSaV/joCMXcL+wikU1n59aLm3CDyE9zj+guMZkiJNBDZd/tmfdxnnUSp
	rNCyKbbXHcoN8vvhNgv35YOx6TLOSplHnZFLQKm4G1a0WrrvoVRC0RZTP57RbsFUHCf+BNncUstS2
	luzpO3hjPhYvWyuuDtP+/umnbZzjj/Rk4XeY/bi9beJLuia/fgydEyrXJ0313RsZlNDcmbvyPL/48
	pfME+3HMstlYWfmmQb+/Zj4gwddw8ogmRgTpITkEvwnxQE+GaHABtxJIQFBoyoQCLAGrYvYNJo+Lt
	ZhfWG1ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzntD-00000004c83-3sUA;
	Sat, 20 Sep 2025 03:03:55 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzntA-00000004c0b-00ym
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-45dd513f4ecso19386175e9.3
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337430; x=1758942230; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t61ni9d2meyCRNIVGimMgAG8IaTdDSK4oelFEipYF3A=;
        b=a9va9hqbyEaZs5il9fBqi+ixvOzFA0qnX+i58g4ufN1GgHYpWYpLi/APJA7Vmz2B9/
         K9ek39Vj+PIzMkTyT/LP4e9ihciUrWG3m2RrwSY+R84F/tUAipgz+8fwcklGnJMf/P5f
         VhzXJ/vDiciu7yyrGDYacMGT7TNYhKeuZp/whTYJU+Nzx5wZEWgdB5XJB0P87nB3iTGM
         AW0U1eXtdxtK4Gl/LQAhdlDwjDQyjQWueTy478ClSiFRZ6/BCK2KETuke9+NoaECWe38
         vzs3gNQAZ6nAU6s5+7vnv8rcwLKcFGyszeTP2rjI9HFKcnJnYjY0yBqqbwh7rk3J3xy0
         c5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337430; x=1758942230;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t61ni9d2meyCRNIVGimMgAG8IaTdDSK4oelFEipYF3A=;
        b=r0rzluT7LfYvhTkgr0ej6FKmgfUR5K9TRU6oZWQMtJ5WE7rYXodfChx0YAL8+7JwXi
         o0DwaU0GP7vPrvOBBcPQaPGaGsFOzOAYHfHmixy6OSrXP0LHIgervyI4Q/vcVU126ove
         rqDQ11oEUOtzZSjcJpmnY5ylTX99Py61D4Vd6O8zCYnV9z0aL6Qef8xugfiM+yenn0DT
         3G8e5qT624WxjwnLiOCBP6KpKY4PVYetrbIHFrCtWhIVfJQbynfJQwy8ZgKDnw9GP6MJ
         L6slXHfPCjZnHkzG2jLR02I6PcY9kiDASFEFxrrUsn0OWpd1OcdYkK1b2aRME+lMNUUj
         Xn2A==
X-Forwarded-Encrypted: i=1; AJvYcCVpcMRpCqrDfpZFfPIoCOBW6NNXuOEdN0tkF54cJBuBpXcR9Vf0r+VsZUUnFfkf6aK7BdS2kMCo@lists.infradead.org
X-Gm-Message-State: AOJu0YwoEYGbH6sRwadzP3Fjx83Wq9UEaU9/pD3d2JzAik6e3ecK1AMY
	yRWoIssbBAfgy8kRmgbjw+ajIJQ24h4odgGCefzEEVk5Sr5bw3RmI0id
X-Gm-Gg: ASbGncvu3to3sk8acfxL3FSom0OPKFeCH0aHjcAb4Ijrkf+JLKPq+/sf0nlWmRsxCzg
	rgtSBXC/gA+U7ddisAwPoT5PTL0heIpX9Yq4FvFS0HXhP6cGYKDANlDlTDTEMpLWH7T/v6DLah9
	36bcpTxk5XIYeTfTOTfJDDrty9zjseqCf/t5jmn7q30Zk7v1xII5v8YjaK/zTxpI1GQguKuxm/s
	zFDq2Qc8Vm7OYf9IyCO12aZve9ZRAuuQfIpLbF11sV0WFUf+HP1MvlM7ksKMUWKydibNbxaXwnF
	n7jx2oFOtINPEaJlBeZHjrk48eO/oU2lO5bwjReQvqlmwWoZmaRYp7NPuokbVvrpNUnhDyX0jmL
	xPGh+ACFUcRleurEYIJz7aoF3NV3q4mK4nu5Ni6r2xxAZwU+TGWC9u8fMezrgOn6OdJbQTSiGPE
	mg0Rh9T+P2
X-Google-Smtp-Source: AGHT+IHJ/7X1ZSr6+AjfYkeFFF2CIe89sdoVLU7FEAaXM1vpcz2Tu740sgtb6kI1//EEz9FP+/zDtA==
X-Received: by 2002:a05:600c:3b09:b0:45b:97d9:4127 with SMTP id 5b1f17b1804b1-467ebe9d919mr42159475e9.1.1758337429895;
        Fri, 19 Sep 2025 20:03:49 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:49 -0700 (PDT)
From: chalianis1@gmail.com
Date: Fri, 19 Sep 2025 23:03:23 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-14-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200352_082104_374559C1 
X-CRM114-Status: UNSURE (   9.05  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/15] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We currently lack a way to build a barebox EFI payload on ARM without
enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
effect and adds EFI stubs to all enabled board, an EFI subarchitecture
doesn't fit into our current model.

Instead, let's make it possible to enable either CONFIG_CPU_V8 or
CONFIG_CPU_V7 directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20250904081626.93182-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/cpu/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e61bcadc8c355406867bf52d9f704bcca80d1ca3..fe0d1e470578c41f7d0c37b8aeac0c04f1bf2580 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -79,12 +79,15 @@ config CPU_V6
 
 # ARMv7
 config CPU_V7
-	bool
+	bool "Generic ARMv7 support"
+	depends on 32BIT
 	select CPU_32v7
 
 # ARMv8
 config CPU_V8
-	bool
+	bool "Generic ARMv8 support"
+	default y
+	depends on 64BIT
 	select CPU_64v8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT

-- 
2.34.1



