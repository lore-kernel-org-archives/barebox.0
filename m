Delivery-date: Tue, 22 Oct 2024 08:24:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t38Jc-007MHK-25
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 08:24:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t38Jb-0007nr-V6
	for lore@pengutronix.de; Tue, 22 Oct 2024 08:24:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJd7Su9YULC3mhBhM+HbNdj7pkAr+dJ3KWK/EsfddGs=; b=d7OEeopVOXFELfVcxkd7nEn4xd
	Z/WYBH7H9lAO16uC8iQh8n8upQmpBK1Gi4n6FHrXcma6OpMJcVxqO0Bq5xG0MOw6pUQNLuvdW122J
	b9B9mXvglZx7EdY8dVbCmo8AqIiGAGA0NA0Qqio1qyOrLqrX+uG1+AwuKmjZXutb3/BH5vzGjMWHn
	KKB1LMpy1QbaklBOGTYOJG4l2ke5ODlPwP9cjMm2c7tTakEmnKKaLp6NFmMUHOg5rp6bThHsvWcLy
	MOvHi3TFLi3YDgMc2j9GY1vOlMhOrxwuF27QnogXXd9oCuyvGRSmT/eJ4REbzUw2TvKAdnIWfaHpm
	K/8WQlJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t38J3-00000009nlM-1haz;
	Tue, 22 Oct 2024 06:23:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t38Iz-00000009nkr-2Ytd
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 06:23:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t38Iy-0007Xv-49; Tue, 22 Oct 2024 08:23:44 +0200
Message-ID: <b1699907-4424-4da5-bcbc-eed660f8d031@pengutronix.de>
Date: Tue, 22 Oct 2024 08:23:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20241021-phytec-nfs-automount-v1-1-20787c288563@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-phytec-nfs-automount-v1-1-20787c288563@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_232345_692096_4BCD2808 
X-CRM114-Status: GOOD (  16.08  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] automount: add nfs section to board automount scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jonas,

Thanks for your patch.

On 21.10.24 17:22, Jonas Rebmann wrote:
> When nfs automount was introduced in b31b7cf7e8b6, board specific

Nitpick: Kernel convention is to format commit hashes as
commit b31b7cf7e8b6 ("defaultenv-2: add automount for nfs").

> automount scripts where not updated

Nitpick: missing full stop.

> 
> ---
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Note that this will be cut off by git am, because it's under the ---.

Cheers,
Ahmad

> ---
>  arch/arm/boards/at91sam9m10ihd/env/init/automount                  | 5 ++++-
>  .../boards/efika-mx-smartbook/defaultenv-efikasb/init/automount    | 6 +++++-
>  .../boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount   | 7 ++++++-
>  3 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/automount b/arch/arm/boards/at91sam9m10ihd/env/init/automount
> index 96ffa7059aa8f0013d88b3a9cf8522f2cfd94e2b..e7bb1e79b1acca59c8f2113cc443c83f63be689c 100644
> --- a/arch/arm/boards/at91sam9m10ihd/env/init/automount
> +++ b/arch/arm/boards/at91sam9m10ihd/env/init/automount
> @@ -5,7 +5,10 @@
>  mkdir -p /mnt/tftp
>  automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
>  
> -# automount nfs server example
> +# automount nfs server's nfsroot
> +
> +mkdir -p /mnt/nfs
> +automount /mnt/nfs 'ifup -a1 && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
>  
>  # SD card slot, first partition
>  mkdir -p /mnt/mmc
> diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
> index 71dfd95f2b9646d46809f12c283be3fa135ad410..9a6160231b27c133c8fb03883f44c7be22950d58 100644
> --- a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
> +++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
> @@ -5,7 +5,11 @@
>  mkdir -p /mnt/tftp
>  automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
>  
> -# automount nfs server example
> +# automount nfs server's nfsroot
> +
> +mkdir -p /mnt/nfs
> +automount /mnt/nfs 'ifup -a1 && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
> +
>  
>  # internal harddisk /boot partition
>  mkdir -p /mnt/internal-hd0.0
> diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
> index fea64d627e97e97ab4d819f532dc2f80da9247a9..16fa87fcb78ba90a1bc94908faf18c5f347e8ecc 100644
> --- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
> +++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
> @@ -1,10 +1,15 @@
>  #!/bin/sh
>  
> -# automount tftp server based on $eth0.serverip
> +# automount tftp server
>  
>  mkdir -p /mnt/tftp
>  automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
>  
> +# automount nfs server's nfsroot
> +
> +mkdir -p /mnt/nfs
> +automount /mnt/nfs 'ifup -a && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
> +
>  mkdir -p /mnt/mmc
>  automount -d /mnt/mmc 'mmc2.probe=1 && [ -e /dev/mmc2.0 ] && mount /dev/mmc2.0 /mnt/mmc'
>  
> 
> ---
> base-commit: dda64a15ea026c95ccd8bd8a8b70c7e070af1a15
> change-id: 20241021-phytec-nfs-automount-8f1a06171c82
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


