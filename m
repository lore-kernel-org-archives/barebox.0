Delivery-date: Wed, 11 Jan 2023 13:01:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZnW-008mFS-M7
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 13:01:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZnU-0005ZA-RV
	for lore@pengutronix.de; Wed, 11 Jan 2023 13:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f3WdmUObwtRjAZi6nGi6PHsnUsy2JxXB4XaWo4QXRmY=; b=EMC4teU7HNvxjx3aOIT7g/xL6s
	Row9BYEuJ/aolmpokP1LSeVuXjRhLJzZx0k03iDnNOnk9DB9Wv8TPum3X40WjTLZ8Ue64SvPwgbhk
	K6yT0Qyj7Q9YPLjczXJRJO3hxnHaKv+CVTTrttPxIb3OXKgwdgJG+FwDqzQIcLjdzi1vNRl0Y4lba
	ozszosUpHIntSVuM954E7qGPyYRyjUn0265ZQQiK4zCNsG6RWL1Q2P5lLPY7d1JPzTnsvtXsB8eds
	r6crg2SeWsF+Wl4OC5QZJBI8i0JNu8T7q+ivgmNlc1UdA5/klhhYCU/fpcP4KV0xCET7eHOoQx9Ap
	IhECzytQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZm8-00BBf9-ES; Wed, 11 Jan 2023 12:00:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZm4-00BBeg-SP
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 12:00:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFZm2-0005I6-RH; Wed, 11 Jan 2023 13:00:06 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFZm1-005Hyy-AK; Wed, 11 Jan 2023 13:00:05 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFZlz-004dTW-TC; Wed, 11 Jan 2023 13:00:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 13:00:02 +0100
Message-Id: <20230111120002.1104864-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_040008_936491_01C95F83 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: drop no longer used RW_SIZE/_MASK macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

O_RWSIZE_MASK is what's now used and it's passed as argument to open.
There remain no users of either RW_SIZE or RW_SIZE_MASK. Remove to avoid
confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index e1b1ebde5b5f..957b23dff79a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -128,9 +128,6 @@ struct driver {
 #define device_d device
 #define driver_d driver
 
-#define RW_SIZE(x)      (x)
-#define RW_SIZE_MASK    0x7
-
 /* dynamically assign the next free id */
 #define DEVICE_ID_DYNAMIC	-2
 /* do not use an id (only one device available */
-- 
2.30.2



