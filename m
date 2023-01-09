Delivery-date: Mon, 09 Jan 2023 14:10:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvK-006gIt-2i
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvF-0001jK-8e
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=boPuEtEmQlvGVSZV2Q20TCYzSJLlJFuCKudpvmdoDh8=; b=uPbP5xwDIGeAGc2wGortlom2ez
	jV3DA20619MlKq2pJ+vDZKgs7SvmQ/r2zpJmYGpaEhCu8I13ZLcwi4L6trZsgmO1itTnDm3Pe0+Dj
	Vvx5ISnti8IWY9WTzfisr5cXdMN9CJxyNSgUus9nXldKMPBw3h3tlmcBO3R5toUvTKDXpyAWBPXSx
	lyBfofmtJEVolRcVwK5uEQZcqo756IMCqsv2GHG+iJnhR+IQLMgUG2Hi5KuIXp2DQZt3wKVLqNJEr
	y7KIajTQAO98I/U1Pnp0sIImhOTuBJxCqp6uf6ddR/0Ql663kYXivQRyjFn78K/i4XSxrwK6cRLEy
	jQDk2shA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErto-001Rfo-Ss; Mon, 09 Jan 2023 13:09:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtE-001RQ0-JM
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qe-9k; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt4-004qvh-DD; Mon, 09 Jan 2023 14:08:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGl-Fu; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:18 +0100
Message-Id: <20230109130822.1657470-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050836_720590_14F25362 
X-CRM114-Status: GOOD (  12.62  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/11] driver: always ensure probe of RAM registered with mem_platform_driver
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

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 693d5cb3e580..0ea5799d0dfb 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -442,13 +442,22 @@ int platform_driver_register(struct driver *drv);
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
 int platform_device_register(struct device *new_device);
 
 struct cdev_operations {
-- 
2.30.2



