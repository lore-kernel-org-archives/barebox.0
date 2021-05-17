Delivery-date: Mon, 17 May 2021 09:34:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXlo-0000bf-IF
	for lore@lore.pengutronix.de; Mon, 17 May 2021 09:34:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXln-0005Iy-Qq
	for lore@pengutronix.de; Mon, 17 May 2021 09:34:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dB01mxgSH+TWjtYJt0/H5eWmDJGheRzUeDLUWC/nlzo=; b=KXYRoexlGUzANK
	50LBS6uwcb4aRrUgqOtdZY5kHh0d5LdWkxlFgbLmQr/hZn0hHkzT/qDArzUSBwrirBfq4Ujh5nY+v
	pHP20Ilrv1JfYOnHLr1qFgyVDqAvyjPENO5kZajNFX7IilWrfYJ0ZO6oHrbllwZuJ2HXFU2D/OqDy
	ytrswhcS10QBm33CZmRQe2ViAhYcbOClZLC5ZSyYogG9LQKawt44EGDYlsxIPSpiz3cAHt4gA1hbc
	rdP74qzSrEL/oxE2UpbRgYkceJzaUI3wWyZO1gtfIwV5mE0DkPhbrwEL/ZSxxIBiARYCsD1zSwrQE
	G0lHcYBTEP4SLI9YsbCQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liXkc-00E31Z-Pa; Mon, 17 May 2021 07:33:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXkP-00E30B-Dg
 for barebox@desiato.infradead.org; Mon, 17 May 2021 07:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=pOsg25P5EHGeorJxIu55WjPymFJ6fPqGsLXugb4KfAQ=; b=hmNDjoAo9C/KHnoB7kSf7BhM9c
 EBEUOpJclRAl2G2NAMOcVVORuvdO2+pfvDW0ZuZalTQiGMyac04pnZ7bocri8nuMw+ib8q2CHbrCA
 2lkini1zGKg1r/4S5LDrAXAsbpM20F//ReB+Z3alVizSiCOcr0RGn3MD9LQ0AofxJLaucKSSq0n+u
 X50ASkdH+JuPxbtCzqf0c8mnoXntNcw9KTFydpKlQ2SBfQCrngZ1u70137fkoRSZjBRodk85rH58c
 uJ5AbzvYojDX9J7X8CTNORw2ryV4OtpSJmAMto2+yq2C38Y0Zjvi1PskGdHBqmfz0rKUpg0x1oH5i
 ir5wLQAw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXkN-00DY3J-2I
 for barebox@lists.infradead.org; Mon, 17 May 2021 07:33:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXkL-00059f-An; Mon, 17 May 2021 09:33:01 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXkL-0007i8-2f; Mon, 17 May 2021 09:33:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 09:32:53 +0200
Message-Id: <20210517073256.25684-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_003303_132066_B2CAD1CF 
X-CRM114-Status: UNSURE (   8.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: Remove delphi-poc20 dead leftover
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This directory was merged accidently as part of the Datamodul Realq7
board support. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/delphi-poc20/env/boot/mmc | 5 -----
 1 file changed, 5 deletions(-)
 delete mode 100644 arch/arm/boards/delphi-poc20/env/boot/mmc

diff --git a/arch/arm/boards/delphi-poc20/env/boot/mmc b/arch/arm/boards/delphi-poc20/env/boot/mmc
deleted file mode 100644
index d5e202f395..0000000000
--- a/arch/arm/boards/delphi-poc20/env/boot/mmc
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/mnt/mmc/zImage"
-global.bootm.oftree="/mnt/mmc/oftree"
-global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

