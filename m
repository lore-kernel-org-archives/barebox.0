Delivery-date: Fri, 11 Jul 2025 14:31:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaCuM-00GOFp-17
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:31:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaCuL-0000IP-Qx
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4rIzLb/Ayqn10SomF+f7ahgvU/EQIrLn+IY3BsVDPMU=; b=AVtIboFiBJXD7kmF8sVb/DjfK8
	Tz6igvf0C6HlMcsoHj5K7fJWLk1+M9Dg2dtB+IeeDcIDJdVkY3jROb6bFYCBHWXtOVn4WhSHeNEKS
	jckImjwRQwNuElSPHj4VepYs2lhi3eQxMyLCcMJCCLIM6or5uUOJ8jUiiUiIUHeYkhfWonZL75Z9g
	xzHQvSNfiU63OLHKshJ+powMnsIBwK227OCqThzPasrqV3QAc+Kycz20aWX2QcxQuHjfdt9ip2h9p
	jPuofj/ueSNIAs3M8Td1nk7sP3gBxFmrfHfQWeBBiJz6rodk0UFF6q94MQMuz0Fg63SFU74L0vnwR
	NtnRbgaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCte-0000000EkHN-30ww;
	Fri, 11 Jul 2025 12:30:34 +0000
Received: from mail-108-mta71.mxroute.com ([136.175.108.71])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCqt-0000000Ejpe-118a
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:27:44 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta71.mxroute.com (ZoneMTA) with ESMTPSA id 197f974a05e0008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 11 Jul 2025 12:27:39 +0000
X-Zone-Loop: 85a2711985e125dc5e1b7c54ca2d7316ef013a7c8b51
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=4rIzLb/Ayqn10SomF+f7ahgvU/EQIrLn+IY3BsVDPMU=; b=SdBFXg+vltp4hYeyvdbH4tzkrY
	+r5gJ01sMN91oN+yvLJB6nERu+YsIGHPyIJKy/1DJi1+p+Se7UN9zwoHu67OBnSSp9qINcLoCEd0e
	XJN3WaYQopmm8RSE6GJJmiUjIocD44C0NBNDLib+7Bd77fJUYfA5CXn6bvmrM60KMvJM7L5IUZ0l4
	ZxohAREwTbETTHMkJsKDM7lS9bQBaYcZXZFZ2VxzfQKH8pKzEtfKuzwf8ye8WfRpL4reVlvAe8jGz
	qgR4wqIYyZNS4gixGj+uvqX/BLOcE1bSBMn8Pdb43YmEzmsPN+au7bdateyOfbl9+7kWQZ877eLAW
	vLqalu+Q==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Fri, 11 Jul 2025 20:27:29 +0800
Message-Id: <20250711122729.108015-3-bo@mboxify.com>
In-Reply-To: <20250711122729.108015-1-bo@mboxify.com>
References: <20250711122729.108015-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_052743_362524_14083D53 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] of: base: fix of_match_node function documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix grammar error, correct structure name, and add missing return
value description.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 drivers/of/base.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1439e55a0a..903adb3670 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -778,11 +778,13 @@ struct device_node *of_find_node_with_property(struct device_node *from,
 EXPORT_SYMBOL(of_find_node_with_property);
 
 /**
- * of_match_node - Tell if an device_node has a matching of_match structure
+ * of_match_node - Tell if a device_node has a matching of_device_id structure
  *      @matches:       array of of device match structures to search in
  *      @node:          the of device structure to match against
  *
  *      Low level utility function used by device matching.
+ *
+ *      Return: pointer to the best matching of_device_id structure, or NULL
  */
 const struct of_device_id *of_match_node(const struct of_device_id *matches,
 					 const struct device_node *node)


