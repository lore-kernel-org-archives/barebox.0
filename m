Delivery-date: Wed, 14 Dec 2022 11:59:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUS-003YJR-Ry
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 11:59:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUS-0005mY-2z
	for lore@pengutronix.de; Wed, 14 Dec 2022 11:59:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FBXz8BajeFH0/t1Xe24d0T7sjZmH7dGzTsgdTppnp4o=; b=LMYc0hJ6g+6D6rFLNu19mKyiiq
	Q7u1B54Z+aSRtyQPoz7K+31llRqmSGxAjfxgOv0mUdi0nop4MmC8wij27d959SjHLbO/h1pzLRvwG
	gNSWvJ6k7NSZGOzRbBeo5UfXTe06V5iWvHQJksqnf4boqaTj4xsrlbpNey9KQqi8PVUY4hyTx6xtH
	PSWLGKxikZxTA8tFYvN/Bz96W2ZDd9vzuNkXsumQTPUW0CiD43NceqzOxaHrff11InkF0szfL02cj
	u/foqxmlpExqYX7+0neK6FcgmNsBbeN1IPIKaf03vqBGjRfwJT7Al/hPx5vqELnTpB507oVfvZMzY
	vwyyG7Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTH-00FlUs-RB; Wed, 14 Dec 2022 10:58:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPn-4j
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT8-0005DA-TR; Wed, 14 Dec 2022 11:58:34 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004Rv3-HR; Wed, 14 Dec 2022 11:58:34 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003XhK-FY; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Dec 2022 11:58:27 +0100
Message-Id: <20221214105831.844421-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_259143_7792218C 
X-CRM114-Status: GOOD (  11.68  )
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
Subject: [PATCH 07/11] driver: always ensure probe of RAM registered with mem_platform_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Normally, SDRAM controllers are already set up by the time barebox
proper runs. The function of SDRAM controller drivers is thus limited
to reading out configured SDRAM size and registering the result as a
barebox memory bank.

This needs to happen before MMU setup, so the whole of RAM can be
initially mapped cacheable. Therefore, probe order is enforced either
via initcall level or via of_devices_ensure_probed_by_dev_id on
deep-probe-enabled systems. We have this opencoded at two places
and instead of adding a third, just rewrite mem_platform_driver
to do the expected thing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 2386949c312a..f6d99d26454c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -439,13 +439,22 @@ int platform_driver_register(struct driver_d *drv);
 	register_driver_macro(device,platform,drv)
 #define console_platform_driver(drv)	\
 	register_driver_macro(console,platform,drv)
-#define mem_platform_driver(drv)	\
-	register_driver_macro(mem,platform,drv)
 #define fs_platform_driver(drv)	\
 	register_driver_macro(fs,platform,drv)
 #define late_platform_driver(drv)	\
 	register_driver_macro(late,platform,drv)
 
+#define mem_platform_driver(drv)						\
+	static int __init drv##_init(void)					\
+	{									\
+		int ret;							\
+		ret = platform_driver_register(&drv);				\
+		if (ret)							\
+			return ret;						\
+		return of_devices_ensure_probed_by_dev_id(drv.of_compatible);	\
+	}									\
+	mem_initcall(drv##_init);
+
 int platform_device_register(struct device_d *new_device);
 
 struct cdev_operations {
-- 
2.30.2



