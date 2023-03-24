Delivery-date: Fri, 24 Mar 2023 13:20:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgOo-00DC5N-Ra
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 13:20:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgOo-0003cM-Mq
	for lore@pengutronix.de; Fri, 24 Mar 2023 13:20:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IooQm6xBeMju1sYbqGmC4iquepJBl8CZtKO0rGBBzKk=; b=3fpO51GE0v05p9YI+CcdKSbuo4
	n5GrMm7GqZkVk7Ufxi6cJEyP+8EeEm1+R9doV8B2+epY5WzdBb0MqtSaWJsuqYFWjaxZ391f2cvdq
	4ah5J9IsSMpdwgB6Rc7lhzjGOgXre/8jD7VjefHTdQVhRsXc4lgIcAo2T5S57A3uOv6lo1NHuA3dj
	BrB1t15LuA9JiRaBcPnwz3+pn0EsgBei470K0U5ETrKDc5mINK5oy1vCfNMz98B+4flffrlJqxB8e
	rsCTu5NAsKzqLCIQzL4gI7yg4KJaW0AXo+zkY5Uub9Fr5VNHMXZnVXjl5EX8GNAdoS9ipwZQNZaHK
	X59l9x8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNg-004KbP-2t;
	Fri, 24 Mar 2023 12:18:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNe-004KYO-0M
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 12:18:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNX-0003Ql-17; Fri, 24 Mar 2023 13:18:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNW-006NZv-Cj; Fri, 24 Mar 2023 13:18:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNV-00H4yC-I6; Fri, 24 Mar 2023 13:18:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 24 Mar 2023 13:18:38 +0100
Message-Id: <20230324121840.2375026-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324121840.2375026-1-s.hauer@pengutronix.de>
References: <20230324121840.2375026-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051850_154366_F9CA249E 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: remove freescale-mx21-ads_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Support for this board is no longer present in the tree, so remove
its defconfig

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/freescale-mx21-ads_defconfig | 38 -------------------
 1 file changed, 38 deletions(-)
 delete mode 100644 arch/arm/configs/freescale-mx21-ads_defconfig

diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
deleted file mode 100644
index b1d37f76a8..0000000000
--- a/arch/arm/configs/freescale-mx21-ads_defconfig
+++ /dev/null
@@ -1,38 +0,0 @@
-CONFIG_TEXT_BASE=0xc3000000
-CONFIG_ARCH_IMX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx21-ads/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_DRIVER_NET_CS8900=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_INTEL is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_FS_TFTP=y
-- 
2.30.2



