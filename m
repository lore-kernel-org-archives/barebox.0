Delivery-date: Tue, 30 Sep 2025 02:10:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3Nws-002aZ9-0b
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 02:10:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3Nwr-0002F6-L5
	for lore@pengutronix.de; Tue, 30 Sep 2025 02:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6B4Mlj12jJer4i8leOCecK9ylSyA2DQ+oSFnbk0Wm1M=; b=QNod76yeLvxNw0IHirEsnlKSaS
	qm9iY94bQFRlLaJOO9YvM7OKqWeCoTkz7jjxJ83hSIbCv3hMpzpU0MwYEQ8T3f/SNrY7OB0IOKZnQ
	qds0bcEEi8rM+Vp8VU8evB+rglBNyl6zUAsZi3SJ+nEsEZQpI1tjf+cBKx+sUuioeMGP63K2B+ryr
	xW8OcBYljuXzbTtgMU8G4FUNVL4JY65DdfIIij0QoZx/G8Xy/TMPv9cf27TTBjygzaAztUFqwu7XS
	S1CCgmhZH0yfnzVN42ieABqsRPB1RsrSasAg4/X/JC5QjRMoo+AAicH2pQwT5M8M05KURsbm1s4wt
	5iKvf3VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Nw4-00000003etf-242S;
	Tue, 30 Sep 2025 00:09:40 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Nw1-00000003etI-3APO
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 00:09:38 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-4dce9229787so46652831cf.0
        for <barebox@lists.infradead.org>; Mon, 29 Sep 2025 17:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759190976; x=1759795776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6B4Mlj12jJer4i8leOCecK9ylSyA2DQ+oSFnbk0Wm1M=;
        b=R3Dt4H1UOx/jx7tamHgUSE+Ol2w2nI2tCa1UeI5fYd/oYJfGmZcmKGSDnnP0xfhlAB
         sfQLK7A4sTjSRadIS346PkPTCyPkOJ3NF5QB/uJKaSVrRKUcaW3BjIn0tG18xiojfNLY
         goRIpFFfMoZiouRNup3tWKkiBu/Qyyb5WlLu6iO4fU+kcP6iFtRfAaqJCdN7MdP7P5eK
         TcWl4P4yB1Uo+T4ScS7lfrWYsz4W/pZ4sPewqRsHjRySAdtNfy5nZpMPtrOaBBs8MH95
         CpLrosD4DMLQR/36DauDP7y8RnUTtCYHSj1kKNv6JGpeZ6YyILMh12lH/LJ16c8bFskP
         dD6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759190976; x=1759795776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6B4Mlj12jJer4i8leOCecK9ylSyA2DQ+oSFnbk0Wm1M=;
        b=MKPS+r0rNRsKWeKLVy6vnN04EnANjrQcS1IRJ1IQg25qSnN03GjTeI8gHe0m/kcYB9
         irjgjU+QivzErNmZVhPcB94X3pqqgxHBL9tYTtVvfOVcM2IDIf380MI8xUamm0s37EEe
         u1LJDWn1FPNGZ9y5wBIaDjQeAOlUqWGS92ACtXEVal2pSXsVgMotYVP9UR7hS2y1+V/s
         8YcprI6oLvDK6fFc2SepBLuoCLxeAxsiXznBcgEahxl1ZUzdf5sJeWpL9fSTTeAyV00s
         5lrEDHJHgR/yItxsten0mC4tK9swAsFSeY3QYPP5kfeKwGLXWVpKnourjZeoNtJ9HkNH
         H0TQ==
X-Gm-Message-State: AOJu0YyRpxEbi4zCfgXJmkAfIIIYAzV8b/YHzSCe1avckj39tGpj9RFf
	NIkPJNyjV7i1PDzjeD2t8XMn/FkWv9XkhW21G6eZADbrA2Y1a9LvBlFx
X-Gm-Gg: ASbGncthnC6v0MQTMuEQgFotsj8kapTjd64wVY9SvrilhYrf2Bpl5rgttVsO3uLZpKC
	BU/KyjjPygutVYjdSmzvZ5KkArvS00WYulCuJ0xk5KeOI2lpvZR0R/ZYJ86Fu6qKsw9JLpQnddV
	bbKqYnSvh+L3alz7fsz9CO0/AwPCAl9F6p1lx7T00HddWaYQ0dh2du9RG0NFGmtr4up22hsljno
	8UCA5iz+3uuFEaVFbeabZQM71yxaf39Xy1/KXEevaHyCS8t2xh1BY4j+qfAHycveDIaqzVADChB
	nCXP+pKC5XbAa/1m/lQj2YlWNZVqquBlxBNZD20Q4jaNA1aBDUbEe69awHRrKOOZiqtjzq1r9NN
	Gnx/P7ybH5Wch464w9mSEe5x1D/cBUntF6MvYzn3zifzspC3CdOyGJBu4FoTQ6QKMxg1USqJT46
	A=
X-Google-Smtp-Source: AGHT+IF4BfYx91WF33x9tYujGHPeNC1SlINUK/1AYEyerCGiJpU0CZ5o/55IeyUPPzkmZNZvvB2jxg==
X-Received: by 2002:ac8:7d8e:0:b0:4b7:a8a1:3f2b with SMTP id d75a77b69052e-4da4c39dc42mr252780291cf.64.1759190976263;
        Mon, 29 Sep 2025 17:09:36 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:d784:df19:ff41:7ba6])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4db0b5701d2sm83669001cf.14.2025.09.29.17.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 17:09:35 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 29 Sep 2025 20:09:32 -0400
Message-Id: <20250930000932.490152-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_170937_798887_166FA82D 
X-CRM114-Status: UNSURE (   8.10  )
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
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] video: efi-gop: remove dependency to x86.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/video/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 9a0e54bddbaf..b2eccd5db7fe 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -32,7 +32,6 @@ config DRIVER_VIDEO_ATMEL_HLCD
 config DRIVER_VIDEO_EFI_GOP
 	bool "EFI Graphics Output Protocol (GOP)"
 	depends on EFI_PAYLOAD
-	depends on X86
 
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
-- 
2.34.1



