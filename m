Delivery-date: Wed, 22 Nov 2023 10:52:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5juO-004BK7-29
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 10:52:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5juO-0004gK-NP
	for lore@pengutronix.de; Wed, 22 Nov 2023 10:52:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbn1quhYCaYxmMPsaeWJTdOeKpytINGIIQV3bTOvDqs=; b=45qZSBgQa/nKFe
	HZd9F4N4QcxShNAQbuI+r0kQoaKawiJYgE4qqU6DyyduOqb5hab2m7OBy3vSwMdtEZEpFr/TbX5XQ
	opKpGguvGwrIGin2GUlivbaf53f3mKuPtly1oqMHWFtNxT9yrEcahxt1Hv4xBlo3ft/jkORCa17ad
	6Ub1R9VOAcRNU4tDAvQcwloWlB7XUihzhnSK3Y+6b0MxKe3KlPxvk86WFMlJFrp91bYgq4sb1oobk
	UJD7aSeNm6QpX2XNBXDs+6Sy+XUxCDOPh/d5HF4KmAg1poiTnIB8an9n4uru1ZnIy1AbruXfCntit
	jGG19AXQkR0/ws1REESA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jtG-001MeY-0H;
	Wed, 22 Nov 2023 09:51:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jtD-001MdV-04
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 09:51:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5jtB-0004Pq-Ax; Wed, 22 Nov 2023 10:51:21 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5jtA-00AmV8-Uo; Wed, 22 Nov 2023 10:51:20 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5jtA-00Cnv3-2v;
	Wed, 22 Nov 2023 10:51:20 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 22 Nov 2023 10:51:14 +0100
Message-Id: <20231122095114.3051661-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122094813.qlw2avhut44datru@pengutronix.de>
References: <20231122094813.qlw2avhut44datru@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_015123_054718_B2321801 
X-CRM114-Status: UNSURE (   8.22  )
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
Cc: Roland Hieber <rhi@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] Documentation: dt-bindings: leds: document 'default-on' trigger
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default-on trigger has been supported in barebox since commit
767c6b4a814a2a000f3b (2014-02-28, Sascha Hauer: "led: Add default-on
trigger").

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
PATCH v2:
 * change U+2013 EN DASH to U+002D HYPHEN-MINUS to be consistent
   with the rest of the list (feedback from Ulrich Ölmann)

PATCH v1: https://lore.barebox.org/barebox/20231121162009.160644-1-rhi@pengutronix.de
---
 Documentation/devicetree/bindings/leds/common.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
index 09b4e401bc2c..8bf41f0d649b 100644
--- a/Documentation/devicetree/bindings/leds/common.rst
+++ b/Documentation/devicetree/bindings/leds/common.rst
@@ -9,6 +9,7 @@ Common leds properties
     * ``net`` - LED indicates network activity (tx and rx)
     * ``net-rx`` - LED indicates network activity (rx only)
     * ``net-tx`` - LED indicates network activity (tx only)
+    * ``default-on`` - LED is switched on by default
 
 * ``label``: The label for this LED. If omitted, the label is taken
   from the node name (excluding the unit address).
-- 
2.39.2



