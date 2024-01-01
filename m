Delivery-date: Mon, 01 Jan 2024 12:25:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKGQU-00Bzu0-1Y
	for lore@lore.pengutronix.de;
	Mon, 01 Jan 2024 12:25:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKGQT-0001js-QQ
	for lore@pengutronix.de; Mon, 01 Jan 2024 12:25:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WojpPxzksM7e1m3zh8h88bLbliDFu1i00n4G7PasoWA=; b=4lJEbU1VfNLHCbtZqvwk27COLg
	uIWx2cKKNPnJ6kwXo/0gXdW4jMRUo0CtzBoeQVoWPyZWY9Ktt2lvVmoPmlv8kzs90gjayAh8filBT
	8Uo7y5NJZTbsRWIDkGUO0ubSTY+qZ/qy53T15Ewyhc4LFw5T2vUQr3EY+zroKvSQaothLLbVYUl6G
	c58bWvrGbT783T1JdU5UvUb6bYx62l4yWYCgGg8Q0XubW1Vio/so9ds6kWF2vPom3dbtCuDH9j3/i
	336BcODb4Isu/854dqQ3PR+GdhfU3UsbJJhC4p2bMyn+TtxtB6ce5q0GLkwAFiu3tcoTgUYrAayVm
	m+zY57ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKGOk-005x5r-0h;
	Mon, 01 Jan 2024 11:23:58 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKGOg-005x3r-28
	for barebox@lists.infradead.org;
	Mon, 01 Jan 2024 11:23:56 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50e7be1c65dso5264393e87.3
        for <barebox@lists.infradead.org>; Mon, 01 Jan 2024 03:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704108231; x=1704713031; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WojpPxzksM7e1m3zh8h88bLbliDFu1i00n4G7PasoWA=;
        b=kWy7hHdSg/dPveQP1VR7TPk+tBALJGfjpmAbcyil5DTcDQJ9TYYswcjMe/hUYxVEIW
         yEupLo5F+RzLDrj0ndHY3MPBi21i3vFNB0nPjjad0EiwnQ+cIL9SZhlB7lJKLDkriv0m
         jPxWSkI0JDNkKWoLhN8oA1jL60Gcj3DEvCXHR26KvJ7yYVZi1Gs1clVa537hvUvlo2Kw
         mLNyBw4YW5gdH32Kg61l+dxpmqCWFULl7TdhQ4sI5I3EW9UjpmxXXQTUPf8tP6c8VSm7
         FjXGJDnhrx5Ylcch3OIsoLc0xfAdDD3Md3uSnGSlu9a4aVp86pC5KWKyPsxI4Ku1jyMU
         gHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704108231; x=1704713031;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WojpPxzksM7e1m3zh8h88bLbliDFu1i00n4G7PasoWA=;
        b=qCAfjYuqnTLaf5tdSWIETzUsOu+zhX4TEEP2kb7Ud1PR/Hz6PP204dssPlpVJ0KE7o
         0mAUloaP6Fn8eY+bIT/l7H/tszbbYlrwVqcxhm0o2teF5WYiVW3H2XiwyUzr/QbujlNC
         ZMO7hRmCelkdiCtZDMQZCrazlW+OFMw6AnuCwLesRYVIboaMQy2y9LzZ5q/IjMRwKdOd
         5cr2hhvNGl+qPva7NWao71nITV4yUsKFLANINyr7B6m7hKhUSpZ56fV4GHS4SZlQySSl
         QWGDMibRL+xO8sLV2erASfGTEY2HSHdD4TsAmd64lsVVTAd034OqwGutNVwxJNW5NC4E
         Dqew==
X-Gm-Message-State: AOJu0YxxDykNNibT1Qd4cZbz9DwaV0T+EWoVcy3ozjllt+h0IGPE3QPT
	1omAJoMDEg8BexkBHK4QTqMQVMxgwAs=
X-Google-Smtp-Source: AGHT+IHFPFExR7ZPS6vBy8f4QRA+U/dN8qBDJieOjpVo9SSmX2q+dXslKyu8UDe2DrjvqEy519Z4hg==
X-Received: by 2002:ac2:4890:0:b0:50e:5ac7:2f83 with SMTP id x16-20020ac24890000000b0050e5ac72f83mr5567074lfc.55.1704108230678;
        Mon, 01 Jan 2024 03:23:50 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id p25-20020ac246d9000000b0050e7bb371b1sm2283492lfo.46.2024.01.01.03.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 03:23:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  1 Jan 2024 14:23:59 +0300
Message-Id: <20240101112359.721688-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_032354_705588_8DA75EA4 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: asm/pbl_nmon.h: add guard macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_nmon.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
index 7c8ec9d204f..73e4a9d2e9c 100644
--- a/arch/mips/include/asm/pbl_nmon.h
+++ b/arch/mips/include/asm/pbl_nmon.h
@@ -5,6 +5,9 @@
  * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
  */
 
+#ifndef __ASM_PBL_NMON_H
+#define __ASM_PBL_NMON_H
+
 #include <mach/debug_ll.h>
 
 #define CODE_ESC	0x1b
@@ -286,3 +289,5 @@
 #endif /* CONFIG_NMON */
 	.set	pop
 	.endm
+
+#endif /* __ASM_PBL_NMON_H */
-- 
2.39.0



