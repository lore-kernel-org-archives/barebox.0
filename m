Delivery-date: Tue, 08 Apr 2025 13:02:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u26if-009xHS-0Z
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 13:02:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u26ie-0008Fn-Jw
	for lore@pengutronix.de; Tue, 08 Apr 2025 13:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b07mOK/CfY4M5Ndj1drm4Er6WMoFJlUMy+7tY30lTZM=; b=Osuh5WIzHjWXQ66KZh64bOyen0
	uq+MO6ZrcjpT6YhU7jr5UfY8k+Z+KQZg85vpBzHAwcN6vOAVO3cmW6bUagP4itj0YdLFXBF1NN2ch
	aqi6xBgPCZJZRkb0RPDP4yz32t1BLLz/cxIfm5UGrHYmXEKE3P+pIQYZ5qWegN0/xWuzMiXG25r2b
	MCFKvZDvEYLxEyMJV9LtyGkOArsSm8Or5yZ+D6ochJwenpRtFf+9nNDDk1+SPyPm8JGAG2adjt4Bw
	Ty6K+/U0kp0ByjzlP0QWkpAT0ynErGFx+0YyXDRZ0FskCy9auUHDssD29fl5PTBLWVF+YOMhvK1Mp
	Qc18tUNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u26iB-00000003mUj-2xIP;
	Tue, 08 Apr 2025 11:01:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u26As-00000003emg-3WoZ
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 10:27:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u26Ar-00056P-GK; Tue, 08 Apr 2025 12:27:21 +0200
Message-ID: <d4fec09a-d646-4769-bde2-c38cdd10297e@pengutronix.de>
Date: Tue, 8 Apr 2025 12:27:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250407130729.2889508-1-s.hauer@pengutronix.de>
 <20250407130729.2889508-2-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250407130729.2889508-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_032722_880138_19B8EA91 
X-CRM114-Status: GOOD (  11.41  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: create generic FIT image handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 07.04.25 15:07, Sascha Hauer wrote:
> -static struct image_handler arm_fit_handler = {
> -        .name = "FIT image",
> -        .bootm = do_bootm_linux,
> -        .filetype = filetype_oftree,
> -};
> -

You delete the object, but not the references to it from the initcall.


> -static __maybe_unused int sandbox_fit_register(void)
> +static int sandbox_fit_register(void)
>  {
> -	return register_image_handler(&sandbox_fit_handler);
> +	return register_image_handler(&fit_handler);
>  }
> -#ifdef CONFIG_SANDBOX
>  late_initcall(sandbox_fit_register);

Initcall needs to be renamed.

> -#endif


Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


