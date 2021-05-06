Delivery-date: Fri, 07 May 2021 00:10:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCT-00034h-8T
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCS-000527-7b
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O1Jj8r34D4mb5xv2vkPpo2/yUwYV025jBCRi+79NIf8=; b=Gf32FxauL+Jj8pvCoTamyoROy
	osLYFR2yREJNZoT2POcnxnQm2RxLEj7sRKojCnMvf7hmi5/Gr2JOFmB5CYWZY+AJvdbmFAY9SNzlH
	qqZ4ZyoyRnBe+olnF7oXh5KCmE3qPQPmDlniElPRXrNrBasSordp5gXkW84vAuC/Trdr+XRjPhd1g
	uxMXNrglYpRZFpu89r5CFHFp1p3VhkGKH7BWITbi4FCDLAXrZJeH4xPssVo2PjS9zvyJi65FIe7X6
	3a5KmoGEEPqRKFmw3lMV4vK3bcK2YLG6sf/LJiUIQLncl+bbR7D/6usJb3zqKg5+vULF+A/SJ6l7r
	v4kQV1PBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBS-005RRw-At; Thu, 06 May 2021 22:09:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB5-005ROb-7z
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XIPYr6d5zIUOWMchSp0vWpd0ZiDcbwkk+d3EZ1Tu2EY=; b=BhKNx1SxY+YyjXky8cZrV1pps1
 aJxbMacVaIvnvJocz/tsfCILECW0GUGUhuVvCrYu93Av2jPKLQz1NiMlG9POBeGhbuk0zQ80StKR6
 vZErA532DVpcAz+fe5NXzKV8Aa6OVQXo9ARpLCFxmaEaW3WLwOX7I3jb7iCp6AigjKuvQ5ay5soI6
 YTeIizsjQySnJofYhZpYZ5dELh3LqnDHrSBjhW4X/I/qzO6GsqdWhe/fmoDbxNX8OnTj/IY8YUkbV
 2a+aC0DZ2Mib1vPYvSQtY8K6kAeZ6aSFN5VvSsYRkKVEj6sWmVTp/IFsjWXsAzBHfFTkawmAaFWO3
 wRKdM7Sg==;
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB2-006QOF-FA
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:01 +0000
Received: by mail-lj1-x22a.google.com with SMTP id w4so9023849ljw.9
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XIPYr6d5zIUOWMchSp0vWpd0ZiDcbwkk+d3EZ1Tu2EY=;
 b=U6k0SFOWrmZRbVNQ5BAUlAI3agS+n2jTQwELHxIum/w6L6a+SBpFLD6DB8ZJgsnWjo
 mIISxZlxny7+U9fccAcioVgcumFbbvOW4DrXNgY+cVMC2Pg9QjvL/vaNMwqFHKigGaiF
 wXsRKYn53uBNYJLpvwNuOeg/7o28RfCT+JH9eNFFE/1P7MK4kliSHERtdqf5mlnovKDr
 1q9Ff2oacSsPC9OjZVDzP0cKzrtRjCSHKS+FuVISjlg642XkmE/pxyURw27Mds7mAVoo
 9vyF5IskOgKbj06e8o9VMryHgdhsvnHE4I3NLIaTjG/JDE9y4mnXjlHIJ9doXnqdhvZB
 NQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XIPYr6d5zIUOWMchSp0vWpd0ZiDcbwkk+d3EZ1Tu2EY=;
 b=UZyqbKIaabGmxLcU1S4blBiMkV2asTULekA4+O6bKdoy6A7Xt4h9zyXVxM0ddnGwVN
 Ftnkna4iFjacSTdNQFtjgYk7luTS25/huPoIvJsgc72SeHH0tZNYR6XzHT5BCRMNYMFy
 LGL6G8/sJwJ8yQ+3NCG0xqHaRjZVxylmG2Z0wPzKADviVPAEPx1LFZ9+nDQo/Lnsbk1X
 hra0LIsM9fpHgWG3T9h+IMtYQo3ROBdqdQkftMxX/Y7+oQVEqbx61txdcSDLpd7ZUJYn
 FZSvyG4a5SVYoB8Z6AAPOHtgE1xhi6bwlyhl7X6TMb9BD0pQMgWWbdYFzGJ9zmSlNsmd
 TCvg==
X-Gm-Message-State: AOAM530ONoGK/HGp+bzgtWcBR05st6MMbz8Dhfra6itlzL5sohn+95lc
 As3bpMCP+1qL9frPL128cw5sfi9P6wXFgA==
X-Google-Smtp-Source: ABdhPJyMXGB98fYGFboG+77t9pvzq6/enl1fORVl2IE/0Ywl/ysEch0bkEZ/BexUVxQ2c+p7Lq9AeQ==
X-Received: by 2002:a2e:b0cb:: with SMTP id g11mr5214987ljl.261.1620338936631; 
 Thu, 06 May 2021 15:08:56 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:27 +0300
Message-Id: <20210506220834.223350-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150900_522734_8BD34226 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/11] RISC-V: boards: erizo: make it possible to use nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/erizo/lowlevel.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index d9edb530b7..fd899c8679 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -3,12 +3,15 @@
 #include <common.h>
 #include <asm/barebox-riscv.h>
 #include <debug_ll.h>
+#include <asm/riscv_nmon.h>
 
 ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
 	extern char __dtb_z_erizo_generic_start[];
 
 	debug_ll_ns16550_init();
+	barebox_nmon_entry();
+
 	putc_ll('>');
 
 	/* On POR, we are running from read-only memory here. */
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

