Delivery-date: Mon, 08 Aug 2022 08:57:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwho-00FrGV-FU
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:57:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwhp-0001Ga-9r
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:57:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZNoi1KL0awvkUjQut5kWRHYYmC5EJt2APRhWz/AKrMc=; b=469M00aj/lhX39JAGZGmK8EX4J
	BywVhByhkKbgCAn3rEW/FpM9GRvDHH6LEIsVl6XVlvcdBwMqzNTaOiS4w8PB4swnERvHVYDW7iut6
	4JJ07s0PVy8k+ILiAmRB6Yp5xT3UpimMUHouW5Q05bVhw7oZOdreU9E1X1Lm7PzygR1ty6I8J1oV4
	swAZt/2m1SZnSsOQXgkwa8XhecKEc2K4mur6DnQ8e9N0NXd2ZhYvZ27WgDt+fYtX9AvcTz08XiFo9
	mB7Y1GMOqP7gULSDcKJKhVWeMwmLQi8YC1d8hMPC1WcRjvcq2pAXI3oQuWnLPsTwHNGSZVU0auEdK
	1TE1ki+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwgI-00Bxoi-09; Mon, 08 Aug 2022 06:56:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwgC-00Bxo5-UK
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:56:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgB-0000y9-2O; Mon, 08 Aug 2022 08:55:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwg7-002Rm7-UG; Mon, 08 Aug 2022 08:55:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwg9-001tsm-Is; Mon, 08 Aug 2022 08:55:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:55:56 +0200
Message-Id: <20220808065556.453090-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_235600_991353_B9A718C7 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] booti: add debug prints for kernel header parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This proved useful in a debugging session, so make them easily
available with a #define DEBUG for future developers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/common/booti.c b/common/booti.c
index dde1605fe1f1..302d7440abd7 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 2018 Sascha Hauer <s.hauer@pengutronix.de>
 
+#define pr_fmt(fmt) "booti: " fmt
+
 #include <common.h>
 #include <memory.h>
 #include <bootm.h>
@@ -40,6 +42,11 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 	image_size = le64_to_cpup(kernel_header + 16);
 
 	kernel = get_kernel_address(data->os_address, text_offset);
+
+	print_hex_dump_bytes("header ", DUMP_PREFIX_OFFSET,
+			     kernel_header, 80);
+	pr_debug("Kernel to be loaded to %lx+%lx\n", kernel, image_size);
+
 	if (kernel == UIMAGE_INVALID_ADDRESS)
 		return ERR_PTR(-ENOENT);
 
-- 
2.30.2



