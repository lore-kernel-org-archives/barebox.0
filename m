Delivery-date: Fri, 15 Nov 2024 20:58:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sm-002N6l-12
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sk-0001jV-3u
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dikTZ5LQdcTHCPEkMLZ/WMImlZF7yRqOuMxKGrXsHCs=; b=4BW3KhyoMpeWR9UgzcG2bFBVmb
	R1lw6f/0Urj5rmgDBPM57wY1SlFWOPwitjSbNEiONEKEZ0Ve8e2ocH2NtMqZjuADxHYxDRet2ehJv
	LilfAke6rLyGt6Zijan7v6sPBhSW/vpRdkudoTnWXPVQGiXfUadDgIY3nL08ckSmujkyZwVYqRs7m
	/U+qx0mdnhsMiHoMln9l5wlra/dhzhzcciXVii5KTrciFwB1srJG3PFRNMDvPVrK9I2eA2KbZk+Bk
	v8592+UswBeqaD/bpQwdXkwn4FUtYEWNDtPosqwvNQq3vmjU5Jh2RP7ldvruAkE38B/bWWqAh3sb/
	66umKi+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S7-00000003waE-2DNy;
	Fri, 15 Nov 2024 19:57:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S3-00000003wWv-2uVE
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:57:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S0-00017y-5o
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:36 +0100
Message-Id: <20241115195747.997164-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_115755_726759_FD73DD6A 
X-CRM114-Status: UNSURE (   8.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] spi: cosmetic style fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace <space><tab> by <tab> only. While on it move the forward
declaration on the file top to sync it with the Linux spi.h.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/spi/spi.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 45d6f5931c3f..622de732fa6d 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -10,10 +10,11 @@
 #include <linux/bitops.h>
 
 struct spi_controller_mem_ops;
+struct spi_message;
 
 struct spi_board_info {
 	char	*name;
-	int 	max_speed_hz;
+	int	max_speed_hz;
 	int	bus_num;
 	int	chip_select;
 
@@ -115,8 +116,6 @@ static inline struct spi_device *to_spi_device(struct device *dev)
         return dev ? container_of(dev, struct spi_device, dev) : NULL;
 }
 
-struct spi_message;
-
 /**
  * struct spi_controller - interface to SPI master or slave controller
  * @dev: device interface to this driver
@@ -260,7 +259,7 @@ static inline size_t spi_max_transfer_size(struct spi_device *spi)
 	return min(tr_max, msg_max);
 }
 
-#define spi_master  			spi_controller
+#define spi_master			spi_controller
 #define spi_register_master(_ctrl)	spi_register_controller(_ctrl)
 
 /*---------------------------------------------------------------------------*/
-- 
2.39.5



