Delivery-date: Tue, 11 Apr 2023 11:40:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmATw-00HQ1f-DI
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 11:40:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmATw-0007id-8L
	for lore@pengutronix.de; Tue, 11 Apr 2023 11:40:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FO9/FQaY7dfNyopT/0FeDmwn3Q01BdesT8W5Iteiuyc=; b=W2Y6azZ7Fb5Uk1dvjuu0j79pm2
	xqaMJFXHxQ8qs2sR4KEVVZs4nQDg+DqG7wii3vy8aTgahGV07BJkhAcPS2l+YevBiHN5OXzvAQxEl
	HpaCTpLdwDKO61xiPaTZJFa3PujN5WmIxxcm1MMu7XGyV5ar4J4q7NneeyPeaDW1TF1vabzT8nnnw
	RGPRxgYLfQJmbaJ8mxZXu3TgCeEyb/ssoEyj11fim85FjE+1x2F0VWV49LZQnpxtHAbub3hvGfuB6
	x4tN8qZvrtBMLMzKSVRsOSG5RwcLQJQqUl+3rVokD24NDVxV6dCTdZiYB6kKY9aEQnmNpmB0LwnkJ
	cjhLgU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASq-00H6Aj-1D;
	Tue, 11 Apr 2023 09:39:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASn-00H697-16
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 09:38:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASe-0007RH-2z; Tue, 11 Apr 2023 11:38:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASd-00ATJJ-Cw; Tue, 11 Apr 2023 11:38:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASc-005Zw2-4E; Tue, 11 Apr 2023 11:38:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 11:38:44 +0200
Message-Id: <20230411093844.1297004-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
References: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_023857_395023_47B3D205 
X-CRM114-Status: UNSURE (   9.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] scripts: common: drop unused mman.h include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

<sys/mman.h> is for mmap use of which there is none in scripts/common.c.
Drop it. This has the additional benefit that the file is now compilable
with x86_64-w64-mingw32-gcc.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/common.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/common.c b/scripts/common.c
index e2c53c5aef71..88173bc9772a 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -9,7 +9,6 @@
 #include <string.h>
 #include <errno.h>
 #include <stdarg.h>
-#include <sys/mman.h>
 
 #include "common.h"
 
-- 
2.39.2



