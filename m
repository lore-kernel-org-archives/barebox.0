Delivery-date: Tue, 02 Jan 2024 18:02:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9Y-000qIH-1C
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9X-0006x9-AL
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vVP93wChl18HE1LwVTU9VOJSpeMccTxawfOR+b0HhBc=; b=JeojVij3Nbzf9URRDNge7m0xFd
	t/pIDwIYDfMjqt8RTqy8s3p3N51ITpbI1Ky1vHUDk2nDa1hhc4sFBFkCBB5iPI+hkmqa+42oXU+d4
	2iek1WzqT5L+oQKc2cva3V09PL3IH4gWUCaYGSfHHHVVcE9Rcabs/jyw5fy5/Dl3GnuQS0ZtF++gm
	ILhAGv/RpjbBaN3uxYx8NALUdw456VBwtvEcR9IXxy4nkwJIMNqY0S2l+L94OQ8SCAzn7Asbr78xW
	2kftDZeJpXncWibaMDehbSi71p+1CShn2UL7AxcyyQkvbBC2Ysyy+MN554JA/a7LO1z3lPTfDO+rF
	OFw/0c3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8b-008Xu3-33;
	Tue, 02 Jan 2024 17:01:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8W-008XrC-0M
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-0006Gl-T3; Tue, 02 Jan 2024 18:01:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrI-95; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-0k;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jan 2024 18:00:55 +0100
Message-Id: <20240102170100.1596372-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090104_335570_F5DB8609 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/7] nvmem: bsec: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The max_register must be a multiple of the register stride, which is not
the case for (384 / 4) - 1 == 95. Instead, we should be setting 380, so
fix the calculation to do this.

Fixes: 094ce0ee7cdf ("nvmem: bsec: correct regmap's max_register")
Reported-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/bsec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 889f14428d59..22e30c6c2e82 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -218,7 +218,7 @@ static int stm32_bsec_probe(struct device *dev)
 	priv->map_config.reg_bits = 32;
 	priv->map_config.val_bits = 32;
 	priv->map_config.reg_stride = 4;
-	priv->map_config.max_register = (data->size / 4) - 1;
+	priv->map_config.max_register = data->size - priv->map_config.reg_stride;
 
 	priv->lower = data->lower;
 
-- 
2.39.2



