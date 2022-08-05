Delivery-date: Fri, 05 Aug 2022 15:02:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwy6-00CWms-UA
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 15:02:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwy6-0006bm-DP
	for lore@pengutronix.de; Fri, 05 Aug 2022 15:02:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uoGdesiqShB4EXG2sltkUghCW7qwKoBy93rccSUlCpI=; b=BKtMWSm8kOjOKXegl8A7xy0lHH
	mdCn+gkyqgEC1wdtfd3ist5krbl/uvkWIFUEnYG8qZP9nJVcmX1BbrcELVApmkvpAX50HozeVwcaa
	1bh7gR6E9PsstFKKZujSEsWffT6DfX+DHyjckAr5LnAtS2VctSNUmOfIrJB/noQRNI0ZJ5Z+erD6+
	OV2hLjO/5F1dU91mmQ4/vNgNZMXRxj9PV/nv0xt0WDCSIOsqKVxqdTwXr3h2zwoyHvVvOlSWEGXJw
	W4jTScUyxokQ77+UtIe4PBBEo/qXgr8I7+H1zb+EAHk2vbCVodHW4dN9AyCpEXu+T6NTyGbwydnpC
	CAgDVCoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwwl-00FEQJ-Mb; Fri, 05 Aug 2022 13:01:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwvV-00FDUS-Le
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:59:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvR-0005xL-8H; Fri, 05 Aug 2022 14:59:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvO-001thQ-9V; Fri, 05 Aug 2022 14:59:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvQ-0055N9-0E; Fri, 05 Aug 2022 14:59:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:59:29 +0200
Message-Id: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055941_791630_52993D69 
X-CRM114-Status: GOOD (  14.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] reset: Fix of_reset_control_get() for consistent return values
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When of_reset_control_get() is called without connection ID it returns
-ENOENT when the 'resets' property doesn't exists or is an empty entry.
However when a connection ID is given it returns -EINVAL when the 'resets'
property doesn't exists or the requested name can't be found. This is
because the error code returned by of_property_match_string() is just
passed down as an index to of_parse_phandle_with_args(), which then
returns -EINVAL.

To get a consistent return value with both code paths we must return
-ENOENT when of_property_match_string() fails.
Signed-off-by: Alban Bedel <albeu@free.fr>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
[afa: ported from Linux 3d81216fde465e76c5eae98f61d3666163634395]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 4355c3415eb0..93fbaeccafd2 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -236,8 +236,11 @@ struct reset_control *of_reset_control_get(struct device_node *node,
 {
 	int index = 0;
 
-	if (id)
+	if (id) {
 		index = of_property_match_string(node, "reset-names", id);
+		if (index < 0)
+			return ERR_PTR(-ENOENT);
+	}
 
 	return of_reset_control_get_by_index(node, index);
 }
-- 
2.30.2



