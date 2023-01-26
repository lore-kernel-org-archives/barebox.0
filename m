Delivery-date: Thu, 26 Jan 2023 19:59:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL7TD-0031Ah-7N
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 19:59:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL7TA-0007Kc-MG
	for lore@pengutronix.de; Thu, 26 Jan 2023 19:59:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f4tGfBFfQsOg3o1vEoOJEOMZhW+9bbsGc/ZLNyrqNMw=; b=2Bp1nVuslDjpLJxvy1t0Qn0IU8
	pwOBPZe0x9d9SR4/K966NGTgPHuWi2I1d9nYP46RZgP9QNh1WKVERfw2RQAlRyZVjA27WxmKnbLMr
	+VDpiKHIw3+AbmhvA6sIzlWip/BBkAp1X5FpqxWCcLwkUlp4lpKKx/0hVF+3Qaim4IwL9Ce3f/Enb
	M88xzLSyjfvxCpwUsMN/ARs3WUGHhOIiJgUlKxmDXa+CaxiObsGUa7Pw6V54xTCxVnDvJqxVA8NB4
	WPwIzzq02utGBpB57ZbvJkAMBZqd4l9HfpuijBTYDDmKfry8rx+Y/Kq4e1JB06kx2RnNSxkifrmEw
	0Cof6o0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL7Qp-00CEOv-83; Thu, 26 Jan 2023 18:57:07 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL7Qh-00CEO8-MJ
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 18:57:03 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674759414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=f4tGfBFfQsOg3o1vEoOJEOMZhW+9bbsGc/ZLNyrqNMw=;
	b=XLldJlWAH0HgvV4Afqr8+t5Fbs7Xe6hjYbYz8SaSzfk339VCRVkTgAjl4mNDfXx1yUcqCT
	1YhHsgnlW75T6f7/9DaJUD2K8z8qMKvgj8AIZh5XyllKIeJVCj/C2p0ChHdqc57T/Wj1KR
	8brx3QEv0e6+3eAN9XvBvFSWobjmqQeUZ8r3KuXEmmR4NogDlPzdgUG12eqal4ImHqy0GC
	IM4/sASsTryglAi/tcxNITYsGmAgLLQ1b7LFvLRUtO94CQMpuQNO5dQy+qpLuqy7i138DA
	9bqXdwrQ90A2dSat6wF+zyWx4Hb+eJxBctQ0E7Atk8g0RldSCp5tZm5SBaRqUA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Fri, 27 Jan 2023 05:56:43 +1100
Message-Id: <20230126185643.104049-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_105702_167703_0D573D65 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

udelay isn't provided in the PBL, so use our own definition.

This avoids boards having to define udelay in their code.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/i2c/busses/i2c-imx-early.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
index 6c8bdc7904..fcf279eff8 100644
--- a/drivers/i2c/busses/i2c-imx-early.c
+++ b/drivers/i2c/busses/i2c-imx-early.c
@@ -90,6 +90,13 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
 	return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
 }
 
+static void __udelay(int us)
+{
+	volatile int i;
+
+	for (i = 0; i < us * 1000; i++);
+}
+
 static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
 {
 	unsigned int temp = 0;
@@ -104,7 +111,7 @@ static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
 			  fsl_i2c, FSL_I2C_I2CR);
 
 	/* Wait controller to be stable */
-	udelay(100);
+	__udelay(100);
 
 	/* Start I2C transaction */
 	temp = fsl_i2c_read_reg(fsl_i2c, FSL_I2C_I2CR);
-- 
2.39.1



