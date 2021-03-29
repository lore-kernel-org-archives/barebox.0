Delivery-date: Tue, 30 Mar 2021 03:18:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR323-0006Z9-BX
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 03:18:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR320-000772-Tx
	for lore@pengutronix.de; Tue, 30 Mar 2021 03:18:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HK4PUDL5wPKKnLsbohyPMioCncVIfLJn72RtNffvobo=; b=BS+PSVRiJnOKKXXNM/ne2XJg3
	jf1PviUcjPuB1lpeBHZTAvpuWM1c2+h+f29G0lmfPbUw2G+tCA5hYr8mVM610HE5LaIyuy4fjsm7T
	CGCxMpW4PTvTUd61D78t4K9EYDBqaoFB7MRveb8JVzkrcrvcXxxd64HVfKBrdJTueMESQmHr7wLO3
	KVQLiHCh7feWw/lwmYDhjwJHOlSlBxsPFNGlccYR38RQU/8Ak5pbSJxyNBIt3QNZrQ6n6f92e3xzE
	bBAhmEVoNNREP1y9iAzxTX64Au6vk92qIdL7b8PTSiucTrOjagORoz7bPdhuPzIy+h5SkEADfqqkl
	7S9nqXZ3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR30V-002KHr-6V; Tue, 30 Mar 2021 01:17:23 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR0Pu-001gN2-8B
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 22:31:28 +0000
Received: by mail-lf1-x135.google.com with SMTP id v15so20787417lfq.5
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 15:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vM5zK+ZdHEoCsCBv451S8n0xLyYMsU5DhH6zI+hJMKU=;
 b=rFBJwSXc7ZlhLTd5H83kSjEFlim5Bi30drRI98ndHfrscox65fl4HTkFX137QDemhP
 65yj8vyBSOtl+MGoqgn413ILbmWc8RUSMb0RfklOqFv5CXW7az2x0EHZbuwbga5SMRiK
 mtD0seOYQbmzGoHatF4dC7vK5oDdDtrrBUQElKWpfBHNdT48iniKyBzyQzBNzD1dPJLk
 qDJYgJ4Acw4xugZZ6utXEm4JFe5EeWcy4PUTT9Ik41SeHYbwtSrHl9kU+M+pu0PccFoK
 O6lkGUPMwFNiUB4FvI9kqvIHfvM6iPsPuW49MtxBlbOlP/gns28EExofF+i3VltswVrZ
 IoXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vM5zK+ZdHEoCsCBv451S8n0xLyYMsU5DhH6zI+hJMKU=;
 b=hhHDNb3KYSW14HAB6WXOGnphPGIbTqykFQuw5P0DxJva/g1UfgH2uLh31lzpS7mKlI
 qPukLiq2yqJM6SWonaZ3/x/auQaSs1sdo9cUqhdQhsu3HZk1b3mnv8sY4IGicWtgaV+m
 xbn6j4aEahlDV/E82LGeCaEi+QLAyi4iq52M1WgtawXzXfftd0EjjL+keCX+DRph/WpW
 XG04cDlTuTXbJ4wa3pbmDvNH/nA6HTyKV2elIeCk6uNm3YUgSl3FjUU4l1YcKt9JcUn7
 Eg+PuuoJtVhr0AgnApNZOElakbKk1gm3Ah/1PMVkcFJImlQiPkQ9sCsgTbs0sOhUOanM
 cHSA==
X-Gm-Message-State: AOAM531PbZBffxFF/dnyxenXz7dyY1ttKMXaEqwyfMgPHLqzqF+xxIMr
 D3/EFgA0NOY1LKrJYhgVM23epP7YOX0=
X-Google-Smtp-Source: ABdhPJzADGU0fwiF7RXhinMpQLgGKH18uptprJDMf89GY2BfXyJinlSw5GJzrpfs2F+HjA4/o7S7Qw==
X-Received: by 2002:a05:6512:2117:: with SMTP id
 q23mr17676620lfr.423.1617057085355; 
 Mon, 29 Mar 2021 15:31:25 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id r9sm691710lfn.247.2021.03.29.15.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 15:31:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 01:31:19 +0300
Message-Id: <20210329223120.442256-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210329223120.442256-1-antonynpavlov@gmail.com>
References: <20210329223120.442256-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_233126_404442_709C9302 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] RISC-V: erizo.dtsi: set timebase-frequency = <24000000>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch makes it possible to use drivers/clocksource/timer-riscv.c
with erizo. Without timebase-frequency initialized we have
this warning at startup:

   RISC-V system with no 'timebase-frequency' in DTS

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/dts/erizo.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
index e854a48ae5..228711bd69 100644
--- a/arch/riscv/dts/erizo.dtsi
+++ b/arch/riscv/dts/erizo.dtsi
@@ -20,6 +20,8 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		timebase-frequency = <24000000>;
+
 		cpu@0 {
 			device_type = "cpu";
 			compatible = "cliffordwolf,picorv32", "riscv";
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

