Delivery-date: Wed, 03 Mar 2021 15:03:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS5j-000844-0l
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 15:03:08 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS5f-0006v5-3v
	for lore@pengutronix.de; Wed, 03 Mar 2021 15:03:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9bF7LjJa6dJfAZjPH2+9VewhwDByZckA2dpqrdSsQW0=; b=HmWd4XfeJq2cVtDiHKz43R7DY
	87z/hcgH+b22sljqvIBWPgMkggh90XFYs+6/1K58t3HZklLXIKZAvLZBkJ5ED2BnbEtoLbyWwAFRn
	s65htclCVGGIC1lO5okbQJqWMm1qyA0zY84D2FhvyfOMjG16ikEbFR3VHWqWm0NZxqZ0htky8MQ+g
	KagjhFTqscy6ZGL+gmSL54RnMzSxuH615u64Ap4sDcF3Bc3Ql2Ch4qgfBGtvR3bOvkj5I/rzRgWNo
	GYj0LgIxh79kfAuYDeRxTQZ76l7JO4m43NpTrf6DxQmsuAfwRudbtqPEm5OIJBH+FSiJMIPu86n/g
	/fyzpTxmg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHS3t-0051sd-6b; Wed, 03 Mar 2021 14:01:13 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHRtl-0051VI-DH
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:50:51 +0000
Received: by mail-pj1-x102a.google.com with SMTP id i14so4186586pjz.4
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 05:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rwtyh/9//FqwfK3T8xlQfkzXCQ/XE4sDAP3QlTIiPsg=;
 b=NZYCw1YaIkZ2HYLaT1aqoZLiWmgUh61xr5JYO/AKk54X5TQ3qskRBhFfKXnFR7OJxt
 anahZPBfkCUd8+2MYb4iD2bzK6Qh8h0j0A4HpNGrq5BJTvnq4gcJN/fq9tRTCT3vmUnD
 T7rJ+f0JxAf/2uHl/Wa7oAGn7tSy6jUYDUTvhN8denOQy4+gX1/uiMWODRmhBvBrRIuh
 Onuk5LEmC+yo/s/3bzOnfCXw6YJsICYY/cq8s4JkXxkyTLPMR4/ZaT9QOcFMmjosS/UG
 DF7H1POI7P4QaYOHH4T69kFCz6v9OviCvReNzMxKHhsneMWttWoLL8wFqHR3bVjdZor7
 M8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rwtyh/9//FqwfK3T8xlQfkzXCQ/XE4sDAP3QlTIiPsg=;
 b=IX6nDOI2cUgnTK5huw/2c1Vbp8WF3Aa3H2Sw07nWYmjDt4nIjwjr1UYHakqGacKHeM
 ZBcNpvEmrfMh7qc2Vw/KcyGpH5Aws40B+/w275gh+J3KEUBJ7Lk0tzhHz79HKVWtcDp4
 VxcGqHOJ0fqUfNsLKb9V35jfyyvgGMRqUu+vgUZy5XPxYD+mjrg6H+EIZ/gZGE2BA4JV
 4h2wLZ0R2sPQ0WuaJBcpnZ/Ao9/XdUuHIKocT/u/snOv3wBLvLQUvXrk42R7cNDLhfzR
 WmpQa+1DZTkUc5Wgyla1SDsK6SNfrbFG5WQJxA8vkL9ze4LSgcp+hHCQd4OPlE6mPiIz
 SGoQ==
X-Gm-Message-State: AOAM532OlcdI03wk8ZF8rfQteleMbMtxZNnooF6uD5/+WKUCqI/kKOcU
 j2W6bVGJncIDDMELxhrQXujg5OUGifU=
X-Google-Smtp-Source: ABdhPJy2SjVDWfxSV7JYXXXX/UCONgKAoHmp5NJ2GqKqYoIEqmIctA75emwyfPY2d9S6N4pJ1YqcZQ==
X-Received: by 2002:a17:902:70c5:b029:e4:4ce3:90f5 with SMTP id
 l5-20020a17090270c5b02900e44ce390f5mr2798299plt.58.1614779440236; 
 Wed, 03 Mar 2021 05:50:40 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id 142sm18611200pfz.196.2021.03.03.05.50.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 05:50:39 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Wed,  3 Mar 2021 22:50:23 +0900
Message-Id: <20210303135026.3450789-2-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210303135026.3450789-1-shorne@gmail.com>
References: <20210303135026.3450789-1-shorne@gmail.com>
MIME-Version: 1.0
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
Cc: Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] openrisc: Use movhi to zero registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is needed when running on FPGA as registers are not guaranteed
to be initialized to 0.  Using movhi allows to explicitly set 0.

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/cpu/start.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S
index 7ac790b05..c448d3775 100644
--- a/arch/openrisc/cpu/start.S
+++ b/arch/openrisc/cpu/start.S
@@ -37,10 +37,10 @@
 	.org	0x100
 __reset:
 	/* there is no guarantee r0 is hardwired to zero, clear it here */
-	l.andi	r0, r0, 0
+	l.movhi	r0, 0x0
 	/* reset stack and frame pointers */
-	l.andi	r1, r0, 0
-	l.andi	r2, r0, 0
+	l.movhi	r1, 0x0
+	l.movhi	r2, 0x0
 
 	/* set supervisor mode */
 	l.ori	r3,r0,SPR_SR_SM
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

