Delivery-date: Fri, 17 Feb 2023 15:06:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Nk-00AALn-JI
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 15:06:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Nj-0002aT-IR
	for lore@pengutronix.de; Fri, 17 Feb 2023 15:06:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nTannJrUvIZ8jw7FrCShxgB1PJkH7k8pLw4v1E1U+rg=; b=pkPSmnyHFdN3znCUCzX5ZuclGJ
	QmXPnLXSpgmp3jvXo9oh2wegH9BvR1ZWu4z5X3Hm7uKfHk/yFLKwGT6aBVh4Uv7huohkGZ6LNi24r
	ppV1wyBeJKYyY697IAmjFAI0rjzjPIwy5QY4OGXESgVHzi5wHAroM1dcgH4UINK9XAFs79nuQC3Lg
	H/TEbQZeZRsJe5FRe/w/VbO8louYE8Vu8gv9OwGp8SZ5Qq0+hKmtepG8fX4E1c0kN5RImRCePBALq
	vCwviKonIwpO2VcIFHO/Yt0NhiWozAKxwMDux5wfQnmtGf1UvlyBpFroVBBowqWitHe/cl1wIlLyF
	Lvq2dtDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1MR-00ERld-Ix; Fri, 17 Feb 2023 14:05:15 +0000
Received: from smtpng1.i.mail.ru ([94.100.181.251])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1ML-00ERkd-Nr
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 14:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
	h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=nTannJrUvIZ8jw7FrCShxgB1PJkH7k8pLw4v1E1U+rg=;
	t=1676642709;x=1676732709; 
	b=SXtgEhwyMduhnKI7biZTYPbWl+BsXU9ale5TUidFHXk2mQI85ZTX75XuYHCIPTRPuTb1YHhiNj3mzKnTANNa8ZdDsQRX2Li0RpMmK0vs+cpU9UHG+JQJnWw9/6zYMsEOWwA8YOE5V5tciogxNj3tFveZQewe3cQN0HPOR9QtIE7gMLNb/596U2qX4TvxcG17REHRZ5djdb8/v1qCQjKhFCtDRf5St7Kq7tG+wpSCehMKYf6gdZNtxrIuCOCVIcAvET0tYQpLGdtLesoYH1pkUNpYHKZNQelRo7h5t7jmf4QDFd+VTo57ztPUgZw/WVSssPT9Gu3M7eA/pufjl40DcA==;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from <fido_max@inbox.ru>)
	id 1pT1MG-0003em-V3; Fri, 17 Feb 2023 17:05:05 +0300
From: Maxim Kochetkov <fido_max@inbox.ru>
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com,
	a.kuyan@yadro.com,
	p.mamonov@yadro.com,
	Maxim Kochetkov <fido_max@inbox.ru>
Date: Fri, 17 Feb 2023 17:05:01 +0300
Message-Id: <20230217140501.56964-1-fido_max@inbox.ru>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: smtpng1.m.smailru.net; auth=pass smtp.auth=fido_max@inbox.ru smtp.mailfrom=fido_max@inbox.ru
X-Mailru-Src: smtp
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9806C989EC2150E3306C371BD2459F3C9654D0ADB2016EE03182A05F538085040EE3FB6B979F5CCD3DD8A780D0395004E55F6A010FF40CFC0917C01FF280AC245
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7922E451CE6E839B1EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F790063716A4A39B750036BB8638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8599FB5812C1220FB4B82A95DD35D5C986F9789CCF6C18C3F8528715B7D10C86878DA827A17800CE71AE4D56B06699BBC9FA2833FD35BB23D9E625A9149C048EE38D4DC57D478E688E5D25F19253116ADD2E47CDBA5A96583BD4B6F7A4D31EC0BC014FD901B82EE079FA2833FD35BB23D27C277FBC8AE2E8B0920FC4EF0AE1D47A471835C12D1D977C4224003CC8364762BB6847A3DEAEFB0F43C7A68FF6260569E8FC8737B5C2249EC8D19AE6D49635B68655334FD4449CB9ECD01F8117BC8BEAAAE862A0553A39223F8577A6DFFEA7C468D16C903838CAB43847C11F186F3C59DAA53EE0834AAEE
X-C1DE0DAB: 0D63561A33F958A54AD63078200F615DA2955F391BBCBE1C33991E9EFB6A27754EAF44D9B582CE87C8A4C02DF684249C2E763F503762DF500995A9739B629CD5
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34E3E1DC0F9BD553095B5B44CD492684B1F29F558DBC556EB639356B877D21B3A0706C8AC59F3097281D7E09C32AA3244C850A177350AA8DBAC3E9BD9E5A54583F6C2483212766842283B48618A63566E0
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojezPZE63HafgZo4PU6odl+w==
X-Mailru-Sender: 689FA8AB762F73933AF1F914F131DBF51994A108C65A20FDD4B43A8BBFAE922898CC072019C18A892CA7F8C7C9492E1F2F5E575105D0B01ADBE2EF17B331888EEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_060509_980287_8B10F5D1 
X-CRM114-Status: UNSURE (   7.37  )
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
Subject: [PATCH v2 1/1] serial: ns16550: move iomem/ioport init after clock init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While probing ns16550 clock provider may be unavailable and
clk_get() returns -EPROBE_DEFER. Next ns16550_probe() attempts
will be failed too because of dev_request_mem_resource() has already
acquired this resource for the device and returns -EBUSY.
So move resource allocation just after clock init. It will let proper
probe for defered clocks on boards with deep probe disabled.

Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
---
 drivers/serial/serial_ns16550.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 16f3576645..bbf783f662 100644
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
+		return ret;
+
 	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->tstc = ns16550_tstc;
-- 
2.38.1



