Delivery-date: Fri, 20 Dec 2024 12:15:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOayn-00AQYV-2n
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 12:15:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOayn-0007xD-Ro
	for lore@pengutronix.de; Fri, 20 Dec 2024 12:15:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LWAR8VXf4fbIBwqKyVWjHMqVsw4nKqT5Qx8ZRFXPqmM=; b=rXsqI2KTMv7jplokBCQM9E0vgs
	QsUZD2Ooav9x7S7hnQdSCqvOI/SXpfxtOt+3ioPBq+2tK/HLbVeNKBCS5V312hkOej/I3czSfs0Kj
	KP3j+pRNQ6VvGTNtOLaNUB9hX9CvLtbqL0VCNbujbmgsLvZf5752SXz43kudz15yfVUU2syDTV4F0
	Y7yyLBPPlhWt6eUdLSmv7oLxZLSIDibgDw6AdLWV74M/IsLY9nH8ca+5k/KDmQb5apaSKATtjidCy
	0wSsjNF5IgRS5FrJz8djnlfeVO/vjXv1Wx4eOcwSryS2VvOeRRYujocCd952VnL4aOHMi1bDN+3yQ
	KcKb3poQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayN-00000004jZK-0Tkd;
	Fri, 20 Dec 2024 11:15:11 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapn-00000004fDo-2JXb
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1734692738;
	bh=jyeN5GYVRyImd2UlVNB/BcLoeOH0JmM5OlQdlhniG0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FHPjcKShwrcZ0lYZ7q1pLVKrbJtRVx+76Hwo7qlVo+Dx8jejsBuckYnywG+sudJck
	 ncJIQcPObwtf7eZov+UCPAiuqUAXYsStuwhGXMhMTwpi+BU4d74FnY9o2Bbamr62kc
	 a+XXSLheLr8zLmt2Osk8fRSvBUfsv6wKocgbQhUKj2dQlEJNw5SIgS4vjAmZjGnjW5
	 oB2Lp7+QdzR2dtbT+4145lme1/tIjqXSY+tTdP4Jn+O8isvx/0y+pXgOm3VP8gI6qy
	 pQpZLKYs55W7VkIuW3ANrypNSQcahFw2ZwMrCP6QaxWlS1huyrfUoB7HlyOXIZIglw
	 AqeQLYvFZeTjg==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 488B0401E3;
	Fri, 20 Dec 2024 12:05:38 +0100 (CET)
Date: Fri, 20 Dec 2024 12:05:37 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z2VPgRnxah5lc09X@hephaistos>
References: <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
 <Z1mnJB8Suz3SNWbI@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1mnJB8Suz3SNWbI@hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030620_039541_07A1C4F6 
X-CRM114-Status: UNSURE (   8.90  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I found the minimum change required to make barebox warm restart every
time I hot S1, write warm restart register, type reset or linux kernel
reboot.
I needed to figure out to realize in my yocto the MLO stage is another
package to test my changes in this vanilla defconfig part carefully.

My barebox-pbl stage package calls the defconfig am335x_mlo_defconfig, I
apply only this patch on top on my 2022.04 version:

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 544e396e03..329d7a9150 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -97,6 +97,12 @@ extern char __dtb_z_am335x_boneblack_start[];
 extern char __dtb_z_am335x_bone_common_start[];
 extern char __dtb_z_am335x_bone_start[];

+static void __udelay(int us)
+{
+	volatile int i;
+	for (i = 0; i < us * 3; i++);
+}
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -142,6 +148,7 @@ static noinline int beaglebone_sram_init(void)
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');

+	__udelay(1000);
 	barebox_arm_entry(0x80000000, sdram_size, fdt);
 }


This delay loop (side quest: how do I calculate how long it waits?)
on its own with no changes in CONFIG or debugging or whatsoever
fixes everything.

Regards
Konstantin


