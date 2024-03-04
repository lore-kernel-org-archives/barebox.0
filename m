Delivery-date: Mon, 04 Mar 2024 21:21:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEo3-008ipN-2V
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:21:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEo3-0003w0-5W
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:21:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jjfZCzF780qFoENpVXBX7nl58Rr0cdf0Tve/ZtM5vr8=; b=GISv5rQj4x/DR+hVyZFgNpOdMH
	K32kauqgOdAHt2Y1EJHTxWa5jOB93pxEBONrOo3c35A46QINkElMZpOjS03lhHRoX5xRzv+16LroA
	fKLehgcBYamWla4TQHEAFd5GnQArNx/5tSYIRAjtriNa4naAwmG6ose1640tNBG7T4K+rjNyxCGbF
	D2hwtqxuUCQ7NIx7ZLPnQuA+Y+au6MQR+efqvd4TRDnkuU3YnGY/Qop/YWxOLj99YIbRVD32oIqkB
	aUyDUZ1PlsIMEznA1SwQc2zpBHd5TkxuSLxjVDdIEd4tA8CV3icNamYeszQsi02HBYzHrFyBOTAjh
	bxTcqjPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnr-0000000AZaC-2PZN;
	Mon, 04 Mar 2024 20:20:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDac-0000000AIbh-0Ecy
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jjfZCzF780qFoENpVXBX7nl58Rr0cdf0Tve/ZtM5vr8=; b=rdsJXs8Hmn/IvMpr8TksinORWM
	ZOEP+kLK3NBwZBobF83J4R9PV0jrKK+3deWXqeQ2de9id3Ttbq/C3vekyvcM1j9RuMag1fjzdlRnv
	7aLZ1ELxRjif5Vu9hiUIFvBLfgfJoq/ra9Fx8PMxSKZbyMCIUYrK2xFW69jxiDDjYxheoAtcRutIQ
	/NZXlnE+tzO7woOypIH11x67ox0ycbYJksxLn/AZkmXHM7MiBd2tS4q1c2LQ/OpX2W+aWnYFUhCj+
	gQKLwuq2fqONGq5zOTPkNTqKFzQ6+771a8SQt2dY3Bs7TLUOn17t1otlcd+BtYR019bL3+lztKeLT
	FeiiZQPg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaV-00000002BSg-1aTo
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00064d-6p; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PIR-PY; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-2T;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:30 +0100
Message-Id: <20240304190038.3486881-106-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_495264_D6EEFAC1 
X-CRM114-Status: UNSURE (   8.07  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 105/113] efi: devicepath: drop unused macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is used no where, so it can just be dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/device-path.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 433233f38c0d..39221ca369de 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -324,8 +324,6 @@ struct efi_device_path_file_path {
 	s16 path_name[];
 };
 
-#define SIZE_OF_FILEPATH_DEVICE_PATH offsetof(FILEPATH_DEVICE_PATH,path_name)
-
 #define DEVICE_PATH_SUB_TYPE_MEDIA_PROTOCOL               0x05
 struct efi_device_path_media_protocol {
 	struct efi_device_path header;
-- 
2.39.2



