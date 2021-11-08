Delivery-date: Mon, 08 Nov 2021 08:54:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTg-0005rC-Vu
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTf-0004Ae-9N
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qU6g42MBW+qCI/ry8aqyLHFQoHi8Oe1LGZhweRXUX+U=; b=yJ3fxKd54x40rM
	/HKnDAsL6fgvscVvHqsaFhSIpss4UJrb/yuOdx2873DwVuaJgJOM1rxEs1qH9csjUfnLS5UZnwJxk
	dSkrosk1J8GnEbtEUawjOySUV9T1GX0EwtrbTJuHnd6s/hvC9OGzGOkaNZV6gq6Mi+LOr42vQ/cTH
	aaYuOmIy9oOkcplzYg2/WPUb+sud8fIuSClYxwhHlC39ungOrepYToN+z9wDkYgUMVdovH4gbB55S
	z0GZvSVrnKTJK3zyl/xFIFurMxe7k4jF+JfFoRxJ/VDm0CByJ8XyW+W9Aw5Ue/Z2VF9Nvmbtnr5wj
	VU2hUO92InUyOI96dZmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzS4-00Fdba-AM; Mon, 08 Nov 2021 07:52:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzRz-00FdZ4-18
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003ko-IT; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009vin-TB; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:06 +0100
Message-Id: <20211108075209.2366770-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235219_114069_81137712 
X-CRM114-Status: UNSURE (   9.83  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] pinctrl: Rockchip: abort probe on lack of aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver depends on the existence of aliases and will read
out-of-bounds if they are missing for a node. Make failure
graceful by aborting before that happens.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 4f0951bb289a..1fdb9a913ad3 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -334,6 +334,9 @@ static int rockchip_gpio_probe(struct device_d *dev)
 	int ret, bankno;
 
 	bankno = of_alias_get_id(dev->device_node, "gpio");
+	if (bankno < 0)
+		return bankno;
+
 	bank = &ctrl->pin_banks[bankno];
 	gpio = &bank->bgpio_chip.gc;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

