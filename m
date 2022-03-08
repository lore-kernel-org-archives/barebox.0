Delivery-date: Tue, 08 Mar 2022 17:39:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcra-004qZw-OX
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 17:39:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcrZ-0002GL-84
	for lore@pengutronix.de; Tue, 08 Mar 2022 17:39:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJs9A/aV0F3bZDNY9GgoLyhxGUCqKBL7n0T5W1W6Dk8=; b=n2obI88zBhYJhy
	KjcPUVC6RXgnnWst3eU3NRmWARzk+VHxtdnQDZ2etAO3yrzs0tH/CEuPyGXiKbBCduutxw0xS+Ipn
	2pRjt5SK4jbR7a3172uEPDlHVKy9dMAD7ThcEAQI/JQ9ot3IDPoj9l5ZU8yLX6uzya4WpwXXgV/Wq
	UNz4H1tF0RzZl1OHtnvxvt+Hs0rY6w4QhMn/6sigmxafyhM3Xj3gpVvsDVAGjP1QtEEJQxqrsk/EX
	BWDbAaWyWQAusaAihgGW/MjBRAfsMR3g4KMDoMkQDvdKHFLhu4NvQlHSJU9qDztCyAmyvrcVOcXH7
	zTVpuxW2FF+W5/mreMtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcqD-005Fl7-3K; Tue, 08 Mar 2022 16:37:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcaB-005B5T-48
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 16:21:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nRca9-00088k-Om; Tue, 08 Mar 2022 17:21:05 +0100
Message-ID: <694c28de-73e2-ff61-c32f-4e323989a822@pengutronix.de>
Date: Tue, 8 Mar 2022 17:21:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Joacim Zetterling <joacim.zetterling@westermo.com>,
 barebox@lists.infradead.org
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
 <20220308160801.782206-3-joacim.zetterling@westermo.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220308160801.782206-3-joacim.zetterling@westermo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_082107_230404_E385A13E 
X-CRM114-Status: GOOD (  33.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] scripts: arch: imx: Add QSPI boot support to IMX
 build image script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.03.22 17:08, Joacim Zetterling wrote:
> This functionality extend the IMX image build script with a support
> for generating QSPI boot images.
> 
> A QSPI boot image need device configuration parameters located at
> an offset of 0x400 in the IVT section. The configuration parameters
> are stored in a 512 byte bin file which will be included in the
> final boot image. The boot image parameters comes from the board
> flash header imxcfg file.
> 
> The QSPI configuration parameters are described in the reference
> manual for the specific target.
> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>

Does this mean we can't have the same barebox image for both SD/eMMC
and QSPI-NOR?

Does filetype correctly detect this format? If not, you should
add a check there to allow barebox update handlers to bail out
when installing an incompatible image.

Cheers,
Ahmad

