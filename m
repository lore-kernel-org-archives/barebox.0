Delivery-date: Mon, 22 Sep 2025 18:16:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jDn-0060vm-0T
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 18:16:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jDm-0001Tm-I7
	for lore@pengutronix.de; Mon, 22 Sep 2025 18:16:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H/3y4Q8EczSDBP557NCafwEmxRD2tcjPQttpNqK3SRY=; b=XWMmnsh83iutJno7tIGFPv5/7+
	aY4RHacvVLGSWvLchtKY4MSi8ck7LosJoTOkKeO0i4oEyV3/B5lE1/WrbeYQLMMcOHM6B/zX4OUIT
	vBcC10gMlEO2k4iWPvpzGMNc8CdIUac1899HBFVk2q9WLg535ZJDcytj97LDJOn6EAQP4Tu+6RV4a
	bSFLCtLd2HmDhDvQas0rMwzgoDAouJ9X9Z0vvM7wttcjKl69VoLd0LP2XeI7QtvC1G3y2zCeO6J0f
	yjIarpvBspyho5BVLPHbOXAGtxG843tYM6AcpPSIODSSI/Pjxyasdew1wvaM8NOML7ZrGdDFVcOLN
	TvF2VB9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jDS-0000000AxQ1-1Uqs;
	Mon, 22 Sep 2025 16:16:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jDP-0000000AxOe-2amt
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 16:16:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0jDO-0001MG-6Z; Mon, 22 Sep 2025 18:16:34 +0200
Message-ID: <fbdf26d4-458b-49f3-8a00-f68840e4c934@pengutronix.de>
Date: Mon, 22 Sep 2025 18:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
 <20250917-security-policies-v2-23-f30769a3ff51@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-23-f30769a3ff51@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_091635_665448_5659EAD0 
X-CRM114-Status: GOOD (  21.73  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 23/24] security: add filesystem security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 17.09.25 15:53, Sascha Hauer wrote:
> We don't have any trusted filesystems in barebox and a manipulated
> filesystem could trick barebox into crashing or loading untrusted data,
> so add a security policy for the barebox filesystems.
> 
> With SCONFIG_FS_EXTERNAL set barebox will allow mounting all filesystems
> whereas with this option disabled only ramfs can be mounted. ramfs is
> special: It is basically essential for barebox and also has no untrusted
> data input.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Sconfig    | 1 +
>  fs/Sconfig | 5 +++++
>  fs/fs.c    | 4 ++++
>  3 files changed, 10 insertions(+)
> 
> diff --git a/Sconfig b/Sconfig
> index 7d7657e79061f4bf200519cf1fab8810b544f97e..cdb2ceccb1b46b038c0d4fa8dbd203737031dec5 100644
> --- a/Sconfig
> +++ b/Sconfig
> @@ -8,3 +8,4 @@ source "security/Sconfig"
>  source "common/Sconfig"
>  source "drivers/usb/gadget/Sconfig"
>  source "commands/Sconfig"
> +source "fs/Sconfig"
> diff --git a/fs/Sconfig b/fs/Sconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..cdb58230f0e79addf8c0f719844af400e0d19939
> --- /dev/null
> +++ b/fs/Sconfig
> @@ -0,0 +1,5 @@
> +
> +config FS_EXTERNAL
> +	bool "Allow mounting external file systems"
> +	help
> +	  Say y to permit mounting file systems beyond devfs and ramfs.
> diff --git a/fs/fs.c b/fs/fs.c
> index 54bd35786857ab0e588277870fd1630d9292e116..5dcdf223756f470f94da15947e3f4e30bc27c1bd 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -35,6 +35,7 @@
>  #include <libfile.h>
>  #include <parseopt.h>
>  #include <linux/namei.h>
> +#include <security/config.h>
>  
>  char *mkmodestr(unsigned long mode, char *str)
>  {
> @@ -774,6 +775,9 @@ static int fs_probe(struct device *dev)
>  	struct fs_driver *fsdrv = container_of(drv, struct fs_driver, drv);
>  	int ret;
>  
> +	if (!IS_ALLOWED(SCONFIG_FS_EXTERNAL) && strcmp(fsdrv->drv.name, "ramfs"))
> +		return -EPERM;

devfs is listed in the Kconfig help text, but missing here.

Cheers,
Ahmad

> +
>  	ret = dev->driver->probe(dev);
>  	if (ret)
>  		return ret;
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


