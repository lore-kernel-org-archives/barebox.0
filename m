Delivery-date: Thu, 26 Feb 2026 12:08:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvZEU-005rTG-1W
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 12:08:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvZEU-0000aa-Qu
	for lore@pengutronix.de; Thu, 26 Feb 2026 12:08:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y8TYPlBHXh470SWYE8zDkfusf+tc2pwnaiLk/DGbTxk=; b=LgRAV6J7EG0hUXLgu3DFqzrrna
	v3VbrN1tLf/0odiFBgxvG5VRatSUSr4YwfwqlejJul1SyrFMLK9IZFPohstFgsf7e2iLj/Eiy3nFV
	mwdpAgeufy7aaLRWnOjJoJsyu0jUene9tqu7/DMO2yQJfHVhE0MXjZQC+4Z51dyxwSeAVltmlYdMU
	hCSryu2/FoG5uKORYnWj6joZxmMhMxYjPgwN6kvWUt2n6DPOyFsGDaX0dmDu3QTXzyLsRPd4SWdad
	zw/FXIQFO1JmSqXYQjfKY2J0evZgw9pFlGOOr4tKr7xfYTPH+RA5E1qwXoLcRgfvXe2LnZPx7Ru5W
	XnxsSrZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvZDz-00000005zsP-2iwo;
	Thu, 26 Feb 2026 11:08:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvZDy-00000005zro-1Uuq
	for barebox@bombadil.infradead.org;
	Thu, 26 Feb 2026 11:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y8TYPlBHXh470SWYE8zDkfusf+tc2pwnaiLk/DGbTxk=; b=UL1d51J28AZiaUGVTq1NhQx9KU
	CyUuoVkislXIBCmSleVL9XiNuLs6oYKMddirIHigNzDVcERaNGN5cI0XikrQkC+VefQm03ctRNuvl
	eLuzdm7SZXsJRm30f0jWYTGInZNTYye7CTbjr7YbN+fnRtnWGPfuFsjoXlnh5+71V2V5O4iq+bsZh
	Ygf5x9+/M3C1D0eAZWz1O1LRwgA/P0UJDgmgUncbXf3rbH8mHqncQWb5Qse9BMY17l58OHisTsLSn
	LpaHqjneD5LrsVCwlEE3PRzjNDbf38YfAx7tCsBJx6byBWlz4QEFEY4ZZhqu6yK6LX0DZwDnjgRhF
	CGBNDz3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvZDv-0000000AoNn-1s6U
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 11:08:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvZDs-0000JL-AK; Thu, 26 Feb 2026 12:08:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvZDq-002iXw-2W;
	Thu, 26 Feb 2026 12:08:00 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvZDs-000000027Un-07iy;
	Thu, 26 Feb 2026 12:08:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 26 Feb 2026 12:07:58 +0100
Message-ID: <20260226110758.505072-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226110758.505072-1-s.hauer@pengutronix.de>
References: <20260226110758.505072-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_110803_597820_65756086 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] pbl: fix panic() message printing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

printf() takes variadic arguments, not a va_list. Use vprintf() to
correctly print messages containing arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/misc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/pbl/misc.c b/pbl/misc.c
index 075c6a854b..c0e4473655 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <stdio.h>
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/ctype.h>
@@ -16,8 +17,9 @@ void __noreturn panic(const char *fmt, ...)
 	va_list args;
 
 	va_start(args, fmt);
-	printf(fmt, args);
+	vprintf(fmt, args);
 	va_end(args);
+
 	while(1);
 }
 
-- 
2.47.3



