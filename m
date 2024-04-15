Delivery-date: Mon, 15 Apr 2024 14:30:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwLTd-001x1t-21
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 14:30:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwLTd-0004Ax-0x
	for lore@pengutronix.de; Mon, 15 Apr 2024 14:30:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fsdatKSiwwHjgQptkFN/MljQHLJfGB1IE5g3BrSmUBg=; b=IXN/Nlbpl70ne70ewewZ2K4gZZ
	9k/9FIurWdbvlUc6KMhLK6l9aT7MtEJjRDNVAQQl8d9tsnW6WNtk8RN+kQv+q2yMRKKaT9QdAM/8E
	vW+uLwZ/eSlEH1UJkUcGSXF9WKoc8ElUSoN2qokizb3NHhS5efwDisVQ6rUP3sHdld0GGoYD5N8aw
	IpOdlYykYTHpQwdTQ2CqelUyPwDbpPQa7Gq0O5J0h3OW77XlgYhUnjjtQrF7d9gpTsAP+C4sUo+Bh
	mkuaH8qIXbypmharf9yW36qttSLi6BP4vDuTUVC7CtftaQJPnAKV594I8bTJbsqEd9VuecehT6uQb
	OkJTYvZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwLSx-00000008CLD-3oE9;
	Mon, 15 Apr 2024 12:29:43 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwLSs-00000008CK1-1F9E
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 12:29:40 +0000
Received: from mailer.emlix.com (unknown [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id E46F45F74B
	for <barebox@lists.infradead.org>; Mon, 15 Apr 2024 14:29:31 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
Date: Mon, 15 Apr 2024 14:26:04 +0200
Message-ID: <20240415122757.327312-1-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <69c9a97e-80e8-40e9-89c7-b9479f9dfd01@pengutronix.de>
References: <69c9a97e-80e8-40e9-89c7-b9479f9dfd01@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_052938_566624_C70D9D4B 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] of: do not copy properties if they already exist in the destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently `of_copy_property` copies the given property even if a property 
with the same name already exists on the destination node. 
This leads to kernel warnings about duplicate properties:
```
[    0.014063] Duplicate name in chosen, renamed to "stdout-path#1"
[    0.014093] Duplicate name in chosen, renamed to "bootargs#1"
[    0.014119] Duplicate name in chosen, renamed to "phandle#1"
[    0.014197] Duplicate name in reserved-memory, renamed to "#address-cells#1"
[    0.014226] Duplicate name in reserved-memory, renamed to "#size-cells#1"
[    0.014252] Duplicate name in reserved-memory, renamed to "ranges#1"
[    0.014278] Duplicate name in reserved-memory, renamed to "phandle#1"
```
Therefore, the function was changed to return an error if the property
already exists in the destination.
The change does not cause any regressions, because the only usage of
this function occurs within `arch/arm/boards/raspberry-pi/rpi-common.c`
where the original behaviour of the function is obviously unintended.

Signed-off-by: Jonas Richardsen <jonasrichardsen@emlix.com>
---
In the process of creating this patch, we realized that the fixups 
    for the Raspberry Pi are extensively copying properties from the video
    core device tree that are not strictly necessary. We will do some
    work on making the fixups more precise (i.e., only copy specific
    properties, not entire nodes) soon.

 drivers/of/base.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b22959dabe..3192a74ab9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2346,6 +2346,9 @@ struct property *of_copy_property(const struct device_node *src,
 	if (!prop)
 		return NULL;
 
+	if (of_property_present(dst, propname))
+		return ERR_PTR(-EEXIST);
+
 	return of_new_property(dst, propname,
 			       of_property_get_value(prop), prop->length);
 }
-- 
2.42.0



