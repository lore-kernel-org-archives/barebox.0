Delivery-date: Mon, 15 Apr 2024 10:19:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwHZ7-001iDH-12
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 10:19:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwHZ5-0003Sr-B5
	for lore@pengutronix.de; Mon, 15 Apr 2024 10:19:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WTr3SEg4R+gSNv7IWOJxOtd8spDtMwruHf3vbvLFDbg=; b=Y93zVPv0KcO07fo5rfkIG9JScg
	o/Zl03QGQXStD0HdNGGQPq+vwc7tSCfYbTVZtlo0PT5PwILDrSZhcroC0llopPbnbJebU6vLtDknI
	EtW1XM6KTcoFBrbEaCVJQm/bFJzgeb3XvTTk1ZmkJxEf0Uo/f83yjayHH/LAro8JNTHDsPnQdcOlH
	WzieuJcHDiKHRPjRW3JqKkwvaKrrrfwaACgj4+TMOCKJ7Voa+ObLMn+rA/LQ4ChUeiN0WApDfqR3t
	9r/ddDyd/szppxUGZSG5qyVBanXEktryJ+NsRkmYGW5hoMKreUGz5fLW1/X5y26L2yTAA3QxTMbgk
	0usm+b8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwHYZ-00000007WAK-49Rr;
	Mon, 15 Apr 2024 08:19:15 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwHYX-00000007W9q-0WVB
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 08:19:15 +0000
Received: from mailer.emlix.com (cr-emlix.sta.goetel.net [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id 6622E5F74B
	for <barebox@lists.infradead.org>; Mon, 15 Apr 2024 10:19:06 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
Date: Mon, 15 Apr 2024 10:14:54 +0200
Message-ID: <20240415081458.295448-1-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <9010811a-0bf2-45bb-8efa-7ad27f60f565@pengutronix.de>
References: <9010811a-0bf2-45bb-8efa-7ad27f60f565@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_011913_359026_EAFFD5D5 
X-CRM114-Status: UNSURE (   7.93  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: do not copy properties if they already exist in the destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

---
 drivers/of/base.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b22959dabe..9bb4ae13db 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2346,6 +2346,9 @@ struct property *of_copy_property(const struct device_node *src,
 	if (!prop)
 		return NULL;
 
+	if (of_find_property(dst, propname, NULL))
+		return ERR_PTR(-EEXIST);
+
 	return of_new_property(dst, propname,
 			       of_property_get_value(prop), prop->length);
 }
-- 
2.42.0



