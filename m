Delivery-date: Mon, 09 Jan 2023 09:37:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEnfC-006THy-MV
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 09:37:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEnfA-0000sB-Pc
	for lore@pengutronix.de; Mon, 09 Jan 2023 09:37:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gn2m9SGewGWxuv/yW1EZu3CaPihGRuJRDc3CcmHJ13k=; b=fSxJ4PbDfRlWycbLkCZaYYNiU7
	hDJWhFHGzBr4c45ZUxUFm3C+ipmmkRIse2MAkz4/uhz7tee4iZT7ujAVInP9sgG0FdwtWVkF/dgNt
	8KkLwmEnSO82ybwMoDSS/kbC7rOM++H7ok9doXZMpAdFB+B1U2a7qYDZOz+RyXw8KkZMKlYtzHdgu
	vqFFdJbYtC6q9Hch3BR8TWSMotIKjPssjCMgdnbo5Sa1hXuIOqLXM2DmxOnd2ZSSbcuiIqOm2SbTb
	jvcuMzchOaTzu0jzq4qq+bvRekOe5bUHfo9YwtK/XsCpntpNPXMZOiH/xds4lX9NpJnIdXFYzDozq
	x5kuneGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEndm-000PKa-1u; Mon, 09 Jan 2023 08:36:22 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEndc-000PGv-Gr
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 08:36:15 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id B716F1BF206;
	Mon,  9 Jan 2023 08:36:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Jan 2023 09:35:59 +0100
Message-Id: <20230109083600.1820078-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230109083600.1820078-1-ahmad@a3f.at>
References: <20230109083600.1820078-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_003613_053491_FA830930 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] efi: acpi: add SDT resource before registering device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Registering a device may end up probing the device if a driver is
readily available. This necessitates the device having its resources
assigned before doing the registration.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/bus/acpi.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 354a6119b92f..f69789200633 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -122,18 +122,12 @@ static void acpi_devinfo(struct device *dev)
 
 static int acpi_register_device(struct device *dev, struct acpi_sdt *sdt)
 {
-	int ret;
-
-	ret = register_device(dev);
-	if (ret)
-		return ret;
-
 	device_add_resource(dev, "SDT", (resource_size_t)sdt, sdt->len,
 		IORESOURCE_MEM | IORESOURCE_ROM_COPY | IORESOURCE_ROM_BIOS_COPY);
 
-	dev_dbg(dev, "registered as ACPI device\n");
+	dev_dbg(dev, "registering as ACPI device\n");
 
-	return 0;
+	return register_device(dev);
 }
 
 static struct device *acpi_add_device(struct bus_type *bus,
-- 
2.38.1



