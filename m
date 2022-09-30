Delivery-date: Fri, 30 Sep 2022 14:39:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeFIX-001Q5z-EZ
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeFIW-0006aV-7e
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:39:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9sTgWYKGwGqWASyDo735huZ1qtzgREp5QgIaYJ0g9E0=; b=pvWPxDApc1hQdvQmBv8ZTWRhIb
	dkQtevGxsPlIvJynCqE99+InOmaqovnPUw6E6ARJ0/bm25JgGtMvckl5AYJfqfpTL+tK1RY0K0jmZ
	mmXlbbN1VIaTnhZeyp8Xab9uUFbCY0h83bJO4avcAFoN3Vsf68nPSsomWAambazbSgeLk5ChqtoYF
	ESh2uOLjbRBLG8x7Hg9wuMKzipaYf0ahF0Bm9/y2DWA8dFWZ+wGRbX6NyuYAfQ79Qfnc59CI5qGrV
	ykCToGFKAzsk7gUSAJ8ZvN+8bZ26Xj4Qqi/2iPaPea/xlOSchlBsBOBdSOi2/HRFxG8prhumGASVN
	AgOPLOVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFHF-009Bvn-QL; Fri, 30 Sep 2022 12:38:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFHB-009BuW-2d
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:37:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeFH7-0006U7-1A; Fri, 30 Sep 2022 14:37:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeFH6-00025t-Q0; Fri, 30 Sep 2022 14:37:52 +0200
Date: Fri, 30 Sep 2022 14:37:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jzi@pengutronix.de
Message-ID: <20220930123752.GC986@pengutronix.de>
References: <20220928085622.2677478-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220928085622.2677478-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_053757_160887_28EF7F0C 
X-CRM114-Status: GOOD (  26.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] bbu: fix exporting i.MX NAND bbu handler over
 fastboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 28, 2022 at 10:56:22AM +0200, Ahmad Fatoum wrote:
> handler->devicefile for i.MX NAND is nand0.barebox, which lacks a /dev/
> prefix. This is ok for detection, as device_detect_by_name expects the
> cdev name and devpath_to_name() will strip a /dev/ if available.
> 
> For stat() however, we need to add back /dev/, otherwise the file can't
> be found. Rework the code to do that.
> 
> This fixes an issue where usbgadget -A '' -b would not export a i.MX
> NAND barebox update handler.
> 
> Fixes: 726a802456bc ("common: bbu: only add available handlers")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/bbu.c | 37 ++++++++++++++++++-------------------
>  1 file changed, 18 insertions(+), 19 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/bbu.c b/common/bbu.c
> index d243ac89dd9f..3ec17216cb15 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -24,43 +24,42 @@
>  
>  static LIST_HEAD(bbu_image_handlers);
>  
> -static void append_bbu_entry(struct bbu_handler *handler, struct file_list *files)
> +static void append_bbu_entry(const char *_name,
> +			     const char *devicefile,
> +			     struct file_list *files)
>  {
>  	char *name;
>  
> -	name = basprintf("bbu-%s", handler->name);
> +	name = basprintf("bbu-%s", _name);
>  
> -	if (file_list_add_entry(files, name, handler->devicefile, 0))
> +	if (file_list_add_entry(files, name, devicefile, 0))
>  		pr_warn("duplicate partition name %s\n", name);
>  
>  	free(name);
>  }
>  
> -static bool bbu_handler_is_available(struct bbu_handler *handler)
> -{
> -	struct stat s;
> -	int ret;
> -
> -	device_detect_by_name(devpath_to_name(handler->devicefile));
> -
> -	ret = stat(handler->devicefile, &s);
> -	if (ret)
> -		return false;
> -
> -	return true;
> -}
> -
>  void bbu_append_handlers_to_file_list(struct file_list *files)
>  {
>  	struct bbu_handler *handler;
>  
>  	list_for_each_entry(handler, &bbu_image_handlers, list) {
> -		if (bbu_handler_is_available(handler)) {
> -			append_bbu_entry(handler, files);
> +		const char *cdevname;
> +		struct stat s;
> +		char *devpath;
> +
> +		cdevname = devpath_to_name(handler->devicefile);
> +		device_detect_by_name(cdevname);
> +
> +		devpath = basprintf("/dev/%s", cdevname);
> +
> +		if (stat(devpath, &s) == 0) {
> +			append_bbu_entry(handler->name, devpath, files);
>  		} else {
>  			pr_info("Skipping unavailable handler bbu-%s\n",
>  				handler->name);
>  		}
> +
> +		free(devpath);
>  	}
>  }
>  
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


