Delivery-date: Fri, 09 Jun 2023 08:36:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vjr-00GqBJ-JT
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:36:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vjp-0002I6-BV
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:36:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OBeajQEyiN2Bkc3EJGClb/fyyXPDQyALLyY74JcNBg0=; b=Cy6kZPWbzKTvtzbVr+dvoaZwFA
	p26q9UU4IqHEzlmpRth1Vkrn7cPswhAxM76Oep5Dn9kH8d5umoGOuKigCFCBgDcDwX84zxyqOxQXZ
	xjFWVAX4EzEeuGeWeIL26QOYc9Fx+ZHlvPANpA0iwu90+UOw+pHlhN7MywUDr+cqa+pQftyT34SXG
	kaCJhXGjT9v6DOT+cjtiu71MBVY1t6v1AeCAzIUG+x8Tv4GNe0nNhktJMlHGyl6jF6tZ9v9zDT2Fh
	HAYpoIWLfqaW5dvk40ZQ7IPB3B4UcucaAGD0ORD0kAIUbBvZBeXvN4vNbVrq7SCJUGKfe+OSw33pJ
	5fvtdTOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vim-00BtB2-0u;
	Fri, 09 Jun 2023 06:35:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vii-00Bt9S-2u
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:35:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7Vih-00024c-KI; Fri, 09 Jun 2023 08:35:35 +0200
Message-ID: <9d5f07ea-d0c2-e6ad-1bd8-e102d0be7edb@pengutronix.de>
Date: Fri, 9 Jun 2023 08:35:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230607051155.3175-1-denorl2009@gmail.com>
 <20230607051155.3175-2-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230607051155.3175-2-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_233536_942459_055BC506 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] MIPS: add qemu-malta64el_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.06.23 06:59, Denis Orlov wrote:
> This defconfig will compile barebox for Malta board and MIPS64 5KEc/5KEf
> CPUs, emulatable in QEMU. The analogous 32-bit defconfig uses big endian
> CPU as the default one. So, for the sake of variety, and to improve the
> coverage of options, set the CPU as little endian for this one.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/configs/qemu-malta64el_defconfig | 87 ++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 arch/mips/configs/qemu-malta64el_defconfig
> 
> diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
> new file mode 100644
> index 0000000000..5fb090a646
> --- /dev/null
> +++ b/arch/mips/configs/qemu-malta64el_defconfig
> @@ -0,0 +1,87 @@
> +CONFIG_BOARD_QEMU_MALTA=y
> +CONFIG_CPU_LITTLE_ENDIAN=y
> +CONFIG_CPU_MIPS64_R2=y
> +CONFIG_64BIT=y
> +CONFIG_IMAGE_COMPRESSION_XZKERN=y
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
> +CONFIG_STACK_SIZE=0x7000
> +CONFIG_EXPERIMENTAL=y
> +CONFIG_BAUDRATE=38400
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_BOOTM_SHOW_TYPE=y
> +CONFIG_CONSOLE_ALLOW_COLOR=y
> +CONFIG_PARTITION=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_CMD_DMESG=y
> +CONFIG_LONGHELP=y
> +CONFIG_CMD_IOMEM=y
> +CONFIG_CMD_IMD=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_LOADY=y
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_DEFAULTENV=y
> +CONFIG_CMD_LOADENV=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_SHA1SUM=y
> +CONFIG_CMD_SHA256SUM=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_DHCP=y
> +CONFIG_CMD_MIITOOL=y
> +CONFIG_CMD_PING=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_LOGIN=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENU_MANAGEMENT=y
> +CONFIG_CMD_PASSWD=y
> +CONFIG_CMD_FBTEST=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_CRC=y
> +CONFIG_CMD_CRC_CMP=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_I2C=y
> +CONFIG_CMD_OF_NODE=y
> +CONFIG_CMD_OF_PROPERTY=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_TIME=y
> +CONFIG_NET=y
> +CONFIG_NET_NFS=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_OFDEVICE=y
> +CONFIG_OF_BAREBOX_DRIVERS=y
> +CONFIG_DRIVER_NET_RTL8139=y
> +# CONFIG_SPI is not set
> +CONFIG_I2C=y
> +CONFIG_I2C_GPIO=y
> +CONFIG_MTD=y
> +CONFIG_DRIVER_CFI=y
> +# CONFIG_DRIVER_CFI_AMD is not set
> +# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
> +# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
> +CONFIG_CFI_BUFFER_WRITE=y
> +CONFIG_VIDEO=y
> +CONFIG_FRAMEBUFFER_CONSOLE=y
> +CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
> +CONFIG_GPIO_MALTA_FPGA_I2C=y
> +CONFIG_PCI=y
> +CONFIG_PCI_DEBUG=y
> +CONFIG_SYSCON_REBOOT_MODE=y
> +CONFIG_POWER_RESET_SYSCON=y
> +CONFIG_FS_CRAMFS=y
> +CONFIG_FS_TFTP=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_WRITE=y
> +CONFIG_FS_FAT_LFN=y

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



