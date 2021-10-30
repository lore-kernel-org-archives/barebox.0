Delivery-date: Sat, 30 Oct 2021 19:56:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsay-00012e-5U
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:56:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsax-0001gJ-BE
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:56:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5yA/RW7K36vbqabxNkcnoEpUoeO7P52V7dgbp3nrdBI=; b=TPvdBFg+vozwiZ
	UOot+RtVu0zxJJODqf/AyXfKsqITkHF8MUAE0WiixBLnYOiDpRgSY0PLxMkt/xjrnrwjASYuie7mB
	YcCdP03olTa72nn6IDd1F1X9C/riQvKcVlXcRxqKklvMi1c3PA969u/g/sHVWvzkaFrvZBxLL5Mri
	aUPJxXQbzA7j4CEBVtdTbGINypb/1CksGL12uqZS3ZhH3MUqTbELNTT6DLZhDRUT4mVpn/Nx99c2m
	0TD8o5QNHTP3BLBIQ8Ea12K18IsrkZJQGHyCAjAr8VIX4m81uGlkkz6O0dpFweajScMFAA/0TBu7j
	BLCXuZHWZb5oKgG0ukOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsZJ-00DM5t-QT; Sat, 30 Oct 2021 17:55:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsZF-00DM4t-1V
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:54:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsZ5-00019N-SQ; Sat, 30 Oct 2021 19:54:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsZ5-009XdQ-D8; Sat, 30 Oct 2021 19:54:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:54:43 +0200
Message-Id: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105457_099967_47DA5143 
X-CRM114-Status: GOOD (  11.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] misc: acpi-test: bump down debug message on remove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ACPI test driver is meant to serve as template for adding more
useful drivers. Printing a message in remove isn't a pattern that should
be copied, so bump the level down.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/acpi-test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/acpi-test.c b/drivers/misc/acpi-test.c
index 1d6814ebcf27..784c80cc5b8b 100644
--- a/drivers/misc/acpi-test.c
+++ b/drivers/misc/acpi-test.c
@@ -47,7 +47,7 @@ static int acpi_test_probe(struct device_d *dev)
 
 static void acpi_test_remove(struct device_d *dev)
 {
-	dev_info(dev, "FADT driver removed\n");
+	dev_dbg(dev, "FADT driver removed\n");
 }
 
 static struct acpi_driver acpi_test_driver = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

