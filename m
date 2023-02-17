Delivery-date: Fri, 17 Feb 2023 08:33:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSvFL-009wcS-Pt
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 08:33:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSvFK-00064q-Rg
	for lore@pengutronix.de; Fri, 17 Feb 2023 08:33:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZdaMUULRDOSedlGCii3pxHraLDfr4e171aCuv+OF+Z0=; b=AC8HPMNjFoXVe7i6VirB8L1ESr
	lmoAAP6zlpRaKSI92yP4os6G4HZDfn2nGCLUdgnFolremcfv/jQQKFzyRBiuQzsfljZvRmA5PcQnl
	kz/ULQXvwYiFZmnWEXnxPk6kATYL3EE2TQT31kFDLLAxfwF3I2ueNvtvuSxRE9WySRyUn9Cma1iJY
	hkzissS86nUlKnBBMVOK/8ACK+MZrhrjoe/4pKX96HAju2BZRyrhT18GOFek/uGJNQjjlXuEWqA8C
	mKnlu2n34gIE3new/uMJKvYv0W66Nk7ioV9UEt7+yEjG90/rnuLrygYxpDCLaqBiNSEUpMPuJbbeP
	kPO1g/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSvE5-00D6hl-B6; Fri, 17 Feb 2023 07:32:13 +0000
Received: from smtpng3.i.mail.ru ([94.100.177.149])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSvDz-00D6f0-VJ
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 07:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
	h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=ZdaMUULRDOSedlGCii3pxHraLDfr4e171aCuv+OF+Z0=;
	t=1676619128;x=1676709128; 
	b=gfvzdE2/E+e6pkyM6/1KfII9DB8Xv5ShBtQeoB/UtlMw/FTMuQmqmsOZIoCXO/gLFrtT7r+bmqf3hEgFihgD8Zz8klUpXpc+AEfIkwJiSggjfK7aJnC7dcmUCjt/wTkdjwB+PjLCm+32Jem22Ft3fHsRwOv4bA9vLVYxJMMYkzZpjeFgrNGni1f+OXfL3tkhyryEsZBbWNjU9VZMdpLMIjZJrNkUYRghJWdnrSCDPAmeAmI6hTtQNwmx3PwACHhkX+rdJE6p3WqirIYfSBP7EuOPp/E2YDdhSSCj5QynQr44cN/8ahKBdmhDhL4McJ4Verx0ppCfeGVtvuhYNlreOw==;
Received: by smtpng3.m.smailru.net with esmtpa (envelope-from <fido_max@inbox.ru>)
	id 1pSvDr-0001In-H1; Fri, 17 Feb 2023 10:31:59 +0300
From: Maxim Kochetkov <fido_max@inbox.ru>
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com,
	a.kuyan@yadro.com,
	p.mamonov@yadro.com,
	Maxim Kochetkov <fido_max@inbox.ru>,
	Maxim Kochetkov <m.kochetkov@yadro.com>
Date: Fri, 17 Feb 2023 10:31:57 +0300
Message-Id: <20230217073157.21573-1-fido_max@inbox.ru>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: smtpng3.m.smailru.net; auth=pass smtp.auth=fido_max@inbox.ru smtp.mailfrom=fido_max@inbox.ru
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD9806C989EC2150E3328F2CD81DB6B81556375ED936772CB93182A05F5380850402FAA7F2992B00196CE53B656DD4261D496E9D52D389FA0EE7BE3A11F1603413D
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE75DF2B1F23425CAE5EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006378A9F193E39E334918638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8EDEA3C07D70CC7E229ABD307CE045B256F9789CCF6C18C3F8528715B7D10C86878DA827A17800CE7328B01A8D746D8839FA2833FD35BB23D9E625A9149C048EE41BF15D38FB6CB3AF6B57BC7E64490618DEB871D839B7333395957E7521B51C2DFABB839C843B9C08941B15DA834481F8AA50765F7900637D3C871E5D4EB7B789FA2833FD35BB23DF004C906525384302BEBFE083D3B9BA71A620F70A64A45A98AA50765F79006372E808ACE2090B5E1725E5C173C3A84C3C5EA940A35A165FF2DBA43225CD8A89F83C798A30B85E16B5E1C53F199C2BB95B5C8C57E37DE458BEDA766A37F9254B7
X-C1DE0DAB: 0D63561A33F958A589CEF1C08CC0D3E10587331836C4E14D702022D18AE5449B4EAF44D9B582CE87C8A4C02DF684249C2E763F503762DF500995A9739B629CD5
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D345DB600F8E858000FB0E9D91BC2F4A759272DFB728A902797D4612498ED6574323B9B0EA1B34C12721D7E09C32AA3244CCA4B85A2C81572495B795D6B6114EF8E33C9DC155518937F8D5DD81C2BAB7D1D
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojezPZE63Hafg+/EldrQY26g==
X-Mailru-Sender: 689FA8AB762F73933AF1F914F131DBF5E42471094CD487143DC5EF48CC7A732798CC072019C18A892CA7F8C7C9492E1F2F5E575105D0B01ADBE2EF17B331888EEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_233208_567695_A3B3995B 
X-CRM114-Status: UNSURE (   7.62  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] serial: ns16550: move iomem/ioport init after clock init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While probing ns16550 clock provider may be unavailable and
clk_get() returns -EPROBE_DEFER. Next ns16550_probe() attempts
will be failed too because of dev_request_mem_resource() has already
acquired this resource for the device and returns -EBUSY.
So move resource allocation just after clock init. It will let proper
probe for defered clocks.

Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
Signed-off-by: Maxim Kochetkov <m.kochetkov@yadro.com>
---
 drivers/serial/serial_ns16550.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 16f3576645..6eeb67ca81 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -479,10 +479,6 @@ static int ns16550_probe(struct device *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
-	ret = ns16550_init_iomem(dev, priv);
-	if (ret)
-		ret = ns16550_init_ioport(dev, priv);
-
 	if (ret)
 		return ret;
 
@@ -511,6 +507,10 @@ static int ns16550_probe(struct device *dev)
 		goto err;
 	}
 
+	ret = ns16550_init_iomem(dev, priv);
+	if (ret)
+		ret = ns16550_init_ioport(dev, priv);
+
 	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->tstc = ns16550_tstc;
-- 
2.38.1



