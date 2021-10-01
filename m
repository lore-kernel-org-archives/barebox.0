Delivery-date: Fri, 01 Oct 2021 12:19:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFdz-000348-O3
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:19:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFdy-00085s-Jf
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/6LKrq9l5+Ex6zo9RYpV7rjm4ebaZ4M5wQa37ytmWMQ=; b=NW40EhOS8pWDxc0EJCdXeJcWmL
	oOXX87jTooHJx2gt3iXAoXJHNCSai5Bvk3h9cVp8zMuJE8iUggaF8E4tyhd/AtpDzYn4GbOOnuPcs
	M/DzptColMPEegackbXl7z265FE1RsIV3M4T/bWJee6NLlRSmKy7Mju+iFz1RfMvvk5LKY86ew9VR
	DZFb1TiNmVFUs6U1yfFwmSTbn4Zx1kRBniyfCFqGX3PnNDkfhfG2JjREdgh5qzpcF5WwvBW59qXzy
	teBqTYbqhqP+rZm1Q+OUVmGoevMudETvkckkGMJ42p6+rUZr506gkM2aWqEv0rn9yT8UhW8hTL7Pw
	7WMS5Cfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFck-00HTXX-CG; Fri, 01 Oct 2021 10:18:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFcf-00HTWj-La
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:18:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mWFce-000821-Ca; Fri, 01 Oct 2021 12:18:32 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-9-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8d183b2f-debf-f253-d07d-35f09b62ffba@pengutronix.de>
Date: Fri, 1 Oct 2021 12:18:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817101104.114945-9-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_031833_747085_B3742D8E 
X-CRM114-Status: GOOD (  16.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,UPPERCASE_50_75 autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RESEND v4 8/8] RISC-V: add litex_linux_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 17.08.21 12:11, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

I prefer a litex32_defconfig which will enable this and future boards.
But we can add this for now. 

> ---
>  arch/riscv/configs/litex_linux_defconfig | 75 ++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
> new file mode 100644
> index 0000000000..8e19964890
> --- /dev/null
> +++ b/arch/riscv/configs/litex_linux_defconfig
> @@ -0,0 +1,75 @@
> +CONFIG_SOC_LITEX=y
> +CONFIG_STACK_SIZE=0x20000
> +CONFIG_MALLOC_SIZE=0xf00000
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_PANIC_HANG=y
> +CONFIG_BAUDRATE=1000000
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +# CONFIG_TIMESTAMP is not set
> +CONFIG_BOOTM_SHOW_TYPE=y
> +CONFIG_BOOTM_VERBOSE=y
> +CONFIG_BOOTM_INITRD=y
> +CONFIG_BOOTM_OFTREE=y
> +CONFIG_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEBUG_LL=y
> +CONFIG_LONGHELP=y
> +CONFIG_CMD_IOMEM=y
> +CONFIG_CMD_IMD=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_LOADY=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_CMP=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_SHA1SUM=y
> +CONFIG_CMD_MSLEEP=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_DHCP=y
> +CONFIG_CMD_MIITOOL=y
> +CONFIG_CMD_PING=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_MEMTEST=y
> +CONFIG_CMD_MM=y
> +CONFIG_CMD_CLK=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_LED=y
> +CONFIG_CMD_SPI=y
> +CONFIG_CMD_LED_TRIGGER=y
> +CONFIG_CMD_OF_DUMP=y
> +CONFIG_CMD_TIME=y
> +CONFIG_CMD_DHRYSTONE=y
> +CONFIG_NET=y
> +CONFIG_NET_NFS=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_DRIVER_NET_LITEETH=y
> +CONFIG_AR8327N_PHY=y
> +CONFIG_AT803X_PHY=y
> +CONFIG_DAVICOM_PHY=y
> +CONFIG_DP83867_PHY=y
> +CONFIG_LXT_PHY=y
> +CONFIG_MARVELL_PHY=y
> +CONFIG_MICREL_PHY=y
> +CONFIG_NATIONAL_PHY=y
> +CONFIG_REALTEK_PHY=y
> +CONFIG_SMSC_PHY=y
> +CONFIG_DRIVER_SPI_LITEX_SPIFLASH=y
> +CONFIG_MTD=y
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_M25P80=y
> +CONFIG_CLOCKSOURCE_DUMMY_RATE=20000
> +CONFIG_SRAM=y
> +CONFIG_LED=y
> +CONFIG_LED_GPIO=y
> +CONFIG_LED_GPIO_OF=y
> +CONFIG_LED_TRIGGERS=y
> +CONFIG_GPIO_74XX_MMIO=y
> +CONFIG_GPIO_GENERIC_PLATFORM=y
> +# CONFIG_PINCTRL is not set
> +CONFIG_FS_TFTP=y
> +CONFIG_FS_NFS=y
> +CONFIG_DIGEST_CRC32_GENERIC=y
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

