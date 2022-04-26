Delivery-date: Tue, 26 Apr 2022 08:48:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njEza-00FbMR-QR
	for lore@lore.pengutronix.de; Tue, 26 Apr 2022 08:48:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njEzX-0007RX-WA
	for lore@pengutronix.de; Tue, 26 Apr 2022 08:48:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=llJPxyLEUBP8JSzflW9XCpYamFRK91/30q6MNrLirOU=; b=XsV+a6jpKdLsNt
	ntPFlA5tNEz/1NkfmeqdvwvzGThnufhy5Clq5kbNItIIg2BqENQMvOljoru/axZaNsSl++oEIS4W9
	62CLDpfw+I/CbIWI7OOLXeDOE2fJOXCkk9MMNBq8Mg6ziBgHCphVv53wB05pWO2YOsSG6j7uyXpu3
	dPF1S3EtKb0oNOHB2gn083Q505GxyzNuxidYAgIHoDLmf5vrMQGTfSW3edu6AzeNU1ed/2jPEIx3N
	4Pt9rWZrwIarxjTmyEAoqH6aULCIpXtt8j4CNDEBECq8Xwc8RiFAfxHan29rOBIileKomDJqGqpWT
	rtou3sj3zf5+sI4f5isw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njEy3-00Cnsk-VV; Tue, 26 Apr 2022 06:46:36 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njExx-00CnpE-E5
 for barebox@lists.infradead.org; Tue, 26 Apr 2022 06:46:31 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 697991C0005;
 Tue, 26 Apr 2022 06:46:24 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 26 Apr 2022 08:46:19 +0200
Message-Id: <20220426064619.422478-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_234629_647119_CC4C8335 
X-CRM114-Status: UNSURE (   8.57  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] gpiolib: remove declaration of now unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit f349b662674e ("gpio: allocate dynamic gpio numbers
top down"), the variable is now unused and warned about, so remove it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/gpio/gpiolib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index c9b33bcd6c2b..10cb7b389555 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -609,7 +609,7 @@ int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags)
 
 int gpiochip_add(struct gpio_chip *chip)
 {
-	int base, i;
+	int i;
 
 	if (chip->base >= 0) {
 		for (i = 0; i < chip->ngpio; i++) {
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

