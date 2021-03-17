Delivery-date: Wed, 17 Mar 2021 11:44:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTfN-0004BZ-Qz
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 11:44:41 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTfN-0007R7-1X
	for lore@pengutronix.de; Wed, 17 Mar 2021 11:44:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EoFSoiSqFxiuMN6Hd8txbY7alnbuupzoL16XNBWBsXs=; b=bAjvdBaiXFd4CHSAP1nJFCa69L
	DEhuETS8HWr/cD05T0//UOZjsxd7zIBx6onCIM8Dp3b2ipaL4zkSVuJBpsQtJlOU8dz3P2KjkkYMU
	wybpI43UkYebXr/wLPzDn4hXN0U/Rv6FahY+bOj+xF0coCXgW5rEAJOAvn92PXKNx1fpX4FELwPJ/
	Jtytuvgkhr10EB7MpcUYPTpy3ZMz3aPDyLfbOypNN/xDwJrfCEeUfgJI7W7CWhEDxgHQUc74lPFZP
	5DZlWNTKzHlZlS0lpy7GajelzXBpyGuPljVilCgZlxtEmmmbRneGBF1bf2olr7DdFF91CTlEjAuzb
	4BHgzR1Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTeJ-002wxC-Dx; Wed, 17 Mar 2021 10:43:35 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMTeE-002wwj-CS
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 10:43:32 +0000
X-Originating-IP: 85.220.165.66
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E2DC41C0002;
 Wed, 17 Mar 2021 10:43:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 17 Mar 2021 11:43:22 +0100
Message-Id: <20210317104322.2057679-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_104330_528089_70227370 
X-CRM114-Status: UNSURE (   7.15  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM64: qemu-virt64: migrate to generic DT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise we get a warning.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/qemu-virt/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
index 3e2c00ca1763..d0a7e3da4ff3 100644
--- a/arch/arm/boards/qemu-virt/board.c
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -9,7 +9,7 @@
 #include <asm/system_info.h>
 #include <asm/barebox-arm.h>
 
-#if CONFIG_64BIT
+#ifdef CONFIG_64BIT
 #define MACHINE "virt64"
 #else
 #define MACHINE "virt"
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

