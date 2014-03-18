Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vm01-scratchy.webonline.biz ([41.86.105.82])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPqTu-000411-PK
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 09:38:47 +0000
Date: Tue, 18 Mar 2014 11:21:47 +0200
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CF4DDB75.DE67%ivor@veriline.co.za>
References: <CF4C8000.DD58%ivor@veriline.co.za>
 <CF4C8306.DD5F%ivor@veriline.co.za>
 <20140317120956.GV24917@pengutronix.de>
In-Reply-To: <20140317120956.GV24917@pengutronix.de>
Mime-version: 1.0
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
Subject: Re: GPIO setting
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi, I am still having a problem with the GPIO.

When I check the mux registers for the GPIO pins I want to use, i get:

barebox@Phytec phyCORE pcm049:/ md 0x4a100130
4a100130: 00070118 00070007 00070007 00070007
................
4a100140: 00000118 00000100 01180118 01180118
................

This indicates that the pins are still in safe mode despite the settings
of below in the mux.c file.

{MCSPI1_CLK, (M3)},					/* gpio134 */
	{MCSPI1_SOMI, (M3)},					/* gpio135 */
	{MCSPI1_SIMO, (M3)},					/* gpio136 */
	{MCSPI1_CS0, (M3)},					/* gpio137 */
	{MCSPI1_CS1, (M3)},					/* gpio138 */
	{MCSPI1_CS2, (M3)},					/* gpio139 */
	{MCSPI1_CS3, (M3)},					/* gpio140 */

In the board file I have the following code:

static int pcm049_devices_init(void)
{
	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
	omap44xx_add_i2c1(NULL);
	omap44xx_add_mmc1(NULL);

	gpmc_generic_init(0x10);

	pcm049_network_init();

	omap_add_gpmc_nand_device(&nand_plat);

#ifdef CONFIG_PARTITION
	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED,
"xload_raw");
	dev_add_bb_dev("xload_raw", "xload");
	devfs_add_partition("nand0", SZ_128K, SZ_512K, DEVFS_PARTITION_FIXED,
"self_raw");
	dev_add_bb_dev("self_raw", "self0");
	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K,
DEVFS_PARTITION_FIXED, "env_raw");
	dev_add_bb_dev("env_raw", "env0");
#endif

	armlinux_set_bootparams((void *)0x80000100);
	armlinux_set_architecture(MACH_TYPE_PCM049);

	omap_add_display(&pcm049_fb_data);

	gpio_direction_output(134, 1);
	gpio_direction_output(135, 1);
	gpio_direction_output(136, 1);
	gpio_direction_output(137, 1);
	gpio_direction_output(138, 0);
	gpio_direction_output(139, 0);
	gpio_direction_output(140, 0);

	return 0;
}

If I do a mw 0x4a10013c 0x00030003 the register is changed as expected. I
can then use the gpio_direction_output command to toggle the pin.


So the problem clearly lies within the way the mux registers are
configured.

Any ideas on what I am doing wrong

Vielen dank
Ivor





On 2014/03/17, 2:09 PM, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:

>On Mon, Mar 17, 2014 at 10:47:06AM +0200, Ivor Kruger wrote:
>> Hi, sure this is a quick and easy question for the group?
>> 
>> On the OMAP4430, using the command from within barebox prompt to
>>configure
>> a GPIO for testing hardware:
>> 
>> gpio_direction_output 140 0
>> 
>> Should this be sufficient to set the gpio pin low, or is it required to
>> still do some pin muxing as well?
>
>The gpio functions only configure the gpio controller. If this pin is
>not gpio by default, you have to configure the pinmux controller aswell.
>There is no way to do that on the barebox commandline other than direct
>register
>writes to the pinmux controller.
>
>Sascha
>
>-- 
>Pengutronix e.K.                           |                             |
>Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
