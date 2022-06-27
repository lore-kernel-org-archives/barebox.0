Delivery-date: Mon, 27 Jun 2022 12:27:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxQ-00GGPy-6T
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:27:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxR-0001Nv-Ge
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:27:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rIZz5jxtjsLCsffFvpqW69wgds95ZG6uvsm01Uk5r10=; b=Yr8sAUNg7De/PLBROpVCcmhuNc
	zHKwNcDliVl1TxESaWMBPCQXZP8v3x+euMy5MtfMpCuoT2oM9cf2I7OK48NQpOWqgk1xclvhkMfl7
	oNS1x9Fr1gt8xKBJHkGAobKkT1o//CWNHVMJHhGqmwTWJBYKFRENXtHohvBkeRnytQ+G/7wlggri+
	LIbYC7mNfWp0i8iWCH/ebxZ9sB9sK342GCF1FZRPMhfd0UigfqZ48MRhaK8UtS3fGPTm+VJYYINeQ
	ZjyEts9vGDcRh0/x9ArIPvgiBguxS0KOKtWzYxunVIdy4ssxpokrRAOV7BwxYcRLTifFLCVZF5daj
	7+G0u0GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lw2-0005oS-6Y; Mon, 27 Jun 2022 10:25:38 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvf-0005dC-Mn
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:17 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a13so15777239lfr.10
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rIZz5jxtjsLCsffFvpqW69wgds95ZG6uvsm01Uk5r10=;
        b=JM4R1IT3kz2hmvKLt2NA1LGSCOwiHc8dKZBP0NChN8R5SCZ/YuRL8ei6kycTca/gEj
         gJZiki24rw9rxwFTb+5BE00dDBO98G8AuNg4nQabFkDXuJXySyftvUSfpoJEp8wLSWeE
         iqch6aqfqCc60GJwlfV8QOQZ24Ot7odEVhVZwJPxzfH+DTdnTp8hQsbVbXdDeHafKCnp
         9l0EncNTmLu1clXj3PD071TF+6mqZXms+rEYX3wfzpnAa8hQ9eo/LcK7PYhoAE9Xe8zS
         xkRUhWnmoe90lbyjcXMw++4zCEHq/8PBxay2S8XXcjUmqVfIrImNdRFtSoZTQU2MEssJ
         vw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rIZz5jxtjsLCsffFvpqW69wgds95ZG6uvsm01Uk5r10=;
        b=Ijbi12xItE3vhyxgzjuMU+BxVgLWpeQT2M1HTcIA/A20Ie7E1Vj2BTa+AvXZ6fQXVq
         5gUPRLiw7DJrF8FtCxvnIjJ8whAAGdTTwB5rVLAd8iRDyUYD1h1Rx6Ue6u/atTZLRxfU
         FShVUjInxZYnO9m45dheCdPmQFwoMAJEcDQtP9mv+SvPj6iIUayVTjYfNmOxrJzbgokb
         0/jhO77XNsYKG/yHEwZ93H1DtpjDLMBFGLawfllrl18XRPZHwL1QFE7UBje1rnwa32tY
         dIz/UvPw5IqWNwwP6XAzdqdN77bU6LqHDYM5yfHRLi+2ZnQNTaAnBl3a3wk+r3kTvLdM
         QSdA==
X-Gm-Message-State: AJIora/PdHq/5Hb2aXzolGo+APR43xaXcAam4eUu+OVDphtmMALxr3rJ
	YiTbLMQZ3i2XbfkTFZmdIDRkhIZwO1w=
X-Google-Smtp-Source: AGRyM1vTw6UaUyaE3cXIQyY32WX1i2Qk/wd8Oy+PQlMwwZgiUJ2UmKLsU56NLXeFnyumy6Fz9K8UqA==
X-Received: by 2002:a05:6512:2289:b0:481:1d4f:ac9d with SMTP id f9-20020a056512228900b004811d4fac9dmr1912442lfu.510.1656325514023;
        Mon, 27 Jun 2022 03:25:14 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:13 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:58 +0300
Message-Id: <20220627102500.18427-7-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032515_805384_7E707380 
X-CRM114-Status: GOOD (  10.25  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] pbl: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

WARNING: unmet direct dependencies detected for PBL_IMAGE
Depends on [n]: HAVE_PBL_IMAGE [=n]
Selected by [y]:
- PBL_MULTI_IMAGES [=y] && HAVE_PBL_MULTI_IMAGES [=y]

WARNING: unmet direct dependencies detected for PBL_VERIFY_PIGGY
Depends on [n]: PBL_IMAGE [=n] && ARM [=y]
Selected by [y]:
- ARCH_IMX8M [=y] && ARCH_IMX [=y] && HABV4 [=y]

WARNING: unmet direct dependencies detected for BOARD_GENERIC_DT
Depends on [n]: PBL_IMAGE [=n]
Selected by [y]:
- BOARD_ARM_GENERIC_DT [=y] && HAVE_PBL_MULTI_IMAGES [=y] && OFDEVICE [=y]

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 pbl/Kconfig | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index ce0acbb646..90eeafe29f 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -11,23 +11,29 @@ config HAVE_IMAGE_COMPRESSION
 
 config PBL_IMAGE
 	bool "Pre-Bootloader image"
-	depends on HAVE_PBL_IMAGE
+	depends on HAVE_PBL_IMAGE || HAVE_PBL_MULTI_IMAGES
+
+config PBL_VERIFY_PIGGY
+	depends on ARM
+	bool
+
+config BOARD_GENERIC_DT
+	bool
+	select LIBFDT
+
+if PBL_IMAGE
 
 config PBL_MULTI_IMAGES
 	bool
-	select PBL_IMAGE
 	select PBL_RELOCATABLE
 	depends on HAVE_PBL_MULTI_IMAGES
 	default y
 
 config PBL_SINGLE_IMAGE
 	bool
-	depends on PBL_IMAGE
 	depends on !HAVE_PBL_MULTI_IMAGES
 	default y
 
-if PBL_IMAGE
-
 config PBL_RELOCATABLE
 	depends on ARM || MIPS || RISCV
 	bool "relocatable pbl image"
@@ -38,14 +44,6 @@ config PBL_RELOCATABLE
 	  This option only influences the PBL image. See RELOCATABLE to also make
 	  the real image relocatable.
 
-config PBL_VERIFY_PIGGY
-	depends on ARM
-	bool
-
-config BOARD_GENERIC_DT
-	bool
-	select LIBFDT
-
 config IMAGE_COMPRESSION
 	bool
 	depends on HAVE_IMAGE_COMPRESSION
-- 
2.32.0



