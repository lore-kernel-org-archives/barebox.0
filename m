Delivery-date: Thu, 04 Mar 2021 02:03:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHcOb-0000P4-SQ
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 02:03:17 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHcOa-0000WN-Tm
	for lore@pengutronix.de; Thu, 04 Mar 2021 02:03:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j5cQZ+o8IaKJd9LN7dMCwDwaqZ6CzBf1BumKsIjDDjU=; b=Sk0c2Z3mKF80e3/gsZFXXXYOR+
	I8hvAPXGZbyvt04CMzSHBvmtU10tAlzWsDUG5LeposoAkD2aNq6egIpVaJMF2HEZ7O12xiUOmxZ8R
	+LyMV8KluUaVWDxD8j2O04P/LXGC1Bfj+cfXuXlCzp6QzEXc00ixyIGC3RehhFK/frqOI8up6gyKZ
	RjxcUF2I+Z6J1sgwjJg1rD1P53ZTr3aDbVi4k7+dWAeASAx4BcFjFnAKbWjGM6oAb+mxOjeonGGpE
	7XbKAN/Luz/lg/uvslbzA4IhMdJhniz1pOKbgaCZOzvIDGkCtWNZnAXKOlTRfv3R6Vgl2ZkLXlaE0
	G3LhA5hA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHcMs-007GlJ-Bn; Thu, 04 Mar 2021 01:01:30 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHXxh-006OUQ-1D
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 20:19:17 +0000
Received: by mail-pg1-x535.google.com with SMTP id n10so17200883pgl.10
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 12:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PhCmsbDI1dI2/M5F+ADTQwB8AB3O64z4Iu6E1VIM6Js=;
 b=u4XTY3eJ1t+LOx8l2StUY+NHOSCVTyS2O7VHGBFHsvDJeLelpL2Dx+thHzR2OAABvM
 kGbeb7hediYel80WOG268GBCxXLIbzkXuYa6kKChnXtL9PxPxPLnGCJYm/6XlHD+0bto
 V0rTsxGM+DB3dyRFiETYIkMTt3iZp2IkQndDTefktOOdsl+wQ9xngSGxgTVbNRCXvl/s
 5lfSCzVtnmPfXoVhFnj7h7IuBk8Yt0EQixuBUgJ84sOUBWmW8Bz/q/FiZcja14x20hP0
 e474OWBA8wnPibKzoJxRCkZdzHDjHulHowx32tX68MzziFq557k3IOf+Q2IzeVEBhDIB
 HOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PhCmsbDI1dI2/M5F+ADTQwB8AB3O64z4Iu6E1VIM6Js=;
 b=SG35Mh3kri7fOuKxjeyNmVALkMQf9HXpMjwZzjBvDD+eClWZYnr6a3vzpI9kxjTqhH
 CakST/9cy58v50A7n7YQljWZVTG7nXlhMFRr95N8AQRjkUJlK1S+MUSpnw/VUSh2CzwE
 t8MLdxwNMv/2sRPAtTQLfbo/iBzGQDYvx5w/ri1W2TmlFWF7FDuY6ghHOEF6W4G+KS+w
 gdyFJz+fCs9jcFky06KNuGUWXKpY/IDHu/uOr8yqqXeN9OBUQwi+LkMlwQ2hc+jyn4l6
 85VczHJxHKCw9w7WAb8mlSPf1VKBTbeFQwc+4ZYgb+e30wZ5xd6Q7Pqh36FOv2rR9pMI
 zFuw==
X-Gm-Message-State: AOAM530O73J8Knu4OU72G+4f24srWGD90HB/PRqn47mFXLkjCe5InkYO
 g389VT6PkIuLLMg3MwZmtSsmv6Ir5Kc=
X-Google-Smtp-Source: ABdhPJwPXUhsmgnUI9WzXOxFXkSGPIlJZMxg+kTjeDTGJjMBu6atgSH4HA6CVIpKrg7cnYWP+NS5Qw==
X-Received: by 2002:a62:ed10:0:b029:1e6:2447:f8ba with SMTP id
 u16-20020a62ed100000b02901e62447f8bamr459145pfh.61.1614802750429; 
 Wed, 03 Mar 2021 12:19:10 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id j35sm11118596pgj.45.2021.03.03.12.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 12:19:09 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Thu,  4 Mar 2021 05:19:04 +0900
Message-Id: <20210303201904.3509658-1-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] openrisc: Define the elf binary entry point
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Entry is used by qemu to find where to start booting, we define
this to the 0x100 reset vector as is done by default when the CPU
resets.  This fixes the qemu boot issue.

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/cpu/barebox.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index adb0c22f8..45c5f2553 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -17,6 +17,7 @@
 #include <asm-generic/barebox.lds.h>
 
 OUTPUT_FORMAT("elf32-or1k", "elf32-or1k", "elf32-or1k")
+ENTRY(__reset)
 __DYNAMIC  =  0;
 
 MEMORY
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

