Delivery-date: Fri, 10 Mar 2023 10:44:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZIA-00FvjK-Ng
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZIA-0006mn-Kr
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3V8L+PcATT8WV6DlgDczLOF/MFa+3QpCOFKLt8G05c=; b=IPnuLiCohQOAyIwmpweGX3BIK8
	48SKufyxvASBlER1pIvy1WurzagccjxE3so/gUeQ0bn4i7yeTMQqofBc1PXhCwZR0k35WOAyJ3gmx
	EKFVzlnpnJyV3oqRiHehv2yMo1pv4ieu0ww4OeG1Z604QO45rdErxODeE6iW7lm6Ezwy3sNe3QxtX
	uAFPhBPnoExlMaUeb7HoQedY55wMDO9/OHMz/RZfBTwmDIiiqqoa5kckCkXU3ucEqGODV5z22H2e2
	emh4RhnidBgs2KuB3TbyHycT5+7Q8+/z3S+ZPSqd2qg8qMjxLYJygtNCVdSekEg5j5HIVH278pocm
	Hr1Zeo3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZH4-00DzFn-FP; Fri, 10 Mar 2023 09:42:54 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGh-00Dz5M-Kc
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:42:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGc-0006NI-6D; Fri, 10 Mar 2023 10:42:26 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-00394G-Hq; Fri, 10 Mar 2023 10:42:25 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGZ-00B49U-Gx; Fri, 10 Mar 2023 10:42:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Mar 2023 10:42:19 +0100
Message-Id: <20230310094222.2538259-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230310094222.2538259-1-s.hauer@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_014231_743594_5579E4B7 
X-CRM114-Status: GOOD (  12.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 4/7] spi: Directly register SPI device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SPI devices described in the device tree are not directly registered,
but instead added to the SPI board_list which is normally used to
register SPI devices from board code. This seems rather unnecessary,
drop this detour and register SPI devices directly from
spi_of_register_slaves().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index d6f939e51c..1444fe3741 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -138,7 +138,7 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 			continue;
 		chip.chip_select = of_read_number(reg->value, 1);
 		chip.device_node = n;
-		spi_register_board_info(&chip, 1);
+		spi_new_device(ctrl, &chip);
 	}
 }
 
-- 
2.30.2



