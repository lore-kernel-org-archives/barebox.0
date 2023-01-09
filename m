Delivery-date: Mon, 09 Jan 2023 14:10:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvM-006gJM-Bu
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvJ-0001m3-47
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IilZr/DoU3EBKVdLB2AxHPYdEazpFR9BZlQddGdf4Ko=; b=xu8sBPJ8dn997CLVKdtmUqU8vV
	FvDXbCix3tds/4JkM1UTKaXPS2iWkhEUJGS33E5a/lWjIMtyMZJPc+twTrV5JZTNV0/HV5uhjiafu
	Z5EM3F5OUBJDq16XpQ/Rzw8tUP2D1BpCunHr0OegqAPkjwwjsAICvi8W3xoPTeV5uSzS8wR+kYTmh
	5H8q0Ufr01ZW37EfQlmcxrkXBBEl6RTVSLyv+mDWKae713QUVNu7/sWJtG1H84NxgtBIVz9uuxzgz
	8Zqz6RMPckrOnPaVm41MPOM0Ruh1RAJyeMlWHofpo6PbvuPKAW6EE2KS8uB3apSEyT8SCqQHOMOQW
	6XPH+0Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtw-001Rma-F0; Mon, 09 Jan 2023 13:09:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLl-FZ
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000rR-RH; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-004qw9-8Z; Mon, 09 Jan 2023 14:08:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGi-Fd; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:17 +0100
Message-Id: <20230109130822.1657470-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_779218_A0E3DB0F 
X-CRM114-Status: GOOD (  11.97  )
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
Subject: [PATCH v2 06/11] eeprom: at24: add 24mac402/602 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The 24MAC chips feature an independent address mode for a MAC address.
Linux handles these by registering a device that's just 6/8 bytes of
size and that seeks to a fixed offset. In barebox, we'll just report
the real size and expect code to use the appropriate offset.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/eeprom/at24.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 059a92c718c0..43cd78a88328 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -99,6 +99,8 @@ static struct platform_device_id at24_ids[] = {
 	/* old variants can't be handled with this generic entry! */
 	{ "24c01", AT24_DEVICE_MAGIC(1024 / 8, 0) },
 	{ "24c02", AT24_DEVICE_MAGIC(2048 / 8, 0) },
+	{ "24mac402",	AT24_DEVICE_MAGIC(2048 / 8, AT24_FLAG_READONLY) },
+	{ "24mac602",	AT24_DEVICE_MAGIC(2048 / 8, AT24_FLAG_READONLY) },
 	/* spd is a 24c02 in memory DIMMs */
 	{ "spd", AT24_DEVICE_MAGIC(2048 / 8,
 		AT24_FLAG_READONLY | AT24_FLAG_IRUGO) },
-- 
2.30.2