> ---
>  arch/arm/mach-imx/include/mach/imx-header.h |  2 +
>  scripts/imx/imx-image.c                     | 25 ++++++++
>  scripts/imx/imx.c                           | 67 ++++++++++++++++++++-
>  3 files changed, 93 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
> index 8e968e6efba3..a58deb8d864e 100644
> --- a/arch/arm/mach-imx/include/mach/imx-header.h
> +++ b/arch/arm/mach-imx/include/mach/imx-header.h
> @@ -118,6 +118,8 @@ struct config_data {
>  	char *signed_hdmi_firmware_file;
>  	int encrypt_image;
>  	size_t dek_size;
> +	uint32_t bb_cfg_ofs;
> +	char *bb_cfg_file;
>  };
>  
>  #define MAX_RECORDS_DCD_V2 1024
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 439912a805dc..b8ae63ad9400 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -951,6 +951,31 @@ int main(int argc, char *argv[])
>  			exit(1);
>  		}
>  
> +		/*
> +		* The boot ROM expects a 512-byte configuration parameters area for
> +		* some devices (like the FlexSPI NOR flash) to be present an defined
> +		* offset in the image ivt section (0x400 for the FlexSPI NOR).
> +		*/
> +		if (data.bb_cfg_file) {
> +			size_t bb_cfg_file_size = 512;
> +			char *bb_cfg;
> +
> +			bb_cfg = calloc(512, sizeof(char));
> +			if (!bb_cfg)
> +				exit(1);
> +
> +			bb_cfg = read_file(data.bb_cfg_file, &bb_cfg_file_size);
> +
> +			if (lseek(outfd, data.bb_cfg_ofs, SEEK_SET) < 0) {
> +				perror("lseek");
> +				exit(1);
> +			}
> +
> +			xwrite(outfd, bb_cfg, bb_cfg_file_size);
> +
> +			free(bb_cfg);
> +		}
> +
>  		if (lseek(outfd, data.header_gap, SEEK_SET) < 0) {
>  			perror("lseek");
>  			exit(1);
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 87560ad27de1..a242e6d76a47 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -215,6 +215,16 @@ static int do_dcdofs_error(struct config_data *data, int argc, char *argv[])
>  	return -EINVAL;
>  }
>  
> +static int do_header_gap(struct config_data *data, int argc, char *argv[])
> +{
> +	if (argc < 2)
> +		return -EINVAL;
> +
> +	data->header_gap = strtoul(argv[1], NULL, 0);
> +
> +	return 0;
> +}
> +
>  struct soc_type {
>  	char *name;
>  	int header_version;
> @@ -223,6 +233,7 @@ struct soc_type {
>  	uint32_t first_opcode;
>  };
>  
> +#define SZ_4K	(4 * 1024)
>  #define SZ_32K	(32 * 1024)
>  
>  static struct soc_type socs[] = {
> @@ -580,7 +591,6 @@ do_signed_hdmi_firmware(struct config_data *data, int argc, char *argv[])
>  	const char *file;
>  	int len;
>  
> -
>  	if (argc != 2) {
>  		fprintf(stderr, "usage: signed_hdmi_firmware <file>\n");
>  		return -EINVAL;
> @@ -609,6 +619,52 @@ do_signed_hdmi_firmware(struct config_data *data, int argc, char *argv[])
>  	return 0;
>  }
>  
> +static int do_bb_cfg_ofs(struct config_data *data, int argc, char *argv[])
> +{
> +	if (argc < 2)
> +		return -EINVAL;
> +
> +	data->bb_cfg_ofs = strtoul(argv[1], NULL, 0);
> +
> +	return 0;
> +}
> +
> +static int do_bb_cfg_file(struct config_data *data, int argc, char *argv[])
> +{
> +	const char *file;
> +	int len;
> +
> +	if (argc != 2) {
> +		fprintf(stderr, "usage: bb_cfg_file <file>\n");
> +		return -EINVAL;
> +	}
> +
> +	if ((data->cpu_type != IMX_CPU_IMX8MM) && 
> +		(data->cpu_type != IMX_CPU_IMX8MN) && 
> +		(data->cpu_type != IMX_CPU_IMX8MP) &&
> +		(data->cpu_type != IMX_CPU_IMX8MQ)) {
> +		fprintf(stderr,
> +			"Warning: The configuration param command is "
> +			"only supported i.MX8 SoCs\n");
> +		return 0;
> +	}
> +
> +	file = argv[1];
> +
> +	if (*file == '"')
> +		file++;
> +
> +	data->bb_cfg_file = strdup(file);
> +	if (!data->bb_cfg_file)
> +		return -ENOMEM;
> +
> +	len = strlen(data->bb_cfg_file);
> +	if (data->bb_cfg_file[len - 1] == '"')
> +		data->bb_cfg_file[len - 1] = 0;
> +
> +	return 0;
> +}
> +
>  struct command cmds[] = {
>  	{
>  		.name = "wm",
> @@ -634,6 +690,9 @@ struct command cmds[] = {
>  	}, {
>  		.name = "dcdofs",
>  		.parse = do_dcdofs_error,
> +	}, {
> +		.name = "header_gap",
> +		.parse = do_header_gap,
>  	}, {
>  		.name = "soc",
>  		.parse = do_soc,
> @@ -667,6 +726,12 @@ struct command cmds[] = {
>  	}, {
>  		.name = "signed_hdmi_firmware",
>  		.parse = do_signed_hdmi_firmware,
> +	}, {
> +		.name = "bb_cfg_ofs",
> +		.parse = do_bb_cfg_ofs,
> +	}, {
> +		.name = "bb_cfg_file",
> +		.parse = do_bb_cfg_file,
>  	},
>  };
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

