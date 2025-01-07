Delivery-date: Tue, 07 Jan 2025 16:04:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVB87-000MB4-39
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 16:04:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVB84-0006Ea-76
	for lore@pengutronix.de; Tue, 07 Jan 2025 16:04:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QIqbAWfF742QCKojYwkp3DYouDqNvDgqiEJTp2hBcF0=; b=ntyOh4XIKzt0jtvK43MGRToeBe
	QNC1EZeL/xa8G2z4morF4ADUg1napOBKOkdEumitgA9edaNnODdSBYKOWdb4Il78NkBFWFC8oNtWN
	phPOf505ibyLt41Tu8NeqHxVGZ1+3gJzs6NXwkQM03lFqE8kDGJGxH7t9Gv3cQfljHDEysXPkMQNb
	+5E9UaSmwJ1EyU6dRQSmwWzsy5wHFqyX8wmjRIvIV+m3RExhAZ7vTQLHAeqXHoXVVP4tNxTws1QdI
	3LJ2a1FtNaetcCyqvNjJfDJTBE77bO01D8+scsnEOOD7o5E3pqI7xMy+WWXB4DfPrPswmxO3iaZl1
	uSLWNKcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVB7L-00000005LkC-1U34;
	Tue, 07 Jan 2025 15:03:39 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVB6F-00000005LRt-23LH
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 15:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736262119;
	bh=hHDdPBCZIgCXzBYLm+K0qBt61hCRARBKc+Ni++vPrA8=;
	h=Date:From:To:Subject:From;
	b=m7D+UdKEhZhy9areK9MDaR2QJXFvGcxC45bLxSOIdCpdOTomczt3tsRv1NkeCGCs4
	 WSnKkSzmoX844LtOEl6JEsXI74tz6cmxLLsOXPkw7OZhjj/2KdIIkXhpvQI43JlsTe
	 5rUckqKQ38DHzRRSRbvObpiWtCYzP5yMqBhNOKYC2fVDRCL/HVF8NBEFlmto8CPF6e
	 xoNLPA6/FHysKpECino3CbrWc403n1O8yvY0LInXWVSyq+w9zmVeRG//rfRYAjWKxp
	 kM+IXO7GYaNezyWLkU14KmR8dqB9B6BTK6bNbVpUOQGv1ZrSaQCMsc5II2mCS7fLkT
	 zdzLrckt96c9A==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 4D89740202
	for <barebox@lists.infradead.org>; Tue,  7 Jan 2025 16:01:59 +0100 (CET)
Date: Tue, 7 Jan 2025 16:01:58 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <Z31B5rxOomVzKR_1@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_070231_740927_E10C5CCB 
X-CRM114-Status: UNSURE (   7.94  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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
+       for (i = 0; i < us * 3; i++);
+}
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -135,6 +141,7 @@ static noinline int beaglebone_sram_init(void)
        am33xx_enable_uart0_pin_mux();
        omap_debug_ll_init();
        putc_ll('>');
+       __udelay(1000); // Adding delay of 1.8ms

        barebox_arm_entry(0x80000000, sdram_size, fdt);
 }

-- 




