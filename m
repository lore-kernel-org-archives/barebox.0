Delivery-date: Mon, 14 Oct 2024 15:27:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L72-004Gs1-1l
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:27:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L71-0002PW-UH
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:27:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mwceGvN/2jI0li4Rlc83COjYYry+WCvU0F46jIOeCrc=; b=v+EiDAtVmdEJkPNyl5g4G0rAxh
	Ywdy8387QoO47qlGMoYwRc6TCk/7jLXJSJLq25FjYMyKwg/1E3L1zUHthHkv5Mnp6PcQVS9u6H2dK
	kbjcAArIrWglWRsip4ya9v+gfnnuIIMgmXwJwPJLmoWSIXeMst0lElpNEm668BJofHON72aZvK2Xy
	ndncfyCF8giCh9biTySUJm0MSODvH0G2XyEXoHLG87gghtJWmOVsGnrawOcLfSUix7sRi0D/QJxTY
	AkpfCTJltCIdWK4zpUkrrwuNCkog9AEIR8ojwu33Vd42lxc3CNy4yodfLXFAv9LnQVEgeFp8OhDuP
	MHbBHoVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6S-00000005GbL-2tzi;
	Mon, 14 Oct 2024 13:27:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JQ1-00000004xhv-0gH0
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mwceGvN/2jI0li4Rlc83COjYYry+WCvU0F46jIOeCrc=; b=WXbTDSTDs/7QlTL+Eut/C58STw
	fEmP8AK7Up6sFEZW/HQmte3QEdpVeZkkm1/YZPQUy0l0CA05ylqFbef7cc60DFSUQ1PWyNQlNa9Lg
	oK+VNYipFI0T7rJjtjMj691oHXup4s5FmojJHBRPmpcRq2XgaaYuCCbzRF94Obl+XryPwVVt/gxio
	M/LB28vjb7EYkPbQhrjh6/bHDLkpvSEgrw2hYI7g9VF9E7w76UTKyAeOpiKbGaiN1Hcj/ot6n9cq9
	GK1DJ5UlXLSYvtn/NhQFGmNqtAXJHQutUVRtEesJOGDQxxpr3hbmRExIT5K5v1C0aoIIyW9MzLg6C
	16QIABZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPy-00000006KQE-0jsP
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000hE-Id; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-001mSC-5X; Mon, 14 Oct 2024 13:39:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-00BrES-0H;
	Mon, 14 Oct 2024 13:39:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:08 +0200
Message-Id: <20241014113912.2826190-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_123918_407757_A05C9340 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 09/13] usb: typec: fix compile test with CONFIG_SANDBOX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compiling the file triggers errors about kmalloc and ARRAY_SIZE being
undefined. As we don't require kmalloc's alignment here, switch it to
a normal malloc and include <linux/kernel.h> for the ARRAY_SIZE
definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/typec/class.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index 7f498550f80e..495ac794622f 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -8,6 +8,7 @@
 
 #include <module.h>
 #include <driver.h>
+#include <linux/kernel.h>
 #include <linux/usb/role.h>
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_altmode.h>
@@ -141,7 +142,7 @@ struct typec_port *typec_register_port(struct device *parent,
 	const char *alias;
 	int ret;
 
-	port = kzalloc(sizeof(*port), GFP_KERNEL);
+	port = malloc(sizeof(*port));
 	if (!port)
 		return ERR_PTR(-ENOMEM);
 
-- 
2.39.5



