Delivery-date: Wed, 04 Oct 2023 17:24:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qo3jO-00591T-EA
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 17:24:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qo3jN-00036o-I4
	for lore@pengutronix.de; Wed, 04 Oct 2023 17:24:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gfNeRUpEPk/uaEnGho91+WI0JWI9p74cmYIPHO+eXr0=; b=ivmcLmhv38+5s2ALe3WMFSL4kM
	b4QWSzWlmPNjZ85jGrH7GwKiX7lETZeXosX5qLvjmMdRBijqkXU1jhnsM/Wjg0s+mJ8q5ej5/2Ufi
	ql3i0uQDB2xWOu6dlX2RqN0gTi3NX1LjrkrC5PpTL+b7TO64sQx47f83V87jCvzlAxGDr5Z1lTU+g
	xxN0Q/RA8odwNl/EHtqnukcWZTznCeWRxBV/uNvOYZZEqu4yXvTEAEq/hCHYyY4DtDLucu/I8a0TB
	zVkomFGkKb6JTTd3J9dh/7lEyvvhYd5f9JRArr0d2sftjY+6r0sHEsyLU9P3wn5QBXEHakfVG2+TG
	1rTDbOgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo3i6-000LDV-0s;
	Wed, 04 Oct 2023 15:22:50 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo3i3-000LCY-0N
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 15:22:48 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4066241289bso22062615e9.0
        for <barebox@lists.infradead.org>; Wed, 04 Oct 2023 08:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696432965; x=1697037765; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gfNeRUpEPk/uaEnGho91+WI0JWI9p74cmYIPHO+eXr0=;
        b=nDggrDztGt86vVkGboITVqfFxL4pkVAOmUPOdnUU48sUunkazTFJgK2LPur0khmCnL
         qf67rDe2UwnICdqL6aIye0TYfsjY+AT5agGSqDce7kZ0+JuJUJ/MasZiXB32BPmyWq0X
         hh+oT03jtv5kQXdq7Y6ewZ3ibLqwetLAczxKtRgRTgF4eCfuHB5GnPT9f9y9LCodeEVK
         5IntommWW6uCiTsGAmlI1SSiYg7bDDkQc6YwwEf4Vqlk7dz74jEOxcvhbUFRTBmCT/yh
         6taBNPtZlXJv+vVuRZorpT6wzYvDwh3sTW1/5U9j0mOcW8m2HoQjeXNTtBwJvzcS3zQ2
         jFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696432965; x=1697037765;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gfNeRUpEPk/uaEnGho91+WI0JWI9p74cmYIPHO+eXr0=;
        b=g0oSRVSGs51VUHJ/gRKhzBZbgTGPwvW3Q9fN7H/Ldu/Zl3ZzbA+VrZ3kT3yzuvstQw
         GacVB7gasM1GmT64laEf9s/BMyHVHXd533tjXoWiCFs31JBRLY5CVRlGZm1792vN8UYu
         03VUNjFgCmZmw8MJiCX4S3ivYNA69khdp/uyPvjVBI21gpLpfEJ3GiHcgYbfNW94qOzS
         QlLFcGItdoWN2/DoIX+TOhutgyH2z+F7JNkas5hYqJmWFt/0nq1K2vZfzR8AmKJerdKd
         JfWhs/se7UKHARkzO1ceOj5Gxb23u6mSg3UFyaIeyHp2FzZgqdHhoLpniLe3umcSS3sQ
         Zo9A==
X-Gm-Message-State: AOJu0Yxn9zPulfhpDK8yaUINE95kl8OfiSnGLzE1wi95DR/G3Rklelok
	DnlKOnOm4Z5bQZzeXDkd2C/kZm8XjJY=
X-Google-Smtp-Source: AGHT+IHMB7af2iuXhp8lfOKbx2PMYumhAJYlscf/VAj5qbJjeZeRcpaP5lxjBSFPhJ59UbwhDM7vRA==
X-Received: by 2002:a1c:720c:0:b0:3fe:5501:d293 with SMTP id n12-20020a1c720c000000b003fe5501d293mr2468312wmc.30.1696432965124;
        Wed, 04 Oct 2023 08:22:45 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da674f2d002c8094b9b12534ba.dip0.t-ipconnect.de. [2003:da:674f:2d00:2c80:94b9:b125:34ba])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b003fc16ee2864sm1745913wmj.48.2023.10.04.08.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 08:22:44 -0700 (PDT)
Message-ID: <a308192d641c20d4a4576234e145b82c0e5f9d74.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
Date: Wed, 04 Oct 2023 17:22:43 +0200
In-Reply-To: <20231004152051.618427-1-denis.osterland@gmail.com>
References: <20231004152051.618427-1-denis.osterland@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_082247_155191_367EB90D 
X-CRM114-Status: UNSURE (   9.87  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] fixup! raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>

---
 arch/arm/boards/raspberry-pi/rpi-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
b/arch/arm/boards/raspberry-pi/rpi-common.c
index ea3c72fb94..713fad78c9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -289,7 +289,7 @@ static struct device_node *register_vc_fixup(struct
device_node *root,
                tmp->full_name = xstrdup(ret->full_name);
                of_register_fixup(rpi_vc_fdt_fixup, tmp);
        } else {
-               pr_info("no '%s' node found in vc fdtn", path);
+               pr_info("no '%s' node found in vc fdtn", path);
        }
 
        return ret;
-- 
2.39.2




