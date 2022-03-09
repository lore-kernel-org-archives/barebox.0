Delivery-date: Wed, 09 Mar 2022 09:45:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRrwf-005SEP-L7
	for lore@lore.pengutronix.de; Wed, 09 Mar 2022 09:45:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRrwd-0003YO-6B
	for lore@pengutronix.de; Wed, 09 Mar 2022 09:45:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2/itFpdHG8h4FfqmHP5JtTHIgrfXQ8fU4vtziGL4TwA=; b=uDY7hAwfTYUQIcLGari0Nbabw2
	ruv4FrsHcmy6vH0MS84Z1UEagcl1PLg1a76IPrSx+NvPAgVQsgafXEtF9Ie4+M0YAdw/DWunVgjam
	WYy0XkUlmV5g28Lp8RtSWAImn9KzXIR3vyASqWFd5Q+d6CXDkmaPSFuI7523/hUZf5juHcNLgs40X
	mX+s/SItIlRdr036H1Nvp6ixUfFbix6iJSZDwve4s1CZG3vBokaTAYWra9pCcx2wXhuXuEJyP63f7
	a1THVUzDy/ehqhQr5rDLeTdEcq6gkRsdvwMr60FThaBUq8uHTPV4d+k3frDKoOCR156Uk4iBR1tB9
	Q/CP9sxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRruy-007mWW-02; Wed, 09 Mar 2022 08:43:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRrus-007mW1-PK
 for barebox@lists.infradead.org; Wed, 09 Mar 2022 08:43:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRrur-0003QX-CM; Wed, 09 Mar 2022 09:43:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRrum-00005Q-RU; Wed, 09 Mar 2022 09:43:24 +0100
Date: Wed, 9 Mar 2022 09:43:24 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220309084324.GI405@pengutronix.de>
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
 <20220308160801.782206-3-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220308160801.782206-3-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:30:18 up 88 days, 17:15, 83 users,  load average: 0.56, 0.22, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_004330_847007_7446B4A5 
X-CRM114-Status: GOOD (  31.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] scripts: arch: imx: Add QSPI boot support to IMX
 build image script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Joacim,

On Tue, Mar 08, 2022 at 05:08:00PM +0100, Joacim Zetterling wrote:
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

The buffer you are allocating here is not used...
> +
> +			bb_cfg = read_file(data.bb_cfg_file, &bb_cfg_file_size);

...the pointer is directly overwritten with the buffer that read_file returns.

You should check the return value of read_file.

Anyway, specifying filenames in config files doesn't work properly. When
you are building out of tree then imx-image will look for the file
relative to $(objtree), but the file really is relative to $(srctree).

In other tools we usually pass filenames via a command line option, see
for example:

images/Makefile.mvebu:43:BINHDR_start_lenovo_ix4_300d.pblb.mvebu1img = $(board)/lenovo-ix4-300d/binary.0

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

