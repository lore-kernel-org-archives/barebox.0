Delivery-date: Fri, 24 Nov 2023 07:04:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6PIQ-007122-0P
	for lore@lore.pengutronix.de;
	Fri, 24 Nov 2023 07:04:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6PIQ-0005bA-6u
	for lore@pengutronix.de; Fri, 24 Nov 2023 07:04:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQonENyz7Et4tbnLb/MVuTN5dJqVbZWXMM2NYsFlLIg=; b=YyiBNdjzD/Oanq
	wYBCEP4Wvs9p7YW2WAjjDnaW5B9mQ0JkfDc1YGCm51FuHHa+E8DOVvSE2CD9lhoPN7e45hPDNDZ9p
	OAWE7PvYhoM5gl1+3VMF2/DaR9mwDI2MDI4I5r7dGLkYGdj7YWlVqM1ebn2AAFwQQKAatIu46Ho9s
	q3A3+ndsCcrtIeu/E4edVdXrZ867uniBtUf+yCBXZWndGDqor1NxDLLVGsrvDxgdAgE1K3oo3wOVh
	RbMTutrW/LM5UtI0Ikpgx45KZkQd1SvWQqFc3A2D7/gqR8EZCxKvG+y6JfNkO9b+xyVSJZF4c2G3x
	AjFHfZljDHhN4lmhnykw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6PFa-006EEY-2h;
	Fri, 24 Nov 2023 06:01:14 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6PFW-006EDK-1k
	for barebox@lists.infradead.org;
	Fri, 24 Nov 2023 06:01:11 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507ad511315so2129032e87.0
        for <barebox@lists.infradead.org>; Thu, 23 Nov 2023 22:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700805668; x=1701410468; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wQonENyz7Et4tbnLb/MVuTN5dJqVbZWXMM2NYsFlLIg=;
        b=auog6Um0BsDewKbrM+FBOUNqDf0bkina+CzXgqSi5eCR1/1MFGta8iv5hbfjfEdjeC
         CqG60ws05BHqo2UbuZfJGb6s+9m1QHnQO0d6i2seaZ8NwGV+fxuFfMsIjFyup07DOeTX
         xUBRFBU0wDNr53vjVJeKA8JdMIatU1fqyGNZWyKeDMW72NkT2IInYF9lq4tM7CfjfgpG
         ewcyVpSzv07illuEUt7NtefAjCvYT6WUPVUb9ER6yWDMO4JeIUwwhUqFMY7PSfZHISC9
         MD15KFVQWW6060pzFriblmwaVv7atlUdeC6RLEI8wMcKbfofH6yNMumBXj091juIOLjx
         wtmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700805668; x=1701410468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wQonENyz7Et4tbnLb/MVuTN5dJqVbZWXMM2NYsFlLIg=;
        b=tiwoXSwbS8KEK4Zf5yE76uR/l9VBXWn3mrJlI1Gqc5/Ltl0XVTVjYXv6zmPFRt2pcN
         MEt3w/iSPDDnDvqqGJneX5oET2jyt4eqDcBxqBrP7j4XQa6IyY90TBu5pmMbCKFWHm16
         tsj3l2nySl67bn/ka5RcFh417XFsAxAlbctjcBS37+pv9h1AOZG1Mvd6PN709jbbnDu/
         RNyxU2yDlNyI8x8R8+VHqaaSWKrMUf8Na9TZaCPDvf9Y39EUxrk7yRQ1JRr8LFqbvYe5
         CSk02UmXrtB7hLrc+xhwERtEuS1xQ9CLVDbDoc6dK0NNmv8hUu8Pv7177UPFA7iuf8Mu
         wlXg==
X-Gm-Message-State: AOJu0Yy3DB19tPooT/biMAdvJe2gy5nv6igvOv6yQ6zNy+JEpZnHjKgy
	cUjpSsEykFXOeDuklQuy5gnud++oAgQ=
X-Google-Smtp-Source: AGHT+IF8kv6CsCXn/I4zH3c9BfBL8u1AKmHJg93Bko5qPA6JzELNO0Puoj5K0MbGgdyL2KNP2npE2g==
X-Received: by 2002:ac2:48b0:0:b0:50a:71d8:c94f with SMTP id u16-20020ac248b0000000b0050a71d8c94fmr820105lfg.60.1700805667611;
        Thu, 23 Nov 2023 22:01:07 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id b20-20020a056512305400b0050a93acb00esm415258lfb.134.2023.11.23.22.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 22:01:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 24 Nov 2023 09:01:30 +0300
Message-Id: <20231124060130.1205927-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20231124060130.1205927-1-antonynpavlov@gmail.com>
References: <20231124060130.1205927-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_220110_581297_6BE03703 
X-CRM114-Status: UNSURE (   8.26  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] MIPS: qemu-malta*_defconfig: enable virtio network driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta64el_defconfig | 1 +
 arch/mips/configs/qemu-malta_defconfig     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
index 6091e6d0301..da3396246d5 100644
--- a/arch/mips/configs/qemu-malta64el_defconfig
+++ b/arch/mips/configs/qemu-malta64el_defconfig
@@ -64,6 +64,7 @@ CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_RTL8139=y
+CONFIG_DRIVER_NET_VIRTIO=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 6cbc4efa86f..4be05b7e5a3 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -61,6 +61,7 @@ CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_RTL8139=y
+CONFIG_DRIVER_NET_VIRTIO=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
-- 
2.39.0



