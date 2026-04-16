Delivery-date: Thu, 16 Apr 2026 14:55:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDMGE-00CpCZ-2w
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 14:55:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDMGE-0008U6-Cw
	for lore@pengutronix.de; Thu, 16 Apr 2026 14:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mwiHCEEyuNxqKZVqgpCMCgtc5lJvWXTXu1nWFfPJM8M=; b=ltsflEHdFBhH0lPNrNcK8FacNy
	RwZT/6Ymd9Hzx/fQq1HuAfptQMegFn/qaQN5uNyrsLrYfF0dkZ3e+PMo6IbY/HcpttEg/W9hzX1F6
	MxDDEnzuNzTpVXNIqKlteJtWaxzVV2waA+9DZaiA4KMOJNZNPLnRUfNF0ku77p7oRHLFGbGmi94ED
	PI62hpq5sA65WhvDZwcuOVR2eunH0TdMUxtNs3R+GwtZZYx1DTgOBr4Obacjq3OlF5KP2sZcMVnJ2
	g3EV0Q/Nnkk+NU4xjPtW3T9d4MqMh2W13AGv7Q/7NmfU/Npl7cWzGvz/MFKc/EtYETvKUefDeaqJz
	O+A1ZsWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDMFc-00000002SZ0-3CCo;
	Thu, 16 Apr 2026 12:55:20 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDMFZ-00000002SYd-2gn8
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 12:55:19 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5a4113ab355so545779e87.1
        for <barebox@lists.infradead.org>; Thu, 16 Apr 2026 05:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776344115; x=1776948915; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mwiHCEEyuNxqKZVqgpCMCgtc5lJvWXTXu1nWFfPJM8M=;
        b=DCHwWG4uU4fp5xH7a8Ui7SglUAY4aGsWEnKj7fL7OiscKvDlKogRHrP2zo0eOtXhl3
         oQ3bQ17fETruNgt+PaInX5S9WskhRn3/p3DcNgnXuqrRMeiwwBWjenhw/C/rbgoKafGx
         +gdfLl8SctzSFwwsqRNNR/fY+8cdLTFtmCqtEVfgU3CsrcGxDRsnNl5PDMyq3xqwQFFt
         vZJlGV32zOXp4XXXOmTL5J4Hz9ZMd2aCAMAIxj7ThplZ98ugkuj22rchV4bFcKu+4Ygw
         1gqRzFcsL44TgsWy6hYloWCoqIA3CEfD8oCd7ihBFAYUA3OhaNJ3HdIdKIotK5U1l9E1
         myjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776344115; x=1776948915;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwiHCEEyuNxqKZVqgpCMCgtc5lJvWXTXu1nWFfPJM8M=;
        b=atIAgmHQVqlOKDVQpvmrgGdMI44lAdYr4VSkz8ZTAx7gCJiDrgGhGdYL/S47uez4m8
         pOBidQGfiaKt5xDYciKaSiZnGhetSwqNYOkxLY7lI9H1//Esh1OsGnTnFg6sNrOcaKZX
         F7Sv/c+LRAW87Jt537XpCtaPnI+vdO8snzUl+GwYn0j6XozMZvdfvnjFm1kWd2scIDdJ
         fPMM42Kct6d0DmZxcGlYFJ5Sl6kWHkD+DDf1+mwHlXxYIDXNk/k+AsD0RJlaJBki9SmX
         xLKOtNijZEFNyOFQx/IXhc9BZOofJmEIG69vgWXQbxgUSEqGY1yI79I0L1B4T8wJ8Y0K
         xwwQ==
X-Gm-Message-State: AOJu0Yw1IoIPHLckAu9nmLWdqY908wR8hPxV3bsa8SelWbnO4k8uiwOO
	+DSCwPZxMkUW3oI0yovUqoc4mBSEc9JB0CizAe+qWgO6NXlo+bi5LfKLQGCQ8MDA/ac=
X-Gm-Gg: AeBDies2UPUhUpUvHGHGxip7YyjJOj3bZ2Zr7Xxzv4nThZGe5ukjFIarVHaAM1E7Mph
	SfLRWsKj4X3HZQaV9mRMELhHAHJ4zMUeNUV2SFPmcasNen4Cqkl68n3SdUHBrj9IXPHYxL73gNh
	zw8caWUww1/djCM2xhc0lg8Fltp7soET9P2R1cjTfC3kfUZffgdjNAud5uIlMigoQrVff4mJn8O
	BWuV0y1UpSjfp4sIDE8Vri/NrusYuJlWj25yPr1xGFMTQL4q96i2CsETsruxb6VNyukoepJfqKO
	kLaBV6cDUxzRvqO1wl/hHkAOr+G1KsaH+xiXefEC5DjVhGT2zcEAf6ZbqqEPWcWooZD2HcNngby
	7nrwXYuyz4svYPdSGQhUH+LHZgggGHA2KVxIrgSX3yHuq+k5Pdlvguf5n9I20a+xsE9sSfsiekC
	YCRbsGhZrNp6HGDZcD5U4/raBcdpa7h1KqX0VT8BweET//9mC5PA==
X-Received: by 2002:a05:6512:3ba7:b0:5a4:e6:8fc5 with SMTP id 2adb3069b0e04-5a400e69256mr4756992e87.18.1776344114392;
        Thu, 16 Apr 2026 05:55:14 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a40a2fba1bsm1251344e87.65.2026.04.16.05.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 05:55:13 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Apr 2026 15:55:12 +0300
Message-ID: <20260416125512.3275056-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_055517_711349_4B44086B 
X-CRM114-Status: UNSURE (   9.74  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: filter out "<NULL>" rootopts to avoid kernel cmdline noise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When rootopts is set to the literal string "<NULL>" (e.g., due to a
missing or invalid value in cdev_get_linux_root_and_opts), the resulting
kernel command line contains "root=/dev/... <NULL>", which is invalid
and may cause boot failures or confusion.

This patch checks for the "<NULL>" string in rootopts and replaces it
with NULL before calling format_root_bootarg(), effectively omitting
the erroneous token from the command line.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 common/bootm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index d43079bb81..0f0774dc32 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -688,6 +688,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 		} else {
 			char *rootarg;
 
+			if (rootopts && !strcmp(rootopts, "<NULL>"))
+				rootopts = NULL;
+
 			rootarg = format_root_bootarg(bootm_data->root_param, root, rootopts);
 			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
 			globalvar_add_simple("linux.bootargs.bootm.appendroot",
-- 
2.52.0



