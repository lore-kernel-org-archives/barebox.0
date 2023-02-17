Delivery-date: Fri, 17 Feb 2023 15:22:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1ce-00ABDT-4T
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 15:22:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1cc-0005ek-8S
	for lore@pengutronix.de; Fri, 17 Feb 2023 15:21:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/yB8qCi0d+kGwXCYWz0ZbQwSCUFy5YDi62LO2GRs3QY=; b=wr1X0pCfOIimRUcQf/Hbcd2mCY
	q/06r2yZZ1TXFO8E7dtKtVXSx8UcM42ZFtaan26SuH4IImuX7wdY4k/W+YgrghJn0FY8omgWU7J0T
	N0vkZu1ViCdfXIjqgRt2c0EQK9x2y28J3kr8d909f9XVp4UTVquPvDrqtYfGt8z4cUZ2yIuq8URTJ
	ZHl/d6gWx4NaoXPW87E9eyHbzO+03kg1c522J56hn3lJla3JSLBOgqv8FXCaYWTnrdHfRE68qOjU3
	MqLAwUmIAHB73ZKa2Uv6wlEliMO5ybjnverqpaQq/zitt1ez3gVoYjRhn4rz+id3tDNGfkShOjyeX
	URezplYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1bE-00EVtf-FM; Fri, 17 Feb 2023 14:20:33 +0000
Received: from smtpng3.i.mail.ru ([94.100.177.149])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1aw-00EVqR-3P
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 14:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
	h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=/yB8qCi0d+kGwXCYWz0ZbQwSCUFy5YDi62LO2GRs3QY=;
	t=1676643614;x=1676733614; 
	b=OwtPcGblpDY0+DoRcRxDo+gjClmUzBwqGHIDbYPvOtkP1RKmSxk2s2vLX4AmRR5s6uINbfww9AKpXSyt7+4zCJ720x4pY/w3TFsDfcaaYpO7e3+exlHh6sDcgwhEcN3TTsTk2Cr/+AnhyNKcBI/UtTwG0oqlLhkr7oovuYAHF7O7tOmHiKQd1LBvZdu1RRGVh9eaBmMslfUUFjZ3G5eP+rCMH5Z6PlXYxKYASvjkBsAI0qwgrwpOk2aqK+LK1Q8fWMdFsF00jTtoMyBBKyunrV2Jj7nLlTx5gDC6/Fu7lDdSz70mfcITX5vyAnAQtLLkkeO/NCBVM+lvaxmzr1dUow==;
Received: by smtpng3.m.smailru.net with esmtpa (envelope-from <fido_max@inbox.ru>)
	id 1pT1as-0005EF-Q1; Fri, 17 Feb 2023 17:20:11 +0300
From: Maxim Kochetkov <fido_max@inbox.ru>
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com,
	a.kuyan@yadro.com,
	p.mamonov@yadro.com,
	Maxim Kochetkov <fido_max@inbox.ru>,
	Maxim Kochetkov <m.kochetkov@yadro.com>
Date: Fri, 17 Feb 2023 17:20:06 +0300
Message-Id: <20230217142006.60228-1-fido_max@inbox.ru>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: smtpng3.m.smailru.net; auth=pass smtp.auth=fido_max@inbox.ru smtp.mailfrom=fido_max@inbox.ru
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD9806C989EC2150E33845A783FBEA90D4AAFE6C1F93BD43520182A05F5380850406FB9CC72F449C488C877F9BE20493BCAE490959BA707ECEE7F1EB9472881596D
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7AEA4A6B3AFC9B957C2099A533E45F2D0395957E7521B51C2CFCAF695D4D8E9FCEA1F7E6F0F101C6778DA827A17800CE728F774C865CF4B07EA1F7E6F0F101C6723150C8DA25C47586E58E00D9D99D84E1BDDB23E98D2D38B6F1F7B995052D5CE81F5DF33BB692A3554FDD4ED306964F420879F7C8C5043D14489FFFB0AA5F4BFA417C69337E82CC2CC7F00164DA146DAFE8445B8C89999728AA50765F79006375D86F985788DC295389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC8E3C0F74373B9C9F4F6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA7E827F84554CEF5019E625A9149C048EE9ECD01F8117BC8BEE2021AF6380DFAD18AA50765F790063735872C767BF85DA227C277FBC8AE2E8B08F9A42B2210255C75ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C1DE0DAB: 0D63561A33F958A5EAF256456F13B23CFC7DD83FC86DAB0D3A79ABB0D5A0A3094EAF44D9B582CE87C8A4C02DF684249C2E763F503762DF508DC63EAE0DBA7CFC
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34C02783DDD5A45DEF5BDDD4B5D6BD96ACB07A71AA19A9ACF22CE23B54A3E109782AE644FF2C78CBCB1D7E09C32AA3244CBCBF388B2F60266BABBBC1D0E37CF80B33C9DC155518937F8D5DD81C2BAB7D1D
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojezPZE63Hafie5qHYlDzzlA==
X-Mailru-Sender: 689FA8AB762F73933AF1F914F131DBF56A0A50FC8291E4F36BFD432023C90EA498CC072019C18A892CA7F8C7C9492E1F2F5E575105D0B01ADBE2EF17B331888EEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_062014_352600_2605B55F 
X-CRM114-Status: UNSURE (   7.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 1/1] serial: ns16550: move iomem/ioport init after clock init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While probing ns16550 clock provider may be unavailable and
clk_get() returns -EPROBE_DEFER. Next ns16550_probe() attempts
will be failed too because of dev_request_mem_resource() has already
acquired this resource for the device and returns -EBUSY.
So move resource allocation just after clock init. It will let proper
probe for defered clocks on boards with deep probe disabled.

Signed-off-by: Maxim Kochetkov <m.kochetkov@yadro.com>
Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
---
 drivers/serial/serial_ns16550.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 16f3576645..9ce4feed43 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -479,13 +479,6 @@ static int ns16550_probe(struct device *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
-	ret = ns16550_init_iomem(dev, priv);
-	if (ret)
-		ret = ns16550_init_ioport(dev, priv);
-
-	if (ret)
-		return ret;
-
 	if (plat)
 		priv->plat = *plat;
 	else
@@ -511,6 +504,13 @@ static int ns16550_probe(struct device *dev)
 		goto err;
 	}
 
+	ret = ns16550_init_iomem(dev, priv);
+	if (ret)
+		ret = ns16550_init_ioport(dev, priv);
+
+	if (ret)
+		goto err;
+
 	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->tstc = ns16550_tstc;
-- 
2.38.1



