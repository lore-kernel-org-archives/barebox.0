Delivery-date: Mon, 22 Nov 2021 09:50:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51p-0003Rx-1P
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:50:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51n-0000Wl-22
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:50:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3VnuRz4eRLYSdJmb9fjOebxctNkukyPQ1KxQ+k5cPE=; b=0doqbtdyW2qJQY
	3fKBVmEWMxLbI/WmPLjz/HQ4sdfM0JleSkCgovZ9QiMicjvdUWwpj/FxIouJObaYm5Mge4iYMFMit
	13MQd5dr52vMbSeGYWvviWRu65qgbFZopJYEd1CoXdhvh2iS381GqFGS43+QC39G09U+dd1jkqY+6
	qn4XG6O78omxgcZ8rRkD5MK0qqizdz9nG0Eh5X1ceT8U1cTjUpkrjhLJPrMY+lhqxqkm1KYM4pt6c
	DEvkXEqD5b4FjsQ2aMF6QX2pAWKWSJryxUbg8rXjncmscgZJVrbeYT1PSi77oOgCh1IkDKgDDvwO9
	+ODXdXQ4Eze+MjxwbqUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp50M-00FLZr-AX; Mon, 22 Nov 2021 08:48:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzE-JW
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wR-BZ; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfE-KG; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:18 +0100
Message-Id: <20211122084732.2597109-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_663756_D2E0F6BB 
X-CRM114-Status: GOOD (  10.14  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/30] include: <linux/nls.h>: remove duplicate wchar_t typedef
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already define it in <linux/stddef.h> as typedef of an unsigned
short.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/nls.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/nls.h b/include/linux/nls.h
index 62fb7b5a970b..ee0e1ffd5888 100644
--- a/include/linux/nls.h
+++ b/include/linux/nls.h
@@ -2,6 +2,8 @@
 #ifndef _LINUX_NLS_H
 #define _LINUX_NLS_H
 
+#include <linux/stddef.h>
+
 /* Unicode has changed over the years.  Unicode code points no longer
  * fit into 16 bits; as of Unicode 5 valid code points range from 0
  * to 0x10ffff (17 planes, where each plane holds 65536 code points).
@@ -14,7 +16,6 @@
  */
 
 /* Plane-0 Unicode character */
-typedef u16 wchar_t;
 #define MAX_WCHAR_T	0xffff
 
 /* Arbitrary Unicode character */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

