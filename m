Delivery-date: Fri, 22 Dec 2023 03:13:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGV2g-009OLs-2W
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 03:13:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGV2g-0007Z3-6o
	for lore@pengutronix.de; Fri, 22 Dec 2023 03:13:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xZwuAOHobTtG8TFkoxDAWpHCRDyaFJV0Yjt8uZh8SWQ=; b=ARir3147z+86bbFYA9jvONuKlE
	9UN50ZA7iBx+soDyNbGlIy/n/Jpp4rHRiE3jdKGlAobBnqqz0rAfEkp4ffulX31SaPwcxktqzJ3cC
	nIhA6n8JRIaEgUxSI0ePeECy/LqGeq48LY25GdGXTRBEQaUT0kUCSQaJ4wskNJ3S1vGTVKO26iKiA
	3zRYOZBtUvxvpYjIM2KCugRNuxkwhjBfT9L8JDcfhPaTT8z5UqJKK0U84SUrYQIcOSG6j0jrW+5Ul
	xeYiwP7WY578BPNvAX8jCEVi5kDSeKUjNIIVuA5x9HXaGvzhXmiW7CUxRILTL1hyGPkTT4cGBgv/z
	ihif6u6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGV1k-004f8w-0Q;
	Fri, 22 Dec 2023 02:12:40 +0000
Received: from out-170.mta0.migadu.com ([2001:41d0:1004:224b::aa])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGV1g-004f8X-2V
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 02:12:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqrs.dk; s=key1;
	t=1703211154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xZwuAOHobTtG8TFkoxDAWpHCRDyaFJV0Yjt8uZh8SWQ=;
	b=YqM5XariqTkje2UQPu/yrrwMaPXruh0EJV5+C7e1D8DIl2V+3/Wtoeh64ZCxp2hZJqdqes
	r9jQqUOnumhmXDx13h3oApyi4PDWQ4PcS+AGp5oYst6c99XoKxUZBezXVkGPnXYGyDfqOn
	ggF7jwSXfIzYFBlnNZ2SF8ySF86UdKJhgFO2WVAJ3VuomL4XG2aENG2fGuys/+TYbdxLoR
	/i65xJLVZIuJAyKE2uINoZCQOJA4xEdJVCWwcI9yzej7i6c6rNgU7bL2V49XO7Z3/Ot7LB
	EQfCYvjHYFMc73I6VjfOhgZEMFZ22bSSttzdpneNbL8aZ6icPdxfHIrdZQR/jw==
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 22 Dec 2023 03:12:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231222-pca954x-of-v1-1-d39efe336b06@bang-olufsen.dk>
X-B4-Tracking: v=1; b=H4sIAJDwhGUC/x3MQQqAIBBA0avErBNySqGuEi1Ex5qNikII4t2Tl
 m/xf4NCmanAMTXI9HLhGAbkPIF9TLhJsBsGXHCViCiSNbvaqoheOKedUQaVRoQRpEye6z87r94
 /XY6a/lwAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_181236_972570_8EE8C308 
X-CRM114-Status: UNSURE (   7.01  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c-mux-pca954x: use OF match table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alvin Šipraga <alsi@bang-olufsen.dk>

Allow the mux driver to match against device tree compatible strings.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 6c21b92860f0..fef95fa57eb7 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -255,9 +255,23 @@ static int pca954x_probe(struct device *dev)
 	return ret;
 }
 
+static const struct of_device_id pca954x_dt_ids[] = {
+	{ .compatible = "nxp,pca9540", .data = (const void *)pca_9540 },
+	{ .compatible = "nxp,pca9542", .data = (const void *)pca_9542 },
+	{ .compatible = "nxp,pca9543", .data = (const void *)pca_9543 },
+	{ .compatible = "nxp,pca9544", .data = (const void *)pca_9544 },
+	{ .compatible = "nxp,pca9545", .data = (const void *)pca_9545 },
+	{ .compatible = "nxp,pca9546", .data = (const void *)pca_9546 },
+	{ .compatible = "nxp,pca9547", .data = (const void *)pca_9547 },
+	{ .compatible = "nxp,pca9548", .data = (const void *)pca_9548 },
+	{}
+};
+MODULE_DEVICE_TABLE(of, pca954x_of_match);
+
 static struct driver pca954x_driver = {
 	.name	= "pca954x",
 	.probe		= pca954x_probe,
+	.of_compatible	= DRV_OF_COMPAT(pca954x_dt_ids),
 	.id_table	= pca954x_id,
 };
 device_i2c_driver(pca954x_driver);

---
base-commit: cd2f24268402207a20467ddc41be9865a73ca4f8
change-id: 20231222-pca954x-of-dd6da5a25622



