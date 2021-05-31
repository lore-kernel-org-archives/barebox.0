Delivery-date: Mon, 31 May 2021 09:14:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc8A-0002vW-RP
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc89-0003nQ-6Y
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HmJcXZy5vot3GlnAL5bi8W6D6AkAvrAxSVYYErhC4UA=; b=nGmz9onFJ0YM6L
	nNfJy8oArX18YhNYX4L+lPLiLHcRzgV/af+TANpH93p/5STaaHX9+QaAmlBXwUPz0HSzC7pXxcviM
	Y9nSeqsmJQeY9gBMKHrt/kikvfNMIGiB44RPNApvtFqPrzGpBv/ChjW7jyGIqCXgk3H2PkjWr0xzX
	UlY4MPE/Q3I8rhn7hKLhAaaDKdV/CnJNvlWWf9j3BK/Fc02AqR1wj7a9KOjED9ES5Fe9RG9qgclMA
	R28wEVr1hh2L9oe8miL6WlFf6sx/zz8RoDlS4yueHuyWXCDqPzgCtArWUZmWBGSAVxTZbxmG0TO16
	jEipG5MBGZ8PaKDILgHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6v-00B7oO-Qd; Mon, 31 May 2021 07:13:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6l-00B7kS-44
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:13:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6j-0003IY-TH; Mon, 31 May 2021 09:13:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6j-0008Px-LM; Mon, 31 May 2021 09:13:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:13:04 +0200
Message-Id: <20210531071304.32217-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001307_195267_D257F0C6 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH] i2c: designware: fix error message formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some error messages lack a trailing new line. One dev_dbg uses the i2c
adapter's device_d as domain, before it was allocated. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-designware.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index bb9a0b7c4ad4..8508fac7171f 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -274,7 +274,7 @@ static void i2c_dw_setup_timings(struct dw_i2c_dev *dw)
 		if (!(dw->sda_hold_time & DW_IC_SDA_HOLD_RX_MASK))
 			dw->sda_hold_time |= 1 << DW_IC_SDA_HOLD_RX_SHIFT;
 
-		dev_dbg(&dw->adapter.dev, "adjust SDA hold time.\n");
+		dev_dbg(dw->adapter.dev.parent, "adjust SDA hold time.\n");
 		writel(dw->sda_hold_time, dw->base + DW_IC_SDA_HOLD);
 	}
 }
@@ -547,9 +547,7 @@ static int i2c_dw_probe(struct device_d *pdev)
 
 	ic_comp_type_value = readl(dw->base + DW_IC_COMP_TYPE);
 	if (ic_comp_type_value != DW_IC_COMP_TYPE_VALUE) {
-		dev_err(pdev,
-			"unknown DesignWare IP block 0x%08x",
-			ic_comp_type_value);
+		dev_err(pdev, "unknown DesignWare IP block 0x%08x\n", ic_comp_type_value);
 		ret = -ENODEV;
 		goto fail;
 	}
@@ -574,7 +572,7 @@ static int i2c_dw_probe(struct device_d *pdev)
 		ic_con = DW_IC_CON_SPEED_FAST;
 		break;
 	default:
-		dev_warn(pdev, "requested bitrate (%d) is not supported."
+		dev_warn(pdev, "requested bitrate (%d) is not supported.\n"
 			 " Falling back to 100kHz", bitrate);
 	case 100000:		/* FALLTHROUGH */
 		ic_con = DW_IC_CON_SPEED_STD;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

