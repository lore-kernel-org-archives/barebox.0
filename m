Delivery-date: Thu, 15 Feb 2024 11:36:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZ6a-007JV1-1q
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 11:36:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZ6Z-0008CW-T2
	for lore@pengutronix.de; Thu, 15 Feb 2024 11:36:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AFSC2Ub/XOAIWHMIEtdX478I7LULOWBl6ZFp3klMhK8=; b=kk3uRTB0WDbtbc8mr5SLQHhYqb
	H/Hynu8Z6/L9EgAZanM9yk98WgHJv+jcGLucbC5BgM2bqSsrK4r+/SbKvl3ZtzztVtjI0vt4//zjb
	pCMmkkelCZGfG2THRgvyjNF57f9LNMUxSMypHDnKTSxK54EUYmn5EtVz0qMXF+XalvjaSrgEltqNj
	x5O0foiFcVON5F4vK4P+eVPQIEiJy+CCke01BX/MxBPlPQTOxJ1XWmUBaqYMFDxq2X5JhV6UR45kM
	ePDiBeyKeWpovwuAmCZJjwjzxBr6ZiebSZ6cZ7eT4ROhNQlUMr53Sr+N7a33NOZU5cYYdWVlTUGeg
	evPUnm/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ64-0000000FnsZ-3Al1;
	Thu, 15 Feb 2024 10:36:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ61-0000000Fnr8-3wgA
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 10:36:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ60-000850-Bz; Thu, 15 Feb 2024 11:36:00 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ5y-000rji-Aj; Thu, 15 Feb 2024 11:35:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ5y-00BmHC-0k;
	Thu, 15 Feb 2024 11:35:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 11:33:53 +0100
Message-Id: <20240215103353.2799723-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
References: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_023601_999089_FFD323B2 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] firmware: arm_scmi: call device driver remove if defined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't have SCMI driver remove callbacks like Linux does, so
scmi_bus_type.remove is just an empty function. As no SCMI driver in
barebox populates its remove callback, we can just replace this empty
implementation by the default one of calling driver::remove.

This has the added benefit that the SCMI devices won't be printed on
shutdown when CONFIG_DEBUG_PROBES=y is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/bus.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 5a80911119e0..1d9a0f089b44 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -206,15 +206,10 @@ static int scmi_dev_probe(struct device *dev)
 	return scmi_drv->probe(scmi_dev);
 }
 
-static void scmi_dev_remove(struct device *dev)
-{
-}
-
 struct bus_type scmi_bus_type = {
 	.name =	"scmi_protocol",
 	.match = scmi_dev_match,
 	.probe = scmi_dev_probe,
-	.remove = scmi_dev_remove,
 };
 EXPORT_SYMBOL_GPL(scmi_bus_type);
 
-- 
2.39.2



