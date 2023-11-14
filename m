Delivery-date: Tue, 14 Nov 2023 09:25:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2ojT-00B6ID-0E
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 09:25:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2ojS-0002Dv-MI
	for lore@pengutronix.de; Tue, 14 Nov 2023 09:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1msGtYGxigm6K2OecwdwaR1qidgVBidQPfK1PNRHPoc=; b=ePzPX0oEEzLA3pRdHYPUdHxab2
	Z0F6mBHMhS1GcNluzGygn2aAAF36YWunjAuuovKbBGUzTKsPKFqDBBSGEUA64GRkB/mv3Yg2Xb3oF
	yQgFbPRKolP7LFy7GQeoudCu1syEuZZ+1C8bJwWGnBPBu+p5ibn8Br7M9iQDVtDI1u5g4O4BZg2R2
	2iVz/Nndbz4k7BOKw50NG6CjApxoDIRQk2tukLvQmAgdG+dJcXDV3ynOPfcdcqqhpaxd5uvKK0K8B
	+vF8+pWYT4UuaGsWHVsbDq5eejXbkpeQKAhxkwnwvbSnk3KLZkHhq6XmWwMkS4twF0kXLX6v0NNsJ
	obtunngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2oi3-00FNiZ-1Y;
	Tue, 14 Nov 2023 08:23:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2ohz-00FNh7-24
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 08:23:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2ohy-00022w-9L; Tue, 14 Nov 2023 09:23:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2ohx-008wws-TG; Tue, 14 Nov 2023 09:23:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2ohx-001x8d-R1; Tue, 14 Nov 2023 09:23:41 +0100
Date: Tue, 14 Nov 2023 09:23:41 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231114082341.GT3359458@pengutronix.de>
References: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
 <20231113130350.GS3359458@pengutronix.de>
 <546aba5d-d506-52fd-de23-6bc12805ddd4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <546aba5d-d506-52fd-de23-6bc12805ddd4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_002343_830914_F415C4EE 
X-CRM114-Status: GOOD (  49.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] console: provide best-effort clk_get_for_console
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 13, 2023 at 04:02:56PM +0100, Ahmad Fatoum wrote:
> On 13.11.23 14:03, Sascha Hauer wrote:
> > On Thu, Nov 09, 2023 at 12:47:06PM +0100, Ahmad Fatoum wrote:
> >> From: Ahmad Fatoum <ahmad@a3f.at>
> >>
> >> clk_get will return -EPROBE_DEFER if clock provider hasn't yet been
> >> probed. In a system with deep probe enabled, dependencies are probed
> >> on demand, so a -EPROBE_DEFER return is final and the console probe
> >> will never succeed.
> >>
> >> CONFIG_DEBUG_LL is often used to debug this, but because the low-level
> >> console is not interactive, it's a bit cumbersome. Improve upon this a
> >> bit, by providing a clk_get_for_console helper that returns NULL if and
> >> only if we are sure that a clock provider will not be probed.
> >>
> >> In that case, the driver can skip code paths initialization code and
> >> baud rate setting dependent on having access to the clock and still
> >> register a console that reuses what was set up by CONFIG_DEBUG_LL.
> >>
> >> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> >> ---
> >>  include/console.h   | 26 ++++++++++++++++++++++++++
> >>  include/linux/clk.h | 21 +++++++++++++++++++++
> >>  2 files changed, 47 insertions(+)
> >>
> >> diff --git a/include/console.h b/include/console.h
> >> index 586b68f73301..b8c901801e9f 100644
> >> --- a/include/console.h
> >> +++ b/include/console.h
> >> @@ -8,6 +8,7 @@
> >>  #define _CONSOLE_H_
> >>  
> >>  #include <param.h>
> >> +#include <linux/clk.h>
> >>  #include <linux/list.h>
> >>  #include <driver.h>
> >>  #include <serdev.h>
> >> @@ -208,4 +209,29 @@ static inline void console_ctrlc_allow(void) { }
> >>  static inline void console_ctrlc_forbid(void) { }
> >>  #endif
> >>  
> >> +/**
> >> + * clk_get_for_console - get clock, ignoring known unavailable clock controller
> >> + * @dev: device for clock "consumer"
> >> + * @id: clock consumer ID
> >> + *
> >> + * Return: a struct clk corresponding to the clock producer, a
> >> + * valid IS_ERR() condition containing errno or NULL if it could
> >> + * be determined that the clock producer will never be probed in
> >> + * absence of modules. The NULL return allows serial drivers to
> >> + * skip clock handling and rely on CONFIG_DEBUG_LL.
> >> + */
> >> +static inline struct clk *clk_get_for_console(struct device *dev, const char *id)
> >> +{
> >> +	struct clk *clk;
> >> +
> >> +	if (!IS_ENABLED(CONFIG_DEBUG_LL))
> >> +		return clk_get(dev, id);
> > 
> > There are several SoCs out there where the UART is enabled by the ROM
> > already, on these we don't need to have CONFIG_DEBUG_LL enabled for a
> > working UART.
> 
> Those SoCs can still implement CONFIG_DEBUG_LL and just skip the
> initialization step.
> 
> > Maybe testing for the UART enable bit in probe() would be a better
> > indication that the UART is already in a working state?
> 
> If clk turns out to be not enabled, system would hang on e.g. i.MX.

That can happen with your patch as well as you don't limit the
usage of clk_get_for_console() to the UART putc_ll is configured
for. Initializing one of the other UARTs might hang your system
once you access a register.

> 
> This is a mere debugging measure for SoCs with complex clock controllers
> backed by firmware, so I think having to enable CONFIG_DEBUG_LL to use
> is acceptable.

Another option would be to implement and use a GETC_LL() macro. This
requires some thinking how this can be integrated into the console
code, but would in the end be more universally usable. With this we
could make barebox interactive even when the real serial driver is
not compiled in (or not even yet existing). See below for a prototype.

Sascha

----------------------------8<-----------------------------

>From a737458a64718f96c8d5267551895b0fcea23089 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Nov 2023 09:22:24 +0100
Subject: [PATCH] debug_ll: implement lowlevel debug input functions

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmba9xxxca/lowlevel.c |  1 +
 common/console.c                       |  6 ++++++
 common/startup.c                       |  3 ++-
 include/debug_ll.h                     | 16 +++++++++++++++
 include/mach/imx/debug_ll.h            | 28 ++++++++++++++++++++++++++
 include/serial/lpuart32.h              | 12 +++++++++++
 6 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/tqmba9xxxca/lowlevel.c b/arch/arm/boards/tqmba9xxxca/lowlevel.c
index 8207cd9515..761ca38dc4 100644
--- a/arch/arm/boards/tqmba9xxxca/lowlevel.c
+++ b/arch/arm/boards/tqmba9xxxca/lowlevel.c
@@ -17,6 +17,7 @@ static noinline void tqma9352_mba93xxca_continue(void)
 	void *base = IOMEM(MX9_UART1_BASE_ADDR);
 	void *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);
 
