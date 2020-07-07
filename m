Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([193.158.56.148])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsq58-00079a-KT
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 16:04:32 +0000
Received: from mail-mta-0.intern.sigma-chemnitz.de
 (mail-mta-0.intern.sigma-chemnitz.de [192.168.12.76])
 by mailout-1.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
 067G1obP024384
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Tue, 7 Jul 2020 18:01:50 +0200
Received: from reddoxx.intern.sigma-chemnitz.de
 (reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
 by mail-mta-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
 067G1lRJ022912
 for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de;
 Tue, 7 Jul 2020 18:01:48 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  7 Jul 2020 18:01:24 +0200
Message-Id: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net:fec: fixed unaligned access and stack corruption
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

on 64 bit architectures, the 'enum fec_type' might not be aligned and
large enough to hold a pointer.  When running barebox without MMU,
this will crash like

| i.MX8MM unique ID: dab4b7491a2c4209
| DABT (current EL) exception (ESR 0x96000061) at 0x00000000fffefeb4
| elr: 00000000ffe14c28 lr : 00000000ffe196e0
| x0 : 0000000000000002 x1 : 00000000fffefeb4
| x2 : 00000000ffe91370 x3 : 00000000bfe1b6e8
| x4 : 0000000000000000 x5 : 0000000011000000
| ...
| Call trace:
| [<ffe14c28>] (dev_get_drvdata+0xc/0x30) from [<ffe1446c>] (device_probe+0x54/0xd0)
| [<ffe1446c>] (device_probe+0x54/0xd0) from [<ffe14530>] (match+0x48/0x58)
| [<ffe14530>] (match+0x48/0x58) from [<ffe14a64>] (register_driver+0xc0/0xd0)
| [<ffe14a64>] (register_driver+0xc0/0xd0) from [<ffe01738>] (start_barebox+0x64/0x90)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/net/fec_imx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 772f930f0d08..30ee7841faba 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -739,14 +739,17 @@ static int fec_probe(struct device_d *dev)
 	void *base;
 	int ret;
 	enum fec_type type;
+	void const *type_v;
 	int phy_reset;
 	u32 msec = 1, phy_post_delay = 0;
 	u32 reg;
 
-	ret = dev_get_drvdata(dev, (const void **)&type);
+	ret = dev_get_drvdata(dev, &type_v);
 	if (ret)
 		return ret;
 
+	type = (uintptr_t)(type_v);
+
 	fec = xzalloc(sizeof(*fec));
 	fec->type = type;
 	fec->dev = dev;
-- 
2.25.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
