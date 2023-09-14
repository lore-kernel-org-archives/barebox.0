Delivery-date: Thu, 14 Sep 2023 10:04:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghL4-00EmZU-W2
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 10:04:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghL2-0001Ke-Qz
	for lore@pengutronix.de; Thu, 14 Sep 2023 10:04:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NUuuf9NI7TfTN6csmYOCdzRdzmO7VX4cGOb0QoKpyDY=; b=MTgEo8zclct9cKBfNz3QG8a3ch
	ykAcFrLUnquKeA2wNxq63Cx2FenSfzdQVzw32+zD8mPcHkqTLzUPIp45HdscxdX6vdO8ySG1hBSQj
	8HS1po13Cs8pGosL9Zk2qPwdpH/OILON2cw8kfZsDFaH9OX0a9uOESrFRD15JNXE4Hb200sDEAeX1
	kUD2ylyxAmzKfRF8Cfh2wy8xglp039PbLaH1zX0TMRQ1uFfsfT0ZurpD+ROnujeFAHbpT0JD3cGbN
	MgGUo/lyHqvbhxOV4ME/EGzAidt2UO+AfZXB71t+xxCKrnxzXHriZBEr3SGxLdfbmVQCfQXgA4VeX
	GcnqcmSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qghK0-007eM3-1Z;
	Thu, 14 Sep 2023 08:03:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qghJx-007eLK-1u
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 08:03:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghJw-0000gI-EQ; Thu, 14 Sep 2023 10:03:28 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qghJw-006FfL-29; Thu, 14 Sep 2023 10:03:28 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghJv-006g6j-W6; Thu, 14 Sep 2023 10:03:28 +0200
Date: Thu, 14 Sep 2023 10:03:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914080327.GM637806@pengutronix.de>
References: <20230913103552.1644839-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913103552.1644839-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_010329_628368_A8AA8F40 
X-CRM114-Status: GOOD (  20.65  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: fat: enable VFAT long file names by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 12:35:52PM +0200, Ahmad Fatoum wrote:
> Apparently, this option defaulted to 'n' since the very beginning, so
> users newly enabling FAT may unwittingly run into a cryptic:
> 
>   barebox@board:/ cp something /mnt/mmc0.0/freertos-main.elf
>   could not open /mnt/mmc0.0/freertos-main.elf: Invalid argument
> 
> As FAT file systems nowadays are VFAT by default and allow up to 255
> characters in file names, there's no reason to restrict barebox to
> classic 8.3 file names by default.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fat/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
> index 8cd3b604baeb..53f784ee54d5 100644
> --- a/fs/fat/Kconfig
> +++ b/fs/fat/Kconfig
> @@ -16,7 +16,7 @@ config FS_FAT_WRITE
>  
>  
>  config FS_FAT_LFN
> -	bool
> +	def_bool y
>  	prompt "Support long filenames"
>  	help
>  	  Enable support for file names other than 8.3.
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


