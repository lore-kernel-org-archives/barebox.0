Delivery-date: Wed, 08 Jan 2025 16:19:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXqO-000n1O-0Z
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:19:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXqO-00032a-4W
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:19:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kb9MQ/hNip6s+WD8itTjTKrT7O4vPdePiXFQLgn0fhM=; b=CLZ973h9s87Dm7ihZ/Kf1oTOBq
	rgxm0kl6zl9yxNrwG2cL2GXZhf5yOAqTNRjbFhDcKmSbu6DPOWuHeUx3yUAR/thor1GOWsOuon1oj
	nMhgsuBYIoY/HsWDljtcIgxOl3iLbi9cm4xa/T+c7xDOfXm4j11Id8LjjzvyyJJPuZ16bsM3zkvau
	SfKRzgrIjXPwIECvjIEO3x/T/L+HvYN6Lf8/jMuawtsBZYtk92a4yHr8IryrqhAubqU0fZ7e9NrCZ
	zDlhsJwYIJSl4ycY5f7paEflGLHHkPzKptwmjjiyNcAHkzRDnApbi+dazd2bjAOgohfVASkhPItjN
	N6tUD9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXpz-00000008wIF-0myj;
	Wed, 08 Jan 2025 15:19:15 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXpx-00000008wHZ-0XyQ
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736349521;
	bh=WW3BYo9xvIUdGZowOb0Le/MJMp2Z5ZGjD5ivVGSaLkQ=;
	h=Date:From:To:Subject:From;
	b=ASHPmtJzDPjUje32l7LYlTjvstfWKpgtlQKQI5c12MPc/lnmjXvOQ1vd/6dPawaZP
	 0YkrUUKaU7s/nnTyX/ITL5125Guuv36oPRjeA6Q9UYm5/rgm2mXQTfJ6DGt3o9eaeX
	 secrdbDRFB3lCkjiptF7lt/uIlLJuVOGdRwJXmSBwmtupRxVXF4TdGABVlQjCtuiBu
	 AxuZqY9UkOQ1gDpYf8Nvi2nzU9j/g5FOWoG1ADL/yE9yXsulKPx2Wi1MF5uqG+LFrx
	 oMxnKZGEzM0Lew1aS9s4grlnlWzOUhQaKldleRrmix7cc9phbQk+uSz0JHBGgX4WEd
	 exQU7UvnIv+zA==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id BC3D740200
	for <barebox@lists.infradead.org>; Wed,  8 Jan 2025 16:18:41 +0100 (CET)
Date: Wed, 8 Jan 2025 16:18:40 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <Z36XUNDVMLVullNh@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_071913_308981_E50E6889 
X-CRM114-Status: UNSURE (   7.88  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: =?iso-8859-1?B?W1BBVENIXaBBUk0=?= =?iso-8859-1?Q?=3A?= beaglebone:
 add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some Beaglebone Black devices are not able to cope with a warm start.
When system is powered up and booted hitting reset button (S1) or
issuing "reset" at barebox prompt the new instance of first stage gets
stuck after PLL init.

Adding a delay of ~1.8ms in lowlevel.c after PLL init solves this.

Signed-off-by: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
---
 arch/arm/boards/beaglebone/lowlevel.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 5dc49dfaaf..ccae1d1122 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -97,6 +97,12 @@ extern char __dtb_z_am335x_boneblack_start[];
 extern char __dtb_z_am335x_bone_common_start[];
 extern char __dtb_z_am335x_bone_start[];

+static void __udelay(int us)
+{
+        volatile int i;
+       for (i = 0; i < us; i++);
+}
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -135,6 +141,7 @@ static noinline int beaglebone_sram_init(void)
        am33xx_enable_uart0_pin_mux();
        omap_debug_ll_init();
        putc_ll('>');
+       __udelay(3000); // Fix for Beaglebone Black warm start after reset

        barebox_arm_entry(0x80000000, sdram_size, fdt);
 }

-- 


