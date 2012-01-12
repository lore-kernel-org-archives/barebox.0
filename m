Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlMwW-0007RK-SE
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 15:51:57 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Thu, 12 Jan 2012 15:51:49 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317F362C@DBDE01.ent.ti.com>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
 <1326303284-14444-2-git-send-email-premi@ti.com>
 <20120112092853.GZ5446@pengutronix.de>
In-Reply-To: <20120112092853.GZ5446@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [RFC 2/2] ARM omap: Add CONFIG_SILENT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
> Sent: Thursday, January 12, 2012 2:59 PM
> To: Premi, Sanjeev
> Cc: barebox@lists.infradead.org; Jean-Christophe PLAGNIOL-VILLARD
> Subject: Re: [RFC 2/2] ARM omap: Add CONFIG_SILENT
> 

[snip]

> BTW you seem to be very concerned about the codesize in the xloader
> environments, which I can understand. How about giving my 
> thumb2 patches
> a try?

I tried pulling these patches on the latest master, but git am failed.
Manual patching reports previously applied patches. (I was able to find
few patches in the series already in master)

Some hunks don't apply cleanly. For example:

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index bd9b72a..3fafb4b 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -253,6 +253,8 @@ void start_linux(void *adr, int swap, struct image_data *data)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
 	void *params = NULL;
+	int architecture = armlinux_get_architecture();
+
 #ifdef CONFIG_OFTREE
 	params = of_get_fixed_tree();
 	if (params)

I did quick fix-ups at few places to make compiler happy, but got
stuck with this:

  AS      arch/arm/mach-omap/omap3_core.o
arch/arm/mach-omap/omap3_core.S: Assembler messages:
arch/arm/mach-omap/omap3_core.S:116: Error: shift must be constant -- `orr r11,r10,r9,lsl r5'
arch/arm/mach-omap/omap3_core.S:117: Error: shift must be constant -- `orr r11,r11,r7,lsl r2'
make[1]: *** [arch/arm/mach-omap/omap3_core.o] Error 1
make: *** [arch/arm/mach-omap] Error 2

Will look at this later in the week.
Do you have updated patches agaist latest master that I can try?

~sanjeev

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
