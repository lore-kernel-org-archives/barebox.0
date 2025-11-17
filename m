Delivery-date: Mon, 17 Nov 2025 22:30:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nb-0026bf-24
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 22:30:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nb-0001fH-2e
	for lore@pengutronix.de; Mon, 17 Nov 2025 22:30:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7d2XbtLsoFfOoJAyYl7Ie49uw1rIzIRu2xrlee3P+Bc=; b=qm/Iy+rPrxnsJifIS4+Hpj8a56
	ytJyBDMixTug/G5xoqz1L+RFzL01NZi6hgZ8q1JKcrJkTjMyznC1vYZSK+yXIv9ZTm7CL+mm6w8XC
	TREbOwXgIREEL/OciEJsZEXYhJPZ8R8mHaHmVACujLLcohcJlEc6Elkmc4JWSjtqRAtoGWgkOZujA
	d2lO+Z9k+Sydtih+Od5USNK7dgGWlBU/B7ZtVN+EhChGvCuukO4jD8cd63qOLjgUtqt6qOTZmXV1Z
	z6KkcP07FV6ZT8wYlstaVeGh5jRVkuj67LBt0OEFb1Agt+Yzc0Uq9n0ABAIrpF2WZsN92MVreHwKq
	lpLXLPxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6n3-0000000Gso0-1DLZ;
	Mon, 17 Nov 2025 21:29:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6my-0000000GsmG-29EH
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 21:29:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mv-0001Se-3q; Mon, 17 Nov 2025 22:29:29 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-000ybj-2u;
	Mon, 17 Nov 2025 22:29:28 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-00000000iB2-3UB1;
	Mon, 17 Nov 2025 22:29:28 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Nov 2025 22:29:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-simplefb-fixup-v1-1-7824d99b3fb3@pengutronix.de>
References: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
In-Reply-To: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1600;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=S8m/5JsE+1uD45lZPGRnZhh9XmcMYLi4yeMiDi5kDdc=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpG5O3bBhhcMjBc/sbZsRQFMQadzv2mSNVCc/bw
 mRN+PbzMqKJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRuTtwAKCRC/aVhE+XH0
 q1aoEACyXwDv7ZLQA3kSooMEvsICrm8xdu6TfOOpRAoOJSpk9hjGU1gRsX1+HrC5TJEWt+OtZnp
 8NPyy/2ZmyM2oZUbkMX8h5LxmzL6gyLFGutu4AKM449ddIs0Q0ReaNmJiQuQYR+rPsIUTNtpzku
 b/EVbQ82dAnAsUCJ9u0sZpilodoPge9iDc+YMlcKtLdXFqnaRb3OzPfEKGHBiuDj4dFziAsCdqm
 PCqq+9HBUXTkFAFoVMoMQljniP6kohpn+VlK84ZBDfiWEN2l68ltBodSvYXnLA/9uY5pU56TZ1d
 dGIDwsIiWotHNQGzFTlKMZmt15GrnIevs9VCOfuvjjcTWAv91FLM230bD7X7wn4r2H2aHQbPGiP
 Fyx//+6VGuz+DxyiYjIWxgHfp7nw33MiiQFWCzVIO3unhecpVVwYj/rKndBnhuK834hx/4XQCun
 jg0SzMoTK9LD78hhVuqHyE7orJjUWAeV81TEDb1edlvyXJRoee7xEG2sajrrBRuTN27Jvmthgzh
 W2E31SwC6cRdMcNBFiV49e4bB8buMXb1jWRqzsFKz30mXRzTC7wZKTiIWMfLCU2TWtJOQDROBzj
 gGgVBB7N9haUuqIeUYCojWiCq9IDirJhqj0pKO24Z6hF7tKlEBKzAmAV/12R/EO7OhzE93zvZFV
 UruJZ3d38UfCtRA==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_132932_567349_6210407B 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] include: linux: ioport.h: port resource_set_range from
 linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a preparation patch for potential users to follow.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 include/linux/ioport.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 290f9feddcb900d92b61169acc46d7e1ead62c91..e24984f7f722eae5466a4e198457adda6601bf77 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -234,5 +234,36 @@ static inline bool is_reserved_resource(const struct resource *res)
 	return false;
 }
 
+/**
+ * resource_set_size - Calculate resource end address from size and start
+ * @res: Resource descriptor
+ * @size: Size of the resource
+ *
+ * Calculate the end address for @res based on @size.
+ *
+ * Note: The start address of @res must be set when calling this function.
+ * Prefer resource_set_range() if setting both the start address and @size.
+ */
+static inline void resource_set_size(struct resource *res, resource_size_t size)
+{
+	res->end = res->start + size - 1;
+}
+
+/**
+ * resource_set_range - Set resource start and end addresses
+ * @res: Resource descriptor
+ * @start: Start address for the resource
+ * @size: Size of the resource
+ *
+ * Set @res start address and calculate the end address based on @size.
+ */
+static inline void resource_set_range(struct resource *res,
+				      resource_size_t start,
+				      resource_size_t size)
+{
+	res->start = start;
+	resource_set_size(res, size);
+}
+
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */

-- 
2.47.3



