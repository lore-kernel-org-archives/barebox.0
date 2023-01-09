Delivery-date: Mon, 09 Jan 2023 12:11:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEq3Y-006bHC-AZ
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 12:11:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEq3W-0000wd-Ey
	for lore@pengutronix.de; Mon, 09 Jan 2023 12:11:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M9mu87U7l4dUYYX5k69QpHbMhIX1k4uG8DYLZ1CMUBA=; b=ywfeAzld+j8KAz1xAsHw/Broam
	77Z9Be2Rt7AWUkIKFUX/NB1FBDGpD8HQY236sJc/IDKG7+3Pj6UU3pvLSedad3R7/7RM2rb2Ym3tg
	eU0bDkA98200//3u9g46OUXeuekw7DNV/9hMa6CKe7rBOq4S4T6RAb3l59Q/YxbPH5gQQLaAzfPWq
	BmMRH1Peac73rkUSNbYbdO5v5W2fHJ0bEHNLn6P0q4tjHhvToriJMQAnoZB85Wi13Fy1eKpjfk5OZ
	QJwmozTHcWaKIAasXT20Edf+SERV3jqKHsGKWadpxtdo9trA6XJ7sikJ97jlqZGJvv03x2Pd8r2Iy
	BxqCL5ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEq27-000zAL-Sr; Mon, 09 Jan 2023 11:09:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEq1z-000z6I-6Y
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 11:09:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEq1s-0000LX-FB; Mon, 09 Jan 2023 12:09:24 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEq1r-004pqb-Rt; Mon, 09 Jan 2023 12:09:23 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEq1q-006fjB-UY; Mon, 09 Jan 2023 12:09:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 12:09:21 +0100
Message-Id: <20230109110921.1590312-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109110921.1590312-1-a.fatoum@pengutronix.de>
References: <20230109110921.1590312-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_030931_321475_76FB3967 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fixup! Rename struct driver_d to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

  - Out-of-tree patches often add a board driver, which may use the
    old device_d/driver_d naming. Especially with bisecting, this can
    be a hassle

  - We may split up some parts of struct device into a new
    struct platform_device like Linux does and we don't want
    to break out of tree patches twice.

Thus add the old names as aliases for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/driver.h b/include/driver.h
index dfe1878163ac..2a12952215de 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -123,6 +123,7 @@ struct driver {
 
 /* Legacy naming for out-of-tree patches. Will be phased out in future. */
 #define device_d device
+#define driver_d driver
 
 #define RW_SIZE(x)      (x)
 #define RW_SIZE_MASK    0x7
-- 
2.30.2



