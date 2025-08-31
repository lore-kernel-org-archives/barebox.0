Delivery-date: Sun, 31 Aug 2025 05:56:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBG-006Q3y-1D
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 05:56:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBE-0007V2-U8
	for lore@pengutronix.de; Sun, 31 Aug 2025 05:56:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r0Yc+gR7WiWkYxKP67BDoELjfcaYD0Un/D2OJC8MJrA=; b=mO+uXhSO0saa8nFHh8+MoqQsL/
	LXvAfYvedtR/tlgETmB7MH6pbxYGcZtSf90T+kpyiJeNHw7JWil2DniDa9WPwKT51ANgnrAne9q+D
	JGeyD4V+ybLW/p2lXubcpf4d0ovl+18B+x8YOTf3Qc6Z4sc97xFr8PUQqGc+fK0tij1ipI8QamBJc
	h2Ge93k0Ch8yQPFKxxt3B6LIyPBwyXefaya4EjrPYc0Da5lxX4IZha+2HFtFERSKkvqLMb8xBUpd+
	/vRaQc+Y94LHq8SvCLE67Fd1HhPDMkG2hv/Ge0tWo5EJuQjH8YJKfaNlpVxwQZgjfacAPzx/7wcGn
	9LtUU7+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAc-000000092Ii-0QJR;
	Sun, 31 Aug 2025 03:55:58 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAZ-000000092Ga-2JXb
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 03:55:56 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7fac8fdea9fso284159085a.2
        for <barebox@lists.infradead.org>; Sat, 30 Aug 2025 20:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756612554; x=1757217354; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r0Yc+gR7WiWkYxKP67BDoELjfcaYD0Un/D2OJC8MJrA=;
        b=gXfv4I278L3xUMRnmDHT48t+wy6Biv3DVXP2PRj2Tm5mAqqN7lIWUyRh/O+p31QD+o
         AAPUbYZ44c/JxKE9BmasDlW1fhet8iDAyfygTbp4dgFD8Fsdl3bFfZ8f2CSwWWiPQbTN
         WFgNsy616LhN1n1yn9GpbjA6uX+H+ZqpofsyAmmKWgHyoGbmVoYeVpfrZE23+504/XU5
         7jAZvuz+NO/mY6pCVDbLYGaAQl2LIjfZGQlXLTYQW9yanNIMV1BtR1J/lnCRYzYR46+o
         iZvBXLUqg5O1rCkx9PRrx0EtGNL22VDzrrvZTdVnblSSoJBiwJkqgndLwDVt/lJKRt+R
         0nWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756612554; x=1757217354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r0Yc+gR7WiWkYxKP67BDoELjfcaYD0Un/D2OJC8MJrA=;
        b=wgMhV5wAZyLdwH542PA9btKx6OpUKiPN1pViWyz/6+pb31QXIc08/vP4Q1ceUbeXym
         YVXeGhWPWLnBo4IoXVVkgnxdUkz60aANJO8fmUJ8MMv9t3UzeZCSCfrKi9dm260mdKGN
         HE2qVSfi26R0G0Clt6NZS3czahuhwDCTLMiST0Er4eG2mycT1TVuWsyUfuz9W3+r+2m+
         5+Ba02cInRkw4n/15yrHq58SzPdi/uyhz3yW3UUqgKIrYup43iOEwmZXcv2loyo+/z0/
         ksrwvWDtNMJ5KgpcNOjITIvYBhG4XFIOLBvGnpvvt3eXrh6WKUiZ+z2arnXmNtmtDe4j
         NcnQ==
X-Gm-Message-State: AOJu0YxzjlrY01KzgUxW9M25Uz5pZbOJcjf13jKC3tGljkTbBUtXnf6H
	O9YMPMkwhAzaf4tWxNIhKNgz0EoE016GGxHvnrGhywyVrebmOMcJa+sr9DTe2BxS
X-Gm-Gg: ASbGnctek48rV6JiQd8ODMqZoa6WfFNaMqZtyLbcI5YzFwM4gSnCj2sDWA4K4PlroR4
	CPyGLKQLb0bcMjWbBmOqflLnLXQ2DIAxVDP3wtp0hly6H5UdQWGsXtmv6+t0WFo3+cELJv05ZnU
	KDJ6uNEJvr9EvkTm5LL68n1O6U9mN9eUn0jW3WtoxcAJP4kGpGzKk1e+iYGr70LJ+IPIYMSmMOW
	oe33OsCXptRZaNPbmOMesi3RElLb7uVEiPH6O2DXfXKTk25B5Zu/6MidgjU5y+FC7biC+S8487+
	q33PFo9gHVsEN2HgdzI0gO+uBY5d5eVNBAtdIlzdYBcI6ITYYVhH4+Bz9eheL7BL1d98h838qnr
	GtPx9hbnaW2Dw4fMWplz4VtnapB8DCfeyQZ8zTJmk1seK/CPDWztTARvg1p5ds3sX0Fy6XLN2BY
	rCgGh6mf+jhRClv/XuXILhFuo2qny2mmKF53WS
X-Google-Smtp-Source: AGHT+IGrtGIvyEilpkWN8zuS4C1ZrdcirY31LGyQMmF4A6CDQ4TharXkJTmNRH6lxqbuQ0FCHcnFyg==
X-Received: by 2002:a05:620a:7088:b0:7fd:e3c:6256 with SMTP id af79cd13be357-7ff27b20c95mr473013685a.22.1756612554481;
        Sat, 30 Aug 2025 20:55:54 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:10aa:d623:fe15:9cbf])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc0f097401sm433366985a.30.2025.08.30.20.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 20:55:53 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 30 Aug 2025 23:55:42 -0400
Message-Id: <20250831035542.1623695-7-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250831035542.1623695-1-chalianis1@gmail.com>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_205555_589290_9A682116 
X-CRM114-Status: UNSURE (   9.36  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] efi: payload: add options for FDT force and initrd direct install
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/efi/Kconfig b/efi/Kconfig
index 84f670fd23d3..c3811574920d 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -50,4 +50,21 @@ config EFI_PAYLOAD_DEFAULT_PATH
 
 endif
 
+config EFI_FDT_FORCE
+	bool "Force EFI provided FDT"
+	default n
+	help
+	  with this options we keep the fdt passed by EFI in the
+	  system configuration table, EFI has to suppot FDT otherwise
+	  an empty fdt will be generated when linux boots by efi.
+
+config EFI_INITRD_INSTALL
+	bool "Install the initramfs by barebox"
+	default n
+	help
+	  with this option barebox will install the initrd to the
+	  system configuration table, same as what kernel do after
+	  calling read file2 boot services, in this case the initrd
+	  will be read directly by the kernel as an initramfs.
+
 endmenu
-- 
2.34.1



