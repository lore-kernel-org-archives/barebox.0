Delivery-date: Tue, 11 Apr 2023 09:16:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FJ-00HI6O-7U
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:16:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8F6-0001fh-L0
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:16:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V8mZUl3yOjraAH7M644jTDnS9Tta3cCfBGyOmDNImuw=; b=ugpS4SCdUTCMBaZXxLI2neagxh
	oEN7gdND/9uK0BJx/iG1NDFqxgQ91edHJln8QJEDl5Uii+iDZwG8+PRU9hmM0uvSKUvvxy7XzO/9c
	NWyXKcQgm7VXPEZylFg4rSEKF7RD61OwvBS8Gf3vOJfKPiAL3ErXVV6Hq89gvM4kNeSV/yRwPfJU8
	SeVWiQMUssSQ5jBxU2mtIg28IYvx3hdR7ojjIcvoEvgRUUeOFOtxtWRGFunBtmzfK4pShKsIVut6F
	tT0ZmEO8lfvnit2B2Rw/PksTXw/F2U4FOpftS8RXVmD9MyWpn8KsmQ5pCpD4+ip3eZgi2P4kSwnaM
	yJfz7fGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DW-00Gg94-0k;
	Tue, 11 Apr 2023 07:15:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DO-00Gg2o-1h
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000sC-9Y; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-00ARvm-Kv; Tue, 11 Apr 2023 09:14:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNw-Pk; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:32 +0200
Message-Id: <20230411071436.1630752-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001454_566305_3FD31C4E 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 10/14] net: linux/mdio.h: add missing init.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The header defines device_mdio_driver, which requires the macros in
init.h to be usable. Therefore include the appropriate header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/mdio.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index a4aee49d8db3..c441a074ec7f 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -13,6 +13,7 @@
 
 #include <linux/types.h>
 #include <linux/mii.h>
+#include <init.h>
 
 /* MDIO Manageable Devices (MMDs). */
 #define MDIO_MMD_PMAPMD		1	/* Physical Medium Attachment/
-- 
2.39.2



