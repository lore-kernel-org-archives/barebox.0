Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGZxK-0007rt-Vz
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 19:06:20 +0000
Date: Fri, 15 Mar 2013 20:06:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315190616.GI1906@pengutronix.de>
References: <1363107762-10911-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363107762-10911-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH RESEND] usb: chipidea-imx: Fix usb initialization
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Tue, Mar 12, 2013 at 09:02:42PM +0400, Alexander Shiyan wrote:
> This patch fix chipidea-imx usb initialization.
> "imx_chipidea_port_init" was moved before PORTSC setup in the
> commit "USB i.MX chipidea: implement post init support". This
> change breaks usb function with ULPI. Patch moves port initialization
> back after PORTSC setup, so it works again.

I finally found some time to test it on the EfikaMX which I was afraid
this patch breaks. Good news is it doesn't.

You probably missed my answer to the original patch, so here it's again:
On which board are you working? The ULPI works for me on the the pcm038
and the EfikaMX smartbook with or without the patch.

After some digging around in the Efika U-Boot I found the equivalent of
the attached patch, which seems to make ULPI initialization far more
reliable. Do you have a chance to try this on your hardware?

Sascha

8<------------------------------------------------
commit 3be7b966ed7be54590e27e67a7f6b197d85b38f8
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Dec 3 21:59:56 2012 +0100

    pcm038: Stop ongoing ULPI transfers before registering the transceiver
    
    The ULPI lines are normally input to the USB port. In order to configure
    the ULPI transceiver properly the ongoing transfers must be stopped. This
    can be done by configuring the the STP pin as gpio output and drinving
    it high.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index 7b25110..a50a1f2 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -160,7 +160,7 @@ static int pcm970_init(void)
 		PA1_PF_USBH2_DIR,
 		PA2_PF_USBH2_DATA7,
 		PA3_PF_USBH2_NXT,
-		PA4_PF_USBH2_STP,
+		4 | GPIO_PORTA | GPIO_GPIO | GPIO_OUT,
 		PD19_AF_USBH2_DATA4,
 		PD20_AF_USBH2_DATA3,
 		PD21_AF_USBH2_DATA6,
@@ -176,8 +176,14 @@ static int pcm970_init(void)
 	/* Configure SJA1000 on cs4 */
 	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
 
-	if (IS_ENABLED(CONFIG_USB))
+	if (IS_ENABLED(CONFIG_USB)) {
+		/* Stop ULPI */
+		gpio_direction_output(4, 1);
+		mdelay(1);
+		imx_gpio_mode(PA4_PF_USBH2_STP);
+
 		imx27_add_usbh2(&pcm970_usbh2_pdata);
+	}
 
 #ifdef CONFIG_DISK_INTF_PLATFORM_IDE
 	pcm970_ide_init();

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
