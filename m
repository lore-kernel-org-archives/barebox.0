Delivery-date: Mon, 31 May 2021 09:14:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7e-0002sj-Km
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7d-0003bB-J4
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AQVTrQyBDnzqTffwohnEvDKM8njbeHywMMmNx84L58=; b=zWUBFkL+D/gVi5
	mZIpa+qwZ4NiyW0gIb6OM7i/qPo0MMZprV5IApWtVBQAi0sA8P7sMcy/CuRfJgAeHUXpjPHduZLBY
	SDmWnTWHQxgRTivNb1U2Yi1KcpPLzP+alQFIjPhOpivlIOPEK1614sAab8tsl+manCYsxxOoQiBnN
	Hkl8spkQhfqo7G+12li7MMg3uaYXPgBjfP0xGSAmg6UyrXKrLp20a6XCy6sB29gUWb1tGi8sNsJYA
	kn4K+w/8PNe1lA/U2GrzoDwCcG5e74OKTB4A4yBHZaW5Uwy+1R/boxpkOV1vlleJVaHUhjyQMGAY/
	gUljC2s/JNiQhTblRLLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6Q-00B7Zk-MX; Mon, 31 May 2021 07:12:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6M-00B7Xv-5Q
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Dt-SR; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-000807-ED; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:12:38 +0200
Message-Id: <20210531071239.30653-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001242_275320_0BB76000 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] ARM: <asm/memory.h>: propagate error codes from
 arm_add_mem_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox_add_memory_bank() can fail if the to-be-added memory region
has been requested before. This can happen most easily on i.MX and
STM32MP1 boards:

 - The /memory node in the device tree requests a region
 - The DDR controller driver requests an overlapping region after
   reading back RAM configuration.

This most often leads to error messages down the road, but it can be
difficult to pinpoint the cause. Propagate the error code from
arm_add_mem_device(), so DDR controller drivers can fail their probe
on error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/memory.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 52114d0c4ef5..2279306179af 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -10,10 +10,10 @@
  */
 #define UL(x) _AC(x, UL)
 
-static inline void arm_add_mem_device(const char* name, resource_size_t start,
-				    resource_size_t size)
+static inline int arm_add_mem_device(const char* name, resource_size_t start,
+				     resource_size_t size)
 {
-	barebox_add_memory_bank(name, start, size);
+	return barebox_add_memory_bank(name, start, size);
 }
 
 #endif	/* __ASM_ARM_MEMORY_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

