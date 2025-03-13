Delivery-date: Thu, 13 Mar 2025 08:52:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMn-00DTil-17
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:52:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMl-00016c-5I
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:52:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gv8rK9WLA+0ffpluBcFjM87TogooozGx6pR/kOSbkm8=; b=AkJPEvRdqiipn5WhJJiwoaRPi2
	mZpfVDXYP79kAnISH39Ldxd95kv0Nr7qE/O71127Bwbrl2lpGk7DvnGOW/lmZN5y/fwRfbA4nNWSH
	B3Ock0DGMUxOQv+F0IGkms7tLj7FrOKRQ1GEQiP8dCQjvVKb2+UtgV/e+Z6cDDFuRdtV/lLWjXq8Q
	CVZFVVxIadjiRRThFwzUuNY0qlaQTyc6d2BIYPHAq8+dvsWhYO0brxLhL3pUiJVcf5qWfNitXvstU
	AbKUHLKxomY7yn2EhK7/MGVILZyh92eYE3REjD/+fnQYw3z/QHoeH24xjkqzUbO+JMu1fJi2OQyDg
	4+Tk2f6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdMH-0000000ARdL-1bID;
	Thu, 13 Mar 2025 07:52:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd6h-0000000AOlz-0X6O
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-00060O-Sb; Thu, 13 Mar 2025 08:35:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-005UwQ-26;
	Thu, 13 Mar 2025 08:35:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-2G;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:40 +0100
Message-Id: <20250313073445.764875-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003555_175657_15A60A8F 
X-CRM114-Status: GOOD (  10.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/22] ubi: workaround zero division on malformed input in ubi_assert
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A zero hdrs_min_io_size is a bug and will trigger a ubi_assert.
These are critical events, but don't panic the system.

The last ubi_assert will trigger a division by zero. Add a zero check
into it, so it doesn't overlap with the first assert.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 94b4231aadc4..8bb1f0cbb901 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -320,7 +320,8 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 
 	ubi_assert(ubi->hdrs_min_io_size > 0);
 	ubi_assert(ubi->hdrs_min_io_size <= ubi->min_io_size);
-	ubi_assert(ubi->min_io_size % ubi->hdrs_min_io_size == 0);
+	ubi_assert(ubi->hdrs_min_io_size &&
+		   ubi->min_io_size % ubi->hdrs_min_io_size == 0);
 
 	ubi->max_write_size = ubi->mtd->writebufsize;
 	/*
-- 
2.39.5



