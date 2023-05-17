Delivery-date: Wed, 17 May 2023 11:42:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfY-0049xZ-JQ
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:42:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfV-0002zD-Fx
	for lore@pengutronix.de; Wed, 17 May 2023 11:42:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRSqdCqJnMRbLoX/80ZVswCiYl62jV3v6+p2nm4Dx9o=; b=REAV8+FxBNSRJy
	KBLGiN8+ZqAQhpWx7IPL8fF1VyoEJlyMrfyosASsNAy/CrcDSrY3G8dyBu5cBt3FxJ6WjC7S+zv6f
	5z/+2/TfPluN5EqRXZxN+rhU1xzlvgNoKgUoMneBphXbLwxs5bIKxR+M9zRDx3lPIBVQ87v+UUFIp
	iu/qY9VYBfg/9tII7mCFsd1XY4+k8axOl+SkibpONaG/rlCQAwJ5Wm7+SjhyaSM7JOJFAcnnvWU08
	jOUCyPgYamGE32SCI7TDNwr+mRjhb49e+42fN6VsO/7NE0F8llAgQj4W5H7u5v2cUrrElPWalu2wx
	Ye9KBCNJCneN0hiZ5N0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeQ-0096ov-0L;
	Wed, 17 May 2023 09:40:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeE-0096bI-2O
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PRSqdCqJnMRbLoX/80ZVswCiYl62jV3v6+p2nm4Dx9o=; b=Mr3kSlcFWGeZzLOsHPPGdNxQvI
	Vky5RBl7JWCVUgnMELIC1JpgXX8W6mzL0ZiWgLS5B9fdQ1JJ/wwMXqr7o84Qg8lndzAJqzF1+pi/7
	vqHR19QvjpjinoprlxYYDbC+QyMML+UphuhMaK85TcD43DZavphV3GmqW0yGmA2+g6H/oxt51S+K6
	RrVaRYkl5DH1VDZ1f4zJCNdgCLx5tY61GyAfzEXkaVer5ZWBjBthY3pKOnr7TgNXr4/USryS+Kq9J
	QpgVMxqSftVn6NbvhFHrlW1kQbBmP+xEAjmNgk8pbb/IWTjAMrvgVu2d/j7/iEwWlluhFOwEiEIfh
	o94QNFEA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4f-00DB2Q-0P
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-000427-KI; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-000o7y-0d; Wed, 17 May 2023 11:03:47 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00GarY-Ng; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:17 +0200
Message-Id: <20230517090340.3954615-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100405_804528_9E32F44B 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/34] ARM: cpu.c: remove unused include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cpu.c doesn't use anything from mmu.h, so drop its incusion.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 5b79dd2a8f..cacd442b28 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -18,8 +18,6 @@
 #include <asm/cache.h>
 #include <asm/ptrace.h>
 
-#include "mmu.h"
-
 /**
  * Enable processor's instruction cache
  */
-- 
2.39.2



