Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKKpS-0003zU-CL
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 10:12:55 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23991112AbeKGKMhaXv2K (ORCPT
 <rfc822;barebox@lists.infradead.org>); Wed, 7 Nov 2018 11:12:37 +0100
Date: Wed, 7 Nov 2018 11:12:35 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181107101235.GA6313@lenoch>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/22] AT91 header cleanup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Nov 05, 2018 at 04:50:51PM +0100, Sascha Hauer wrote:
> The following series contains a bigger at91 header file cleanup. With
> this the SoC header files become completely SoC namespaced which means
> they can all be included as desired without conflicts. This makes the
> way free for more at91 multiboard support.
> 
> I don't have that much AT91 hardware on my desk, so I am unable to test
> this properly. Testing feedback very much appreciated. Sam maybe?

Tested on custom AT91SAM9G20 based board. However as patch
"ARM: at91: separate restart handler registration into SoC specific code"
does exactly what its commit message says it brings some issues with
devicetree based boot. Nearly everything works except NAND and that would
work too if one uses old binding. As that is not my case, I'm using pdata
to register NAND, so I need also:

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index d81683ac1..75442bd72 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -18,11 +18,12 @@ obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devic
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260_devices.o
 ifeq ($(CONFIG_OFDEVICE),)
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9G20)	+= at91sam9260.o
 endif
-obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o

Note, that with above change, once we move to device tree, there's noone
to register restart handler. I guess, that will get eventually sorted
by writing proper reset driver, right? For now I put reset handler
registration into a board file.

Above is just extraordinary long way to say, that without updating
Barebox' MTD code it is hard to move to full DT boot and someone
should start testing ;-)

Best regards,
	ladis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
