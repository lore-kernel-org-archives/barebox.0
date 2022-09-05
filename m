Delivery-date: Mon, 05 Sep 2022 15:32:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVCDC-007Xr0-Pn
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 15:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVCDC-0002ZE-Vd
	for lore@pengutronix.de; Mon, 05 Sep 2022 15:32:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mwy08Vo2RfDblbS/YrUBkCG9IlZcw8EUQKy9vd4nqIw=; b=IdYjuwligtBwlsHV+Cv306xrfs
	aVRDVnLi0QVGIDlyc6Jv32oyjBGqx8Fh8dyh8eUfMRXvtO3n8qSWHBuBUk9yDwnM+F8z4c9N7kR1p
	XpVfooSBnp/uOEdHYxdMfIrQk9liPKXOQuJj1kp1m+EUpk8XNntdlYbY37ioCQQhtWyfd4Mbv10Gy
	zIR5zwDsnKYnDbQfFI1ko7dSBSOKtjSc8axIXBjXecPCmSo66wFxscz3i28cZygaXXVbECaN1Ye9C
	Te+mhwTE75iOuwKyBMtjHmZPvyOiQrb6NmoNjSi35s+sOTRbR0VFrihN8YkF3j7ENhirgyyEbuE3s
	JUUaONmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVCBa-003Djw-Ul; Mon, 05 Sep 2022 13:30:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9VT-000ULC-BX
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 10:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Mwy08Vo2RfDblbS/YrUBkCG9IlZcw8EUQKy9vd4nqIw=; b=JyeO1TnvGxtGZjvrfnu08O7blL
	T/eyhoesI9yXfx8s71mnjHEa92QBALMDtpnBaUVshytAB7yiVfYnQpBsqrQoXKy0aNeE1FwsWF1Jn
	pQ9g37xuHKCHBagAvqRg2qi+AxtpKI8Qt3wPEKrHFNK2yh2Didsp21RpZzXW+gb39pHcmsKIGWAuS
	0EFF7+EQ1+ltWPTHnLixpJUniLD7qf5agnmX/KeGpsyoWhZXg1T+XL86QkQxQDELxkpzKsq4YtnY6
	YDKrB5k36lbFPG0dNdKEMy8I8tpiR/FR69KpYHDv5j7MZsoSgjsRt0Id7feyXhJRrz1I+zYCGFIap
	TPPBHUgQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9SJ-009VvI-RQ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:35:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SI-0005if-IO; Mon, 05 Sep 2022 12:35:50 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-0042jf-AR; Mon, 05 Sep 2022 12:35:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-007LCD-PC; Mon, 05 Sep 2022 12:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:35:43 +0200
Message-Id: <20220905103546.1476277-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_113552_058096_51360FE5 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/5] of: platform: optimize of_find_device_by_node when deep probing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe enabled, we are guaranteed that struct device_node::dev
is populated whenever a device had been created for a node, so in that
case, skip the iteration over the linked list of registered devices.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 7f377b8b378a..dc784ea8e550 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -28,6 +28,9 @@ struct device_d *of_find_device_by_node(struct device_node *np)
 	if (ret)
 		return NULL;
 
+	if (deep_probe_is_supported())
+		return np->dev;
+
 	for_each_device(dev)
 		if (dev->device_node == np)
 			return dev;
-- 
2.30.2



