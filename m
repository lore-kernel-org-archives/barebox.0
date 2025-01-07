Delivery-date: Tue, 07 Jan 2025 14:19:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV9Uu-000KSZ-2s
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 14:19:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV9Uq-0007RM-13
	for lore@pengutronix.de; Tue, 07 Jan 2025 14:19:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ouru8YZJiTU/KSdU+uDj9PCWTg0/Op+7vBGiH6fNRWI=; b=OojYO0ePlg/7OPvAC7XDspq+Ai
	jOm9YzlwXkQfQYY90Nv1YFV15UBsGj/wzPfIRwqP+xDewtEmPPn4ueCoS75d0qqoDRUOdjgP5djro
	nVXQwD7DpsuGnkde+Uc14BQ0w5M55TXOPvBeCFOggM/UPGeNnlGVbBhVnnfhPga60GXN0DrUVbyGt
	0ASMMYoZ7L06KhY4APH81FITF3T9EdzpskX9WTFri889+iwu5HhBaSxJfQ7TvmzpdaAoB/NtQvH8b
	ISz3jwxc3w8j00qN1RQ43BFP94Tmj9cHwaPN+TKx8/AvQxnMo6rH4gJYVsPg6bMyTp2dZ6RzaPynf
	Tetz2hHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV9U9-00000004ycN-2p28;
	Tue, 07 Jan 2025 13:19:05 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV9Or-00000004xJv-1ULO
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 13:13:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736255580;
	bh=8RYnaFG+92154l85tb3CWY539A/z2FyN+18zP+h0/2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G8BOoTYbq5nUev98I7wOxyv7M8m8f5Oi+H/m42c0xrZO+TCeGT88rrtytnUugkiFx
	 5vNfxIydqw0gulTFlLttQYbT0de40RY9t8UIy+Afs4yfNk+KKC9CvVdu70k6lNBSjN
	 pRtOVKvu+C+614FgLxKLtPgfANNCvSyIjuQbostY9Zp2OTnXS2xHSOkIlYXEX6vPsP
	 MoKTSMkNCjW83kJDukGS03AkI6jOfKqR0EiZiNYcpd8pKh+eaUQ6pJFiHxjTOvf2U5
	 KMWa3qpXSVWZ4BXcnCXwEuRJEadVQEIOdMGTxeClqw82TX6qQ7ecFfblTx38KZJpgP
	 qZi6LTMJhnVdQ==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 01B0A401A1;
	Tue,  7 Jan 2025 14:12:59 +0100 (CET)
Date: Tue, 7 Jan 2025 14:12:58 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z30oWivcXTQmw9ZO@hephaistos>
References: <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
 <Z1mnJB8Suz3SNWbI@hephaistos>
 <Z2VPgRnxah5lc09X@hephaistos>
 <76532287-74b7-42ca-860c-b2e6bda8484e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <76532287-74b7-42ca-860c-b2e6bda8484e@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_051337_837286_39B74BBA 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 07, 2025 at 12:17:03PM +0100, Ahmad Fatoum wrote:

> Thanks for the follow-up.

Of course, my pleasure :)

I used "pio device monitor" from platformio and added a custom filter
searching for ">" in the reveived stream and if true adds
seconds.microseconds timestamp.

With this:

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 5dc49dfaaf..db1c464a27 100644
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
@@ -111,6 +117,8 @@ static noinline int beaglebone_sram_init(void)
        uint32_t sdram_size;
        void *fdt;

+       int k;
+
        fdt = __dtb_z_am335x_bone_common_start;

        if (is_beaglebone_black())
@@ -134,6 +142,11 @@ static noinline int beaglebone_sram_init(void)
        am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
        am33xx_enable_uart0_pin_mux();
        omap_debug_ll_init();
+
+       putc_ll('>');
+       for (k = 0; k < 1000; k++) {
+               __udelay(1000);
+       }
        putc_ll('>');

        barebox_arm_entry(0x80000000, sdram_size, fdt);

This gives me this:

44.412429
>
46.284478
>

If I calculated correct this are 1.8 seconds.
So without the surrounding 1000 loop this final result here:

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

Should add a delay of 1.8ms. Is this feasible?


> If it's indeed just a millisecond, I am in favor of adding this to
> barebox upstream with a comment explaining what this fixes, even
> if we don't fully understand it yet.

Yes, I agree to the not fully yet understood part.
What me holds back from lowering the speed is the following:

I went into production with the final result part above and reflashe all
our BBB devices which failed warm start without the additional delay and
all passed 100% flawlessly after the modficication. So it is tested upon
roughly 30 devices which failed before.

Kind Regards
Konstantin



-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



