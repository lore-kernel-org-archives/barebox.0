Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ex10.nebula.fi ([217.149.53.201])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q4q3D-0003oM-Kc
	for barebox@lists.infradead.org; Wed, 30 Mar 2011 07:42:48 +0000
Message-ID: <4D92DEF3.5010705@nextfour.com>
Date: Wed, 30 Mar 2011 10:42:43 +0300
From: Teemu Peltola <teemu.peltola@nextfour.com>
MIME-Version: 1.0
References: <4D80C8AB.4040905@nextfour.com> <4D81D20E.3060803@eukrea.com>
	<4D8711C3.7050107@nextfour.com>
In-Reply-To: <4D8711C3.7050107@nextfour.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX25 3-stack - over-current change on port 1 - USB host port
	not working
To: barebox@lists.infradead.org

On 03/21/2011 10:52 AM, Teemu Peltola wrote:
> On 03/17/2011 11:19 AM, Eric B=E9nard wrote:
>> Hi,
>>
>> On 16/03/2011 15:26, Teemu Peltola wrote:
>>> I have Freescale i.MX25 3-stack development board + debug board
>>> attached to
>>> it. I have built barebox-2011.03.0 using
>>> freescale_mx25_3stack_defconfig with
>>> some modifications to support NAND booting (see below). I have used
>>> buildroot-2011.02 to create 2.6.38 kernel (CONFIG_MACH_MX25_3DS=3Dy
>>> etc.) and
>>> rootfs images.
>>>
>>> When I boot these images from barebox, dmesg displays the following
>>> error
>>> message constantly and USB host port does not work:
>>>
>>> mxc-ehci mxc-ehci.1: GetStatus port:1 status cc001020 102 ACK POWER
>>> sig=3Dse0 OCC
>>> hub 1-0:1.0: over-current change on port 1
>>> hub 1-0:1.0: enabling power on all ports
>>> hub 1-0:1.0: state 7 ports 1 chg 0000 evt 0002
>>>
>>> If I try to use Freescale RedBoot (mx25_3stack_redboot_TO1_1.bin from
>>> L2.6.31_09.12.00_SDK_images_MX25 package) with the same kernel and
>>> rootfs, USB
>>> works. Is there some initialization that is missing from barebox?
>>>
>> if you don't need USB in barebox don't enable it. I also have problems
>> with OTG port under Linux when it's enabled under barebox. I didn't yet
>> found time to investigate.
>
> Disabling USB in barebox did not help.

It seems that USBH2_PWR signal is not powered. The following patch for =

barebox-2011.03.0 seems to work, using it as GPIO:

--- a/barebox-2011.03.0/arch/arm/boards/freescale-mx25-3-stack/3stack.c =

2011-03-29 09:16:54.247015588 +0300
+++ b/barebox-2011.03.0/arch/arm/boards/freescale-mx25-3-stack/3stack.c =

2011-03-29 09:18:53.675014266 +0300
@@ -168,6 +168,11 @@
         /* Set to Host mode */
         tmp =3D readl(IMX_OTG_BASE + 0x5a8);
         writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
+
+/* usb_top_USBH2_PWR, gpio4_GPIO[11] */
+#define USB_PWR_GPIO 107
+
+       gpio_direction_output(USB_PWR_GPIO, 1);
  }

  static struct device_d usbh2_dev =3D {
@@ -288,20 +293,9 @@
         MX25_PAD_UART1_RTS__RTS,
         MX25_PAD_UART1_CTS__CTS,
         /* USBH2 */
-       MX25_PAD_D9__USBH2_PWR,
-       MX25_PAD_D8__USBH2_OC,
-       MX25_PAD_LD0__USBH2_CLK,
-       MX25_PAD_LD1__USBH2_DIR,
-       MX25_PAD_LD2__USBH2_STP,
-       MX25_PAD_LD3__USBH2_NXT,
-       MX25_PAD_LD4__USBH2_DATA0,
-       MX25_PAD_LD5__USBH2_DATA1,
-       MX25_PAD_LD6__USBH2_DATA2,
-       MX25_PAD_LD7__USBH2_DATA3,
-       MX25_PAD_HSYNC__USBH2_DATA4,
-       MX25_PAD_VSYNC__USBH2_DATA5,
-       MX25_PAD_LSCLK__USBH2_DATA6,
-       MX25_PAD_OE_ACD__USBH2_DATA7,
+#ifdef CONFIG_USB
+       MX25_PAD_D9__GPIO11,
+#endif
         /* i2c */
         MX25_PAD_I2C1_CLK__SCL,
         MX25_PAD_I2C1_DAT__SDA,


And for Linux 2.6.38.2:

--- a/linux-2.6.38.2/arch/arm/mach-imx/mach-mx25_3ds.c.orig =

2011-03-27 21:37:20.000000000 +0300
+++ b/linux-2.6.38.2/arch/arm/mach-imx/mach-mx25_3ds.c    2011-03-29 =

10:49:33.574515896 +0300
@@ -103,6 +103,9 @@
         MX25_PAD_SD1_DATA1__SD1_DATA1,
         MX25_PAD_SD1_DATA2__SD1_DATA2,
         MX25_PAD_SD1_DATA3__SD1_DATA3,
+
+       /* Use USBH2_PWR signal as gpio to enable USB */
+       MX25_PAD_D9__GPIO_4_11
  };

  static const struct fec_platform_data mx25_fec_pdata __initconst =3D {
@@ -126,6 +129,14 @@
         gpio_set_value(FEC_RESET_B_GPIO, 1);
  }

+#define USBH2_PWR_GPIO         IMX_GPIO_NR(4,11)
+
+static void __init imx25_usb_h2_powerup(void)
+{
+       gpio_request(USBH2_PWR_GPIO, "USBH2 PWR");
+       gpio_direction_output(USBH2_PWR_GPIO, 1);  /* Power up */
+}
+
  static const struct mxc_nand_platform_data
  mx25pdk_nand_board_info __initconst =3D {
         .width          =3D 1,
@@ -203,6 +214,7 @@
         imx25_add_imx_uart0(&uart_pdata);
         imx25_add_fsl_usb2_udc(&otg_device_pdata);
         imx25_add_mxc_ehci_hs(&usbh2_pdata);
+       imx25_usb_h2_powerup();
         imx25_add_mxc_nand(&mx25pdk_nand_board_info);
         imx25_add_imxdi_rtc(NULL);
         imx25_add_imx_fb(&mx25pdk_fb_pdata);

BR,

Teemu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
