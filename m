Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnSS0-0001z9-Nv
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 09:04:33 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Thu, 10 Feb 2011 10:04:26 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FEA30445A@SRV-VS06.TELEVIC.COM>
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
Subject: barebox startup
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

After struggling a while with i.MX27 NAND flash controller, I was able to start Barebox. Now, I have added some device, but I am not sure that everything starts as it should.
This is how my devices_init function looks like now : 

static struct memory_platform_data ram_pdata = {
	.name = "ram0",
	.flags = DEVFS_RDWR,
};

static struct device_d sdram_dev = {
	.id	  = -1,
	.name     = "mem",
	.map_base = 0xa0000000,
	.size     = 128 * 1024 * 1024,  /* 128 MB SDRAM */
	.platform_data = &ram_pdata,
};

static struct fec_platform_data fec_info = {
	.xcv_type = MII100,
	.phy_addr = 1,
};

static struct imx_nand_platform_data nand_info = {
    .width      = 1,
    .hw_ecc     = 1,
    .flash_bbt  = 1,
};

static int imx27pdk_devices_init(void)
{
  int i;

  unsigned int mode[] = {
      /* FEC */
      PD0_AIN_FEC_TXD0,
      PD1_AIN_FEC_TXD1,
      PD2_AIN_FEC_TXD2,
      PD3_AIN_FEC_TXD3,
      PD4_AOUT_FEC_RX_ER,
      PD5_AOUT_FEC_RXD1,
      PD6_AOUT_FEC_RXD2,
      PD7_AOUT_FEC_RXD3,
      PD8_AF_FEC_MDIO,
      PD9_AIN_FEC_MDC | GPIO_PUEN,
      PD10_AOUT_FEC_CRS,
      PD11_AOUT_FEC_TX_CLK,
      PD12_AOUT_FEC_RXD0,
      PD13_AOUT_FEC_RX_DV,
      PD14_AOUT_FEC_RX_CLK,
      PD15_AOUT_FEC_COL,
      PD16_AIN_FEC_TX_ER,
      PF23_AIN_FEC_TX_EN,
      /* UART */
      PE12_PF_UART1_TXD,
      PE13_PF_UART1_RXD,
      PE14_PF_UART1_CTS,
      PE15_PF_UART1_RTS,
      /* display */
      PA5_PF_LSCLK,
      PA6_PF_LD0,
      PA7_PF_LD1,
      PA8_PF_LD2,
      PA9_PF_LD3,
      PA10_PF_LD4,
      PA11_PF_LD5,
      PA12_PF_LD6,
      PA13_PF_LD7,
      PA14_PF_LD8,
      PA15_PF_LD9,
      PA16_PF_LD10,
      PA17_PF_LD11,
      PA18_PF_LD12,
      PA19_PF_LD13,
      PA20_PF_LD14,
      PA21_PF_LD15,
      PA22_PF_LD16,
      PA23_PF_LD17,
      PA24_PF_REV,
      PA25_PF_CLS,
      PA26_PF_PS,
      PA27_PF_SPL_SPR,
      PA28_PF_HSYNC,
      PA29_PF_VSYNC,
      PA30_PF_CONTRAST,
      PA31_PF_OE_ACD,
  };

  /* initialize gpios */
  for (i = 0; i < ARRAY_SIZE(mode); i++)
     imx_gpio_mode(mode[i]);

  register_device(&sdram_dev);
  imx27_add_fec(&fec_info);
  imx27_add_nand(&nand_info);

  devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
  dev_add_bb_dev("self_raw", "self0");

  devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
  dev_add_bb_dev("env_raw", "env0");


  armlinux_add_dram(&sdram_dev);
  armlinux_set_bootparams((void *)0xa0000100);

  return 0;
}

device_initcall(imx27pdk_devices_init);


(I used the pcm038 board as a reference. Most of the items in this function I took from that board's lowlevel function).

When starting up, I get the following console output :

barebox 2010.12.0-00073-gfad11e8-dirty (Feb  9 2011 - 14:09:49)

Board: Freescale i.MX27 PDK 3Stack
NAND device: Manufacturer ID: 0xec, Chip ID: 0xaa (Samsung NAND 256MiB 1,8V 8-bit)
Bad block table found at page 131008, version 0x02
Bad block table found at page 130944, version 0x02
Malloc space: 0xa7b00000 -> 0xa7f00000 (size  4 MB)
Stack space : 0xa7af8000 -> 0xa7b00000 (size 32 kB)
running /env/bin/init...
not found
barebox:/

This is the console output when executing the devinfo command :

barebox:/ devinfo
devices:
|----imx_serial0
|----cs0
|----ramfs0
|----devfs0
|----mem0 (defaultenv)
|----mem1 (mem)
|----mem2 (ram0)
|----fec_imx0
|----miidev0 (phy0)
|----eth0
|----imx_nand0
|----nand0 (nand0, nand_oob0, self_raw, env_raw)

drivers:
imx_serial
     ramfs
     devfs
   fec_imx
    miidev
  imx_nand
 cfi_flash
     imxfb
       mem
barebox:/


I expected to see the autoboot count-down and at least something about the network initialization. 
I think it probably has something to do with the env/config script file. I don't know exactly how it should be used. I ran ./scripts/bareboxenv -s -p 0x10000 arch/arm/imx27pdk/env env.bin which created env.bin in the barebox root. Afterwards, when doing a make all, I could see that there is a /env folder on my device which contains the config file. I could execute that script from the command line, but I suppose it should be executed automatically somehow.


For the moment, I don't have any activity on my Ethernet ports (no leds on or blinking), although I added the fec device. When I execute the dhcp command, I get :

barebox:/ dhcp
warning: No MAC address set. Using random address 8E:A2:E8:DD:E2:73
phy0: Link is up - 100/Full
transmission timeout
T transmission timeout
T transmission timeout

But, whether I connect the cable or not, it always shows "phy0:Link is up - 100/Full".

I also have a problem with the environment settings. Obviously, I can set some environment variables, e.g. ipaddr=192.168.1.10 :

barebox:/ ipaddr=192.168.1.10
barebox:/ printenv
locals:
ipaddr=192.168.1.10
globals:
barebox:/ saveenv
saving environment
barebox:/

But, although I did a saveenv (obviously successful), the environment settings disappear after resetting the board.



I think I might still miss something to make my board start correctly.

Someone can point me in the good direction ? (or point me to some doc about this)

Filip

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
