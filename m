Delivery-date: Mon, 15 Dec 2025 12:27:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6jP-00Bj4e-1J
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:27:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6jO-0005le-1q
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:27:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2OldbAZcO1PHoZWyQp4ozjUABF2IxZTZx9iR3m9Bdrk=; b=tF9HU5Ijcfe9Fw8qLb66iYzAMx
	sNQ4DFXhj5TfndONRpqVx7dXQb4kuxVRivxRAKcg46UuxX6sdcTkNYVzCufc2bMBcrI4teiS76uoW
	z1Aaajzfe2SmC8CqoVBevMmAkDDc2sXt/0pD1TzL2YZqalTWxFwUslLU00ozw5hyvCl2cLzejhDAT
	b7395ni5i0pb0FtFsl1Rn3xrgzrpn1RLVoprZbpWBNs0GIiGECAmqAOVUCoR1BwqFD8/4PgRAepE+
	0+rb52wiuyOGC08S7PFB08JXFwX4khW5E8dX0nOt4Ogk0lx1ZFgbdVvvDc+ydHPrP0NVdf7nArGpD
	FoFGumUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6iv-00000003WN9-2mnh;
	Mon, 15 Dec 2025 11:26:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6it-00000003WMk-326v
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:26:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6is-0005g6-2r; Mon, 15 Dec 2025 12:26:38 +0100
Message-ID: <cb110cc5-5f08-4189-994a-c27f65ab3314@pengutronix.de>
Date: Mon, 15 Dec 2025 12:26:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-10-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-10-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032639_792728_C428981F 
X-CRM114-Status: GOOD (  19.41  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/13] fs: stat_print: get cdevname from stat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> In stat_print() we have to take the filename component of the input path
> and retrieve the cdev from that name. Now that we have the cdevname in
> struct stat we can simplify this.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/fs.c | 25 ++++---------------------
>  1 file changed, 4 insertions(+), 21 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 9022287dff2f4959f64eac76c544634b3978d238..30fe5db4d2800ebfdc0c44603caea15bdff807aa 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -137,7 +137,6 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
>  	struct fs_device *fdev;
>  	struct cdev *cdev = NULL;
>  	const char *type = NULL, *typeprefix = "";
> -	bool is_cdev_link = false;
>  	char modestr[11];
>  
>  	mkmodestr(st->st_mode, modestr);
> @@ -152,23 +151,10 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
>  		case S_IFREG:    type = "regular file"; break;
>  	}
>  
> -	if (st->st_mode & S_IFCHR) {
> -		char *path;
> -
> -		path = canonicalize_path(dirfd, filename);
> -		if (path) {
> -			const char *devicefile = devpath_to_name(path);
> -			struct cdev *lcdev;
> -
> -			lcdev = lcdev_by_name(devicefile);
> -			cdev = cdev_readlink(lcdev);
> -			if (cdev != lcdev)
> -				is_cdev_link = true;
> -			if (cdev)
> -				bdev = cdev_get_block_device(cdev);
> -
> -			free(path);
> -		}
> +	if ((st->st_mode & S_IFCHR) && st->st_cdevname) {
> +		cdev = cdev_by_name(st->st_cdevname);
> +		if (cdev)
> +			bdev = cdev_get_block_device(cdev);
>  	}
>  
>  	printf("  File: %s", filename);
> @@ -182,9 +168,6 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
>  			printf(" -> <readlink error %pe>", ERR_PTR(ret));
>  		else
>  			printf(" -> %s", realname);
> -	} else if (is_cdev_link) {
> -		printf(" ~> %s", cdev->name);
> -		typeprefix = "cdev link to ";
>  	}
>  
>  	printf("\nSize: ");
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



