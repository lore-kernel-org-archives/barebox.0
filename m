Delivery-date: Mon, 15 Apr 2024 07:28:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEte-001Z45-0V
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:28:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEtd-0007kV-Bb
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:28:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nWLxOPfzXQIn++WG4b1vJmg+4B9PiJKzejEWev4Mfdc=; b=T6KivFVzj5/uk/Fd7ZszNFa2U9
	ojnZbT6OO9RVBJAEi3tlG0tE0ABji3Fm3CuC6YZQaTaSSQ9bsaMuK9c6fcXTpEH8S+zp/ceDKi+j0
	4/4gBQviIG7Kd2+gI11pzwNdaQqDg6p0Zxd8oIlAov69dtzuC4SQqlsxJHgTUobn3S+N0WEyrsReE
	j22xuv4GMSd36lyRuxIWRSNDg63ZK9AzBdLWDu+I3KwxlYiDcGx06jAs39pkNy87k7u1VAauN52B7
	/G7WH5Oy6C/Qf+T+hNODUOodgt6dahE3IBIRSa05PokQPuxEzvbNGJgazd9/cdMTL25yRcXuvVhdm
	iT8p8E0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEtC-000000070Ff-1lxN;
	Mon, 15 Apr 2024 05:28:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEt7-000000070Df-3927
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:28:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEt6-00078c-6d; Mon, 15 Apr 2024 07:28:16 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEt5-00CMjB-Qb; Mon, 15 Apr 2024 07:28:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEt5-001XM1-2O;
	Mon, 15 Apr 2024 07:28:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:28:13 +0200
Message-Id: <20240415052815.366527-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_222817_916528_1B99E37E 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: Rockchip: bbu: rename rk3568_bbu_mmc_register to rockchip_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The update handler isn't restricted to the RK3568, but is also usable
for other RKNS SoCs. With minor modification, it is also usable for the
RK3399 and perhaps even older SoCs, so let's rename it to
rockchip_bbu_mmc_handler instead. We can always do SoC-type checks
inside to handle differences.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/radxa-cm3/board.c                 |  6 +++---
 arch/arm/boards/radxa-rock3/board.c               |  4 ++--
 arch/arm/boards/radxa-rock5/board.c               |  4 ++--
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c |  5 ++---
 arch/arm/boards/rockchip-rk3568-evb/board.c       |  5 ++---
 arch/arm/mach-rockchip/bbu.c                      | 10 +++++-----
 include/mach/rockchip/bbu.h                       |  6 ++++--
 7 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/radxa-cm3/board.c b/arch/arm/boards/radxa-cm3/board.c
index 14b678417910..19d37e31d9b0 100644
--- a/arch/arm/boards/radxa-cm3/board.c
+++ b/arch/arm/boards/radxa-cm3/board.c
@@ -26,9 +26,9 @@ static int cm3_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
-				"/dev/mmc0");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				  "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index 0d425e266755..df99eded2ca8 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -26,8 +26,8 @@ static int rock3_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/radxa-rock5/board.c b/arch/arm/boards/radxa-rock5/board.c
index 6ea6ffeaaf4e..eab0c0104000 100644
--- a/arch/arm/boards/radxa-rock5/board.c
+++ b/arch/arm/boards/radxa-rock5/board.c
@@ -23,8 +23,8 @@ static int rock5_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index 94d1dac2c2d1..7178c02d8f09 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -28,9 +28,8 @@ static int rk3568_bpi_r2pro_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
-				"/dev/mmc1");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index f404af217bb7..9659bd69c5b8 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -28,9 +28,8 @@ static int rk3568_evb_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
-				"/dev/mmc1");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index 3ab6c1e68502..0f50fd1282ed 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -36,8 +36,8 @@
  * leaves the previously written inactive image as a fallback in case writing the
  * first one gets interrupted.
  */
-static int rk3568_bbu_mmc_handler(struct bbu_handler *handler,
-				  struct bbu_data *data)
+static int rockchip_bbu_mmc_handler(struct bbu_handler *handler,
+				    struct bbu_data *data)
 {
 	enum filetype filetype;
 	int ret, fd, wr0, wr1;
@@ -113,8 +113,8 @@ static int rk3568_bbu_mmc_handler(struct bbu_handler *handler,
 	return ret;
 }
 
-int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
-                const char *devicefile)
+int rockchip_bbu_mmc_register(const char *name, unsigned long flags,
+			      const char *devicefile)
 {
 	struct bbu_handler *handler;
 	int ret;
@@ -124,7 +124,7 @@ int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
 	handler->flags = flags;
 	handler->devicefile = devicefile;
 	handler->name = name;
-	handler->handler = rk3568_bbu_mmc_handler;
+	handler->handler = rockchip_bbu_mmc_handler;
 
 	ret = bbu_register_handler(handler);
 	if (ret)
diff --git a/include/mach/rockchip/bbu.h b/include/mach/rockchip/bbu.h
index 2cc9b74081e4..9ae137b0e6ab 100644
--- a/include/mach/rockchip/bbu.h
+++ b/include/mach/rockchip/bbu.h
@@ -6,14 +6,16 @@
 #include <bbu.h>
 
 #ifdef CONFIG_BAREBOX_UPDATE
-int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
+int rockchip_bbu_mmc_register(const char *name, unsigned long flags,
                 const char *devicefile);
 #else
-static inline int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
+static inline int rockchip_bbu_mmc_register(const char *name, unsigned long flags,
                 const char *devicefile)
 {
 	return -ENOSYS;
 }
 #endif
 
+#define rk3568_bbu_mmc_register rockchip_bbu_mmc_register
+
 # endif /* __MACH_ROCKCHIP_BBU_H */
-- 
2.39.2