+	writel(0x0, muxbase + 0x180);
 	writel(0x0, muxbase + 0x184);
 	imx9_uart_setup(IOMEM(base));
 	pbl_set_putc(lpuart32_putc, base + 0x10);
diff --git a/common/console.c b/common/console.c
index 7e43a9b5fc..4209561db9 100644
--- a/common/console.c
+++ b/common/console.c
@@ -452,6 +452,9 @@ static int getc_raw(void)
 	struct console_device *cdev;
 	int active = 0;
 
+	if (initialized < CONSOLE_INIT_FULL)
+		return getc_ll();
+
 	while (1) {
 		for_each_console(cdev) {
 			if (!(cdev->f_active & CONSOLE_STDIN))
@@ -478,6 +481,9 @@ static int tstc_raw(void)
 {
 	struct console_device *cdev;
 
+	if (initialized < CONSOLE_INIT_FULL)
+		return tstc_ll();
+
 	for_each_console(cdev) {
 		if (!(cdev->f_active & CONSOLE_STDIN))
 			continue;
diff --git a/common/startup.c b/common/startup.c
index bbba72f892..1f15dc5b91 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -174,11 +174,12 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
+#ifndef GETC_LL
 	if (!console_get_first_active()) {
 		printf("\nNon-interactive console, booting system\n");
 		return autoboot_state = AUTOBOOT_BOOT;
 	}
-
+#endif
 	if (global_autoboot_state != AUTOBOOT_COUNTDOWN)
 		return global_autoboot_state;
 
diff --git a/include/debug_ll.h b/include/debug_ll.h
index 0128ab524a..84933657e6 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -29,6 +29,22 @@ static inline void putc_ll(char value)
 	PUTC_LL(value);
 }
 
+static inline int getc_ll(void)
+{
+#ifdef GETC_LL
+	return GETC_LL();
+#endif
+	return -EAGAIN;
+}
+
+static inline int tstc_ll(void)
+{
+#ifdef TSTC_LL
+	return TSTC_LL();
+#endif
+	return 0;
+}
+
 static inline void puthexc_ll(unsigned char value)
 {
 	int i; unsigned char ch;
diff --git a/include/mach/imx/debug_ll.h b/include/mach/imx/debug_ll.h
index 618cbc784e..e5abf1a216 100644
--- a/include/mach/imx/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -134,6 +134,34 @@ static inline void PUTC_LL(int c)
 		imx_uart_putc(base, c);
 }
 
+#define GETC_LL GETC_LL
+static inline int GETC_LL(void)
+{
+	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
+						 CONFIG_DEBUG_IMX_UART_PORT));
+
+	if (!base)
+		return -EINVAL;
+
+	if (IS_ENABLED(CONFIG_DEBUG_IMX9_UART))
+		return lpuart32_getc(base + 0x10);
+	return -ENOTSUPP;
+}
+
+#define TSTC_LL TSTC_LL
+static inline int TSTC_LL(void)
+{
+	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
+						 CONFIG_DEBUG_IMX_UART_PORT));
+
+	if (!base)
+		return -EINVAL;
+
+	if (IS_ENABLED(CONFIG_DEBUG_IMX9_UART))
+		return lpuart32_tstc(base + 0x10);
+	return -ENOTSUPP;
+}
+
 #else
 
 static inline void imx50_uart_setup_ll(void) {}
diff --git a/include/serial/lpuart32.h b/include/serial/lpuart32.h
index 12526ee0ae..9df5e0937f 100644
--- a/include/serial/lpuart32.h
+++ b/include/serial/lpuart32.h
@@ -155,6 +155,18 @@ static inline void lpuart32_putc(void __iomem *base, int c)
 	writel(c, base + LPUART32_UARTDATA);
 }
 
+static inline int lpuart32_tstc(void __iomem *base)
+{
+	return readl(base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_RDRF;
+}
+
+static inline int lpuart32_getc(void __iomem *base)
+{
+	while (!lpuart32_tstc(base));
+
+	return readl(base + LPUART32_UARTDATA) & 0xff;
+}
+
 static inline void imx9_uart_setup(void __iomem *uartbase)
 {
 	/*
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


