Delivery-date: Sat, 21 Jan 2023 15:46:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8j-0012kB-8C
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8h-0000Lq-0u
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EjfS6kvqVsqrlee6UsKb2FOHxUC7NYE24wUVIrnmYZI=; b=QM+In1izYsLYBZof0YgjzsO+EE
	FSR4sJjZtJ7Dru3F87yrzNjVRqn1vE7vUu6gCfzMeLeCsYee+wz//QT/N8gOSt7+38NrodIpLL/9d
	IwkijLkxQxY73LZGivFQKc7TNjinPRfApJ9TebOIyPSnhYSkkOUn652/Zx4APIwD/PpZaZ7zs3R7r
	D5j0FZKlsUEUG/a8V0AoBe9zztU/JUxFGLX4wGXsoItqjT8t4HYsFwDpQOp11M8hswVplhiBiul1y
	FoVHjUgP3ozNsfRA5yF83sD0bYluPKyTLdvayDnV14nUINC41Unr3B4Hgsa0ZlvoVmk12SNHheJEs
	KPjRpRpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF6u-00DyEz-7p; Sat, 21 Jan 2023 14:44:48 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF6p-00DyER-Gc
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:44:44 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312282;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EjfS6kvqVsqrlee6UsKb2FOHxUC7NYE24wUVIrnmYZI=;
	b=G+W2YJTJKWYnUildoSn6QV3/gQEbnYf6F3Hn1EbtdY97gSQFNXEKnyxJmYD2JFgvfIIyCf
	a5JfhCFHiwPzQLWv6rrOGMXGP9SACbZMLgBsmK43qDFL1dqICdxtAcH1v+cTNojPXHJPi+
	XGvaqIYMdLgpAUPL35/xLlTl+9xLXTiTr+lhWOWJcTMgiR+DtxcIjsAHqmYeq/nrig3Kc+
	bG+INtjGKCQ9adawQ+b4rIHvgy/qGqOIhu54U7hT/X8a7p/psmmUrpPTASPfKjChsvy3z7
	T2/Qx/qFrNGZOAwYAaxf6MpFrEO2mzHncPpOSiaSfa55KXDtPpWHBj3nFIG4Cw==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:23 +1100
Message-Id: <20230121144429.3524905-2-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064443_731016_5FA0F64B 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] I2C: i.MX: Add early i2c support for i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/i2c/busses/i2c-imx-early.c | 14 ++++++++++++++
 include/pbl/i2c.h                  |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
index 4e0f7e517d..6c8bdc7904 100644
--- a/drivers/i2c/busses/i2c-imx-early.c
+++ b/drivers/i2c/busses/i2c-imx-early.c
@@ -303,6 +303,20 @@ struct pbl_i2c *ls1046_i2c_init(void __iomem *regs)
 	return &fsl_i2c.i2c;
 }
 
+struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs)
+{
+	fsl_i2c.regs = regs;
+	fsl_i2c.regshift = 2;
+	fsl_i2c.i2cr_ien_opcode = I2CR_IEN_OPCODE_1;
+	fsl_i2c.i2sr_clr_opcode = I2SR_CLR_OPCODE_W0C;
+	/* Divider for ~100kHz when coming from the ROM */
+	fsl_i2c.ifdr = 0x36;
+
+	fsl_i2c.i2c.xfer = i2c_fsl_xfer;
+
+	return &fsl_i2c.i2c;
+}
+
 struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs)
 {
 	fsl_i2c.regs = regs;
diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
index d9910f531f..32e456d46b 100644
--- a/include/pbl/i2c.h
+++ b/include/pbl/i2c.h
@@ -16,6 +16,7 @@ static inline int pbl_i2c_xfer(struct pbl_i2c *i2c,
 }
 
 struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs);
+struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs);
 struct pbl_i2c *ls1046_i2c_init(void __iomem *regs);
 
 static inline int i2c_dev_probe(struct pbl_i2c *i2c, int addr, bool onebyte)
-- 
2.39.0



