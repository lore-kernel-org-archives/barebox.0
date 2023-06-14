Delivery-date: Wed, 14 Jun 2023 15:57:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qze-006j4O-6z
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 15:57:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzb-0005iY-J4
	for lore@pengutronix.de; Wed, 14 Jun 2023 15:57:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JW2B/gprapYjb7l4ndKhj0p78lHot2Nu2FQ6kTSHF7g=; b=OldWuOhltlOExRG5O2sp07HXCj
	bXFcq7dv2adcEIrLFRRACDisk567NJxMtPJjRHsTzwOQ+NJMLjuEk0ttnDAZO3fITyxwcja0QVsEM
	F5rX4fFyS69qiG0U1NPrpPgEis6QnExYu685xB1nyKxJfchaiA7n4g/LPS24brpoVCkCHqVSlRj+I
	xBl4RwKlNAg+0y47z4j019DIlTq4K1mZ5VYfXoAtKIcmIgVArLhbyHmiJlwvDF4XygXHEr8j+G11E
	ROjMcD2W3d3YkXC2gMYk4D3Ocq2ioLWRXWJ7jayBJJOXcflr4j1js4mHECRMioM78rNFhyMh3S+89
	m6vsl+uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QyZ-00Bp8q-0E;
	Wed, 14 Jun 2023 13:55:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QyV-00Bp4b-1D
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyS-0005CJ-R2; Wed, 14 Jun 2023 15:55:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyS-007MxT-2x; Wed, 14 Jun 2023 15:55:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyR-008D8A-Cd; Wed, 14 Jun 2023 15:55:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 15:54:43 +0200
Message-Id: <20230614135452.1884124-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065551_422122_9AA7648B 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] driver: include dev_print and family from <driver.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux drivers get dev_info and friends transitively when including
<linux/device.h>, so have barebox follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/driver.h b/include/driver.h
index 613a0e4cfad2..9b6f01ae41a3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -10,6 +10,7 @@
 #include <linux/ioport.h>
 #include <linux/uuid.h>
 #include <linux/bitops.h>
+#include <linux/printk.h>
 #include <of.h>
 #include <filetype.h>
 
-- 
2.39.2



