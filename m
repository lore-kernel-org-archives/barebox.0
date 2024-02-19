Delivery-date: Mon, 19 Feb 2024 09:32:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4b-00E48x-2P
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4Y-0003TN-CW
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n/w+NOsYEvo38pZ52VBb4NQlkWS+PwphMsa5EP3onAM=; b=cqvngB41S6XUr3CNyHhu9uDrZ3
	LA2WJ8VNNt/KwKyrN71kmaAV73rkUDc8i/dCWcfkdFBi6m7xu7Pn9B2d/wj2EqPbrK7gG6mMtKjoF
	JJp4w+8ZV/nG9IscFQn85pagCIzMXMVdvjsd+YbhF3hUQDvqhCg2DEHV1r83Oyb7ELY1axfFcRpWN
	hZtAgMfFkxr+dvdjVHEk5LFK9EqRqRmLZjvc4URk6tnjWPe4ZJDzr//WiVtJEYHayjMq9/oM1RwPN
	3DUdxRhmeV9nS4h/payNBUF9msj7rhE0AYAlS3pHydlUJsLC0g0V7pyDZAh24KTi1vGWVTPxUvyXj
	OI+WWxSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz42-00000009aeF-3M4O;
	Mon, 19 Feb 2024 08:31:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZM-3W1g
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00030r-KF; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-001bl4-6T; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-0J;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:35 +0100
Message-Id: <20240219083140.2713047-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003144_008097_AA04B7DA 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/12] partition: add PARTITION_LINUX_DATA_GUID define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/efi/partition.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/efi/partition.h b/include/efi/partition.h
index 0ca2a72eb9..40ff4c557f 100644
--- a/include/efi/partition.h
+++ b/include/efi/partition.h
@@ -45,6 +45,9 @@
 #define PARTITION_BASIC_DATA_GUID \
 	GUID_INIT( 0xEBD0A0A2, 0xB9E5, 0x4433, \
 		0x87, 0xC0, 0x68, 0xB6, 0xB7, 0x26, 0x99, 0xC7)
+#define PARTITION_LINUX_DATA_GUID \
+	GUID_INIT( 0x0FC63DAF, 0x8483, 0x4772, \
+		0x8E, 0x79, 0x3D, 0x69, 0xD8, 0x47, 0x7D, 0xE4)
 #define PARTITION_LINUX_RAID_GUID \
 	GUID_INIT( 0xa19d880f, 0x05fc, 0x4d3b, \
 		0xa0, 0x06, 0x74, 0x3f, 0x0f, 0x84, 0x91, 0x1e)
-- 
2.39.2



