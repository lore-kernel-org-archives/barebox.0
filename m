Delivery-date: Tue, 13 Jun 2023 11:18:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q90AV-004y7Q-ER
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 11:18:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q90AT-0001dc-0H
	for lore@pengutronix.de; Tue, 13 Jun 2023 11:18:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=irpwRnclH7oEL48OVOJEFQ4XTSYqJsMPl9A2HWTEZv0=; b=H55WmTtxFcxo8DaBE5aCiWC4UY
	eCcWgrQyW++OhRpRUJBValHktrgluFa5RSu8nq/8whW5ZFYqhcJKo7kjnxg5F8IlXVhKTvqc8399v
	ZXaAj8Qxi2tfc7JGX9IUMo76cLaGhhEzJ/bBaJ+E3uDXKXFcxW0h4fBOM5TpRCvkY3U5hJa6iHahn
	UfzS5CFwhf/KDrm8XdbXd+YvNdfQTRmcXmHIBGRjsTguWY8BxTkxupGIwpeNiUHWS5IwuHiIwUNyY
	88nU3M7YjVpJvfkeOjrVnZQ1h+OXtYPYtWeXwZaXojphptf+bfPLz0bjSnJ0TzOdzzJw6ev8Kzpwn
	TWq1bwpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q909C-007UWj-0P;
	Tue, 13 Jun 2023 09:17:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9096-007UUw-35
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 09:17:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9095-0001Sm-HW; Tue, 13 Jun 2023 11:16:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9095-0005kL-Az; Tue, 13 Jun 2023 11:16:59 +0200
Date: Tue, 13 Jun 2023 11:16:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230613091659.GS18491@pengutronix.de>
References: <20230605063719.1431079-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605063719.1431079-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_021700_992393_E9D62784 
X-CRM114-Status: GOOD (  26.43  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Kbuild: include arch/ Makefile before other directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 08:37:19AM +0200, Ahmad Fatoum wrote:
> Unless overridden by SORT*, LD will place sections matched by wildcards
> in the order they were seen in the link. So far, this meant that
> arch/ initcalls and device trees compiled into barebox proper, were
> always last.
> 
> For platforms with PBL or with only one device tree in barebox proper,
> this didn't matter much, but when enabling the of_manipulation selftest,
> a second device tree would be built into barebox on kvx, openrisc and
> some MIPS.
> 
> Because all directories appear before arch/, this had the effect that
> on kvx, openrisc and some MIPS, __dtb_start would end up pointing at the
> test's device tree instead of the board device tree breaking the build.
> 
> Switching the affected platforms to use PBL would be one fix for the
> issue, but there's a simple one: let's do what Linux does in its
> top-level Kbuild file and have arch/ not be the last in sequence.
> 
> This may fause fallout for code that depended on specific ordering of
> initcalls or other linker-defined lists, which would need to be fixed.

I am afraid this causes regressions that take a long time to realize and
to sort out.

We could do something along the following lines to pick the correct dtb.
This is only meant as an example, it likely needs some sugar to work
correctly in all cases.

Sascha

----------------------------------8<------------------------------

diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index d1e27b5e6b..e114cc5d8a 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -3,6 +3,7 @@
 obj-y += start.o
 obj-y += main_entry.o
 
+CFLAGS_dtb.o += -DBUILTIN_DTB_SYMBOL=__dtb_$(patsubst "%",%,$(subst -,_,$(CONFIG_BUILTIN_DTB_NAME)))_start
 obj-$(CONFIG_OFDEVICE) += dtb.o
 
 pbl-y += main_entry-pbl.o
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index ece1494e5f..3afcd20a0e 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -34,7 +34,7 @@ int of_add_memory_bank(struct device_node *node, bool dump, int r,
 	return ret;
 }
 
-extern char __dtb_start[];
+extern char BUILTIN_DTB_SYMBOL[];
 
 static int of_mips_init(void)
 {
@@ -42,7 +42,7 @@ static int of_mips_init(void)
 
 	fdt = glob_fdt;
 	if (!fdt)
-		fdt = __dtb_start;
+		fdt = BUILTIN_DTB_SYMBOL;
 
 	return barebox_register_fdt(fdt);
 }
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


