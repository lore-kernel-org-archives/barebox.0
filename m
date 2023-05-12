Delivery-date: Fri, 12 May 2023 04:39:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxIhK-00Edg6-O9
	for lore@lore.pengutronix.de; Fri, 12 May 2023 04:39:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxIhI-0005VE-Ic
	for lore@pengutronix.de; Fri, 12 May 2023 04:39:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P5FQLRxPemPRWmPCj0AdPs8MDoUE2/TR4DiXUFkS8ow=; b=v0YgLqWh2IMfP9
	3R3OKPG8g8XnZ+Lj2TsbyYxMUQGszLEwCi3f57CYCWpFTje6favjyAbCP8ak0aY3bDHhfn3+k1Vcx
	kbd+/poGO06skNEn2EBgtdJtYoQqLdb3z/oS+qpqiVqPv41Am+FQt2SLSHdwPwAqye2c1LmXv+/09
	CxwClrfm0+TikKI7zqCD7PPJSCBlbTqIOLqTeTBPpHFTonev+MO+8YvdLKyQcn0lMF/eFT27XaKKy
	fDH5aEIwpIL3FqwCgvgDOkyhNFUhVQLpW8V77JbC+OUv7haD372p0zCj38/CB+3/gNDM/Wz6Zq2pd
	R1e3+UhIc0LS4Apk7/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxIfr-00AkL2-0b;
	Fri, 12 May 2023 02:38:27 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxIfn-00AkKE-2r
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 02:38:25 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4ec8149907aso10972376e87.1
        for <barebox@lists.infradead.org>; Thu, 11 May 2023 19:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683859101; x=1686451101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P5FQLRxPemPRWmPCj0AdPs8MDoUE2/TR4DiXUFkS8ow=;
        b=q1dBUuMcJIHRtgq+A3T1JLbRZ5dx/yZF/nUciT1VVrvoxGYmxhRVBHGasqYkllh2/j
         DvftIv/Br8AAxJcOUegl/xcgbnPohBYRM4DxKn4LgFqanyQcY2zpMlfM7tM8ePA4XfS0
         qwJzcUmRjaYEEWFhbYwGUDoyH2a0yiP9DGep9ScgdZR71CKbCC2OhHXZKDRiIt7p/JU6
         sLQeYfsZwuMcm9HAC5ylTVExMRkkShYRI707wxC5XN9gLD3imXDnvqEb8FZXqDVLh+Wy
         KPhhKWn4P4D0buBMq+u3g4rQHnpRJja1rNKFPb/dbrH+Ei/IPNUoPYLRWjDTZhC2Z0cJ
         Izvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683859101; x=1686451101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P5FQLRxPemPRWmPCj0AdPs8MDoUE2/TR4DiXUFkS8ow=;
        b=ldk7Te7ldVil7f7sJ45rBvoASuNyEExHpeLXvl1hCEO0Z51+MiI18NyIN/U1xBX893
         VDfX4qDW6yLj1bvwAHMvJ8kv/ypzw/l4lSXTLVNxX2ihvf0iFU7UkpHooHOoe3KOEBKt
         JFfEEEb8TAQMQqG0YUVcdcfJJV05mv2E+VuXw6iLcGgki/lYDerV/bpJGfPxThHCboOW
         ECFvmhMfdBJ5iUU74BzKME1v7MiKRmLQhwmvALbSq5uvdJQgXp9ex/LtJqlZ1AkcTIv3
         gr/FtwyULGvrci9vuePfM8Q04rtaGG/iSo5X5YsYdvWRIGtCs5MTjjduE0SXsD52Tk1F
         I6eQ==
X-Gm-Message-State: AC+VfDyTRaKFQxPAWxxCxn7s1KK5YqOSDKZqFeYEqaWwZLVXcwgK053q
	sMNsrdzAyEVj7fDs3RWOLP/FPJlOZKQ=
X-Google-Smtp-Source: ACHHUZ5ez6NVnDcUBF4zymqFWD8tUPCWdmsprk9gB9GlGg8rtNEB60io14Y8ajDIPfvMTngAMqVcKQ==
X-Received: by 2002:ac2:494b:0:b0:4f1:408f:4fa6 with SMTP id o11-20020ac2494b000000b004f1408f4fa6mr3087684lfi.49.1683859101013;
        Thu, 11 May 2023 19:38:21 -0700 (PDT)
Received: from cinco.. (109-252-10-103.nat.spd-mgts.ru. [109.252.10.103])
        by smtp.gmail.com with ESMTPSA id b6-20020ac25626000000b004edc485f86bsm1302115lff.239.2023.05.11.19.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 19:38:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 12 May 2023 05:38:38 +0300
Message-Id: <20230512023838.1255762-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_193823_950687_896C09AD 
X-CRM114-Status: UNSURE (   8.62  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] powerpc: Kconfig: fix reference to unknown symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In Kconfig files, the symbols don't have a CONFIG_ prefix.
Fix an unknown Kconfig symbol introduced in d3b8a88d34
("treewide: rename CONFIG_HAS_ARCH_SJLJ to CONFIG_ARCH_HAS_SJLJ").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/powerpc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 4ae6d423af..ba875767b2 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -8,7 +8,7 @@ config PPC
 	select HAS_CACHE
 	select GENERIC_FIND_NEXT_BIT
 	select OFTREE
-	select CONFIG_ARCH_HAS_SJLJ
+	select ARCH_HAS_SJLJ
 	default y
 
 choice
-- 
2.39.0



