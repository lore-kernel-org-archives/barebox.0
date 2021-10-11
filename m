Delivery-date: Mon, 11 Oct 2021 10:05:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJY-0007Ri-4i
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJX-0006sM-5l
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9zUo+QcNFMw+lK7lKwbEkBS5Ztb6NFJL7uyhO2lzqc=; b=lBVyPK9BAwOzTW
	2Ka6ilP2dVg+akaFgTF26LSdQGQ7Zu/O0XIjEX3H5ER7CY+ZJ+Hn7A7UK8NInDY65Ioejc7UXjCw0
	XSORIhVA3QbUGExqmfa+muc28iLw9OXF+Cw4ttcKo/8F+oHgAEmnYF39qIBruuuXMWKzGImKhl2U+
	wESoGO2TMYaUeNkNC7ww93s2IU/XPC+UX+SnMtYGu9nKMMCu8QP/712lLghPW/mtSVlpj0HIog43J
	2ubxzyz4fWnfyD9sxEmUHBdA7X7bX9WJ3x6Vfbf1h/HsZw7Hv5u2IA5jNDZdV6MwyCGmcJym2GPwL
	akhw+noU5craXqovGlhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqID-008DWu-Ap; Mon, 11 Oct 2021 08:04:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqHt-008DNA-Av
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:03:58 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHk-0006Dr-2W; Mon, 11 Oct 2021 10:03:48 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009i8-9o; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:44 +0200
Message-Id: <20211011080346.37197-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011080346.37197-1-s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010357_425135_9FA49536 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] ARM: rk3568: Detect USB boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The table of register content to bootsource mapping has been taken from
the vendor U-Boot. This table lacks an entry for USB boot. Add this
entry. It's unknown if this entry is entirely correct, it reflects the
value read from the register when doing USB boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/rk3568.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index fcf3cb7053..35c4afd4c2 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -151,6 +151,11 @@ static struct rk_bootsource bootdev_map[] = {
 	{ .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
 	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
 	{ .src = BOOTSOURCE_MMC, .instance = 1 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_USB, .instance = 0 },
 };
 
 static enum bootsource rk3568_bootsource(void)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

