Delivery-date: Wed, 29 May 2024 11:34:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCFh8-0018YZ-00
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 11:34:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCFh7-0005i8-E1
	for lore@pengutronix.de; Wed, 29 May 2024 11:34:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VWWoF0j2MdQmDIiFrtHAlToBtl/KIzr+RuPuRFlfvq0=; b=2+OYHf458r1TT/vZNOEqMbqg6l
	3hTdweQkBBfbF2Mf2+oXqeHeH+3NVhhZlZT+8hgrtJnJYS263pdlVWEw4MCEcFMmUdSow5qPqDu5m
	ukZqnNsXyCz6BxW/CIKsfPLcb4Gk4l9zbovkd5bOYXmrBRNy5MpvfdLIbKqYW+1tT6LAJY3p1ODfU
	2WIylaYDgrVdqpvg5EEsgg/xIDMSEHRIvTfCqMX3gDL7+w03CKzQxsOTtKuMLcojD9ey0jRaYe3uw
	FYtnL3ubYW2BUEiyuf1ptp7tGTrmnzUloG3quxAQQ00UvoaF3ZW2t+A7RefOVkdEiK5/pvlHZXGyv
	bxoSBkzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCFgN-00000003dog-2rpV;
	Wed, 29 May 2024 09:33:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCFgH-00000003dnr-2ro2
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 09:33:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFgD-0005bJ-Rj; Wed, 29 May 2024 11:33:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFgD-003Rbc-F3; Wed, 29 May 2024 11:33:09 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFgD-0026e4-1M;
	Wed, 29 May 2024 11:33:09 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 11:33:08 +0200
Message-Id: <20240529093308.502072-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_023313_746594_1BFCF712 
X-CRM114-Status: GOOD (  11.53  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] of: add sanity check for machine compatible string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a sanity check in of_get_machine_compatible to ensure we fall back
to the default hostname "barebox" when the machine compatible string is
empty. This prevents scenarios where no hostname is set, which can occur
when starting an STM32 version of Barebox as a second stage on top of
Barebox prior to commit 1da26bfb9da2 ("common: don't fixup empty serial/
machine_compatible strings"). This fallback makes debugging easier in
case someone faces a similar issue.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2213165fd7..62d84786ae 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3416,7 +3416,7 @@ const char *of_get_machine_compatible(void)
 		return NULL;
 
 	p = strchr(name, ',');
-	return p ? p + 1 : name;
+	return nonempty(p ? p + 1 : name);
 }
 EXPORT_SYMBOL(of_get_machine_compatible);
 
-- 
2.39.2



