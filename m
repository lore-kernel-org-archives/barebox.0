Delivery-date: Fri, 21 Feb 2025 18:09:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlWXG-005C0r-1w
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 18:09:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlWXF-0003o9-1x
	for lore@pengutronix.de; Fri, 21 Feb 2025 18:09:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3pJrrB7TzyOkpVRmx17tfhXD6cODeJXfpnmNr9QWtZg=; b=2NqBbYCLXJ7b11MG3qhpGJ20K9
	KDOdVtEVflG5+Dl1p7vergSuXJbrMXabwkQels1cxgONx/2SVmBkTYWaQ+EIZ8B8mcyTlXlt4+U4i
	JdVNXrV47cQ1rj0WKXDvLbZqT6vqfk9v3hLtrayTnfwxsM9Gi3lXyA+Yk9DLn3v5CWROq5A6/sghC
	zMZY7JGJZ+BGwZaM1Ry5vL7POm26HRj3uyeo+7qqpIxOsN1qv/JExqUnlOB5pFXURK4IV58DWxk7w
	MmW86M76vT2vPMGWz2O1DMciXgMGXinPB+6qmYWxe9Rb/i45RcrDOV5OQqhH6wBpWkM5vv3dZDaPx
	G001RoAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWWY-00000006JoP-3x9j;
	Fri, 21 Feb 2025 17:09:14 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWMj-00000006Hbw-1keb
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 16:59:06 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4397dff185fso20382175e9.2
        for <barebox@lists.infradead.org>; Fri, 21 Feb 2025 08:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740157143; x=1740761943; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=3pJrrB7TzyOkpVRmx17tfhXD6cODeJXfpnmNr9QWtZg=;
        b=ellEa18CwWBHEFvlM8XCCW0OllukF3HC5pnRvMF7Iykyvr7KMgxkTg3wYvCq6BNLrt
         Cdnov9jmgBXouEHdpW8YurnFV+BztzuJLgUgiM6aDgEKlFtRVrPHMMCarF2LcgsEC1Uf
         fndN1uW/x5UXiHWpHrEjPUJsvF9KrGCXtCL+8v+qliRQuF5KGo5lcDniC3ZsmwdAxuxP
         eV6E0gfBwbbyInvBF2tQczEvfKt4Iq4F1qNC6wqgqMZzaxRoTDvngnBRRCBRkXU4gn8R
         1v8SIPM1ijGM2Y2b36+1dXqNjNbvaAAeejdp3P/683yzNOCcH70qSmZ/u5NnlM8k3sYJ
         AHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740157143; x=1740761943;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3pJrrB7TzyOkpVRmx17tfhXD6cODeJXfpnmNr9QWtZg=;
        b=ngeWYC9jcvk+1LGc/jbEfqrKSr2GQomHH3yZU3grwigBM/EDEOhvwxgZ2lXZMgyBCI
         j85qPUSS96rU1wm4nMofwkPoDp2OoQq0N7VyURvPt8OE4wr79khKdzxepRhDEMfRXnt7
         5SrthLl7gE2B07fo9FzllpoSglx/U/0ERQSxfGOWa8tlYYQlvZGb2goPKMIKrF72/52V
         1QQNvyIvmu2Q/Xc/DZqCewS9X7zD3M7FDwAwQ8iYzYcG16oC0c+4ia+8SYvRErj1q+fT
         cFIRoimWvMfyKEXZFVkALPyW1UBB/OcyU2HR55WbeYyzqtr/JGUxpZDuP7ZKK8BCRb5I
         s/Ow==
X-Gm-Message-State: AOJu0Yx4syadAQnJgAPgQg2Xk+2GvWZF98aOHMy7OgVjQQuqn0aEbz3h
	FH9asZIhf3vYnxV+Ye6ZTDZiTofN93ojXCg00tMLwbzdQJoXpPYSS7/VAA==
X-Gm-Gg: ASbGnctKzNgz/uTzwx8Z86fj1W9vLNXNujXBWnOCcjru55PWy7T4CQqDbDeP6XLuNPe
	1JTiXI0z86HCArfKb7CpSrpqIzbCp3igdfImLJ5lt1QjYRhdAuiW/oWQeCOOr7b66WV2Q/cW+5m
	HMTF/dGNlomHLgQ06TbmjrReLpDgi00T3BHtZVWqLYHKNHWYON2AxICAD9R4lCQkDk6f2CIevwT
	PZW2giTpesRk2MmrQ87mE35l7SA+ZH6Q89Hyv/T0SzYs4jfFItAtn4UbDimU1uRA/4mY8PO6soi
	h17SkXq3/BWD1N5WeD7LCSo+fsW67J24lTPOkMwBsEXYkC4ZypiZqz5AtlL4DL1sAGz30f4=
X-Google-Smtp-Source: AGHT+IG9n45LdXCGrhxkIgGdh7EmmERBCJAzwJojWEXpukMfpt1PSMyS+Nh69kga3EULKKu8f7KeCg==
X-Received: by 2002:a5d:5254:0:b0:38e:65d8:b677 with SMTP id ffacd0b85a97d-38f6f05183bmr3577850f8f.33.1740157142925;
        Fri, 21 Feb 2025 08:59:02 -0800 (PST)
Received: from [192.168.47.169] (93-38-135-177.ip70.fastwebnet.it. [93.38.135.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d9be9sm24225922f8f.79.2025.02.21.08.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:59:02 -0800 (PST)
Date: Fri, 21 Feb 2025 18:47:23 +0100
From: Stefano Manni <stefano.manni@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <Z2O1SS.LY1P1MZAEMZ02@gmail.com>
In-Reply-To: <Z7hXohthRBbG9XIf@pengutronix.de>
References: <J2TZRS.AUAITN7RW0RJ1@gmail.com>
	<Z7hXohthRBbG9XIf@pengutronix.de>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_085905_457229_AFE93937 
X-CRM114-Status: GOOD (  24.50  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sasha,

sorry but I changed my workstation recently and did not restore 
send-email as on the old one. I thought the mail client geary would be 
enough but it is not.
I will send a new patch series in these days.

Best,
Stefano

On ven, feb 21 2025 at 11:38:26 +01:00:00, Sascha Hauer 
<s.hauer@pengutronix.de> wrote:
> Hi Stefano,
> 
> The patch is mangled. Could you send it using git send-email? Using a
> web endpoint for b4 would be another possibility if git send-email
> doesn't work for you.
> 
> The two patches should be sent as one to avoid intermediate breakage
> between the patches.
> 
> Regards
>   Sascha
> 
> On Thu, Feb 20, 2025 at 06:39:55PM +0100, Stefano Manni wrote:
>>  Device file was hardcoded to "nand0.barebox".
>>  This patch harmonize the signature of
>> 
>>  imx6_bbu_nand_register_handler()
>>  imx7_bbu_nand_register_handler()
>>  imx28_bbu_nand_register_handler()
>> 
>>  with the other bbu register functions in order to take
>>  the devicefile as parameter.
>> 
>>  Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
>>  ---
>>  common/imx-bbu-nand-fcb.c | 23 ++++++++++++++++-------
>>  include/bbu.h | 18 ++++++++++++------
>>  2 files changed, 28 insertions(+), 13 deletions(-)
>> 
>>  diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
>>  index d0261140cf..0d17a7bf6a 100644
>>  --- a/common/imx-bbu-nand-fcb.c
>>  +++ b/common/imx-bbu-nand-fcb.c
>>  @@ -1219,6 +1219,7 @@ static int imx_bbu_nand_update(struct 
>> bbu_handler
>>  *handler, struct bbu_data *dat
>>   int used = 0;
>>   int fw_orig_len = 0;
>>   int used_refresh = 0, unused_refresh = 0;
>>  + const char *devname = handler->devicefile;
>> 
>>   if (data->image) {
>>    filetype = file_detect_type(data->image, data->len);
>>  @@ -1230,7 +1231,12 @@ static int imx_bbu_nand_update(struct 
>> bbu_handler
>>  *handler, struct bbu_data *dat
>>     return -EINVAL;
>>   }
>> 
>>  - bcb_cdev = cdev_by_name(handler->devicefile);
>>  + /* Support both boot /dev/nand0.barebox and boot nand0.barebox */
>>  + devname += str_has_prefix(devname, "/dev/");
>>  +
>>  + device_detect_by_name(devname);
>>  +
>>  + bcb_cdev = cdev_by_name(devname);
>>   if (!bcb_cdev) {
>>    pr_err("%s: No FCB device!\n", __func__);
>>    return -ENODEV;
>>  @@ -1432,7 +1438,8 @@ static void imx6_fcb_create(struct
>>  imx_nand_fcb_bbu_handler *imx_handler,
>>   fcb->MetadataBytes = 10;
>>  }
>> 
>>  -int imx6_bbu_nand_register_handler(const char *name, unsigned long 
>> flags)
>>  +int imx6_bbu_nand_register_handler(const char *name,
>>  + const char *devicefile, unsigned long flags)
>>  {
>>   struct imx_nand_fcb_bbu_handler *imx_handler;
>>   struct bbu_handler *handler;
>>  @@ -1451,7 +1458,7 @@ int imx6_bbu_nand_register_handler(const char 
>> *name,
>>  unsigned long flags)
>>   }
>> 
>>   handler = &imx_handler->handler;
>>  - handler->devicefile = "nand0.barebox";
>>  + handler->devicefile = devicefile;
>>   handler->name = name;
>>   handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>>   handler->handler = imx_bbu_nand_update;
>>  @@ -1526,7 +1533,8 @@ static void imx28_fcb_create(struct
>>  imx_nand_fcb_bbu_handler *imx_handler,
>>   fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
>>  }
>> 
>>  -int imx28_bbu_nand_register_handler(const char *name, unsigned 
>> long flags)
>>  +int imx28_bbu_nand_register_handler(const char *name,
>>  + const char *devicefile, unsigned long flags)
>>  {
>>   struct imx_nand_fcb_bbu_handler *imx_handler;
>>   struct bbu_handler *handler;
>>  @@ -1540,7 +1548,7 @@ int imx28_bbu_nand_register_handler(const 
>> char *name,
>>  unsigned long flags)
>>   imx_handler->filetype = filetype_mxs_bootstream;
>> 
>>   handler = &imx_handler->handler;
>>  - handler->devicefile = "nand0.barebox";
>>  + handler->devicefile = devicefile;
>>   handler->name = name;
>>   handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>>   handler->handler = imx_bbu_nand_update;
>>  @@ -1599,7 +1607,8 @@ static int imx7_fcb_write(struct mtd_info 
>> *mtd, int
>>  block, struct fcb_block *fcb
>>   return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
>>  }
>> 
>>  -int imx7_bbu_nand_register_handler(const char *name, unsigned long 
>> flags)
>>  +int imx7_bbu_nand_register_handler(const char *name
>>  + const char *devicefile, unsigned long flags)
>>  {
>>   struct imx_nand_fcb_bbu_handler *imx_handler;
>>   struct bbu_handler *handler;
>>  @@ -1612,7 +1621,7 @@ int imx7_bbu_nand_register_handler(const char 
>> *name,
>>  unsigned long flags)
>>   imx_handler->filetype = filetype_arm_barebox;
>> 
>>   handler = &imx_handler->handler;
>>  - handler->devicefile = "nand0.barebox";
>>  + handler->devicefile = devicefile;
>>   handler->name = name;
>>   handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>>   handler->handler = imx_bbu_nand_update;
>>  diff --git a/include/bbu.h b/include/bbu.h
>>  index 5105d2ac70..087d3ee827 100644
>>  --- a/include/bbu.h
>>  +++ b/include/bbu.h
>>  @@ -98,19 +98,25 @@ static inline int 
>> bbu_mmcboot_register_handler(const
>>  char *name,
>>  #endif
>> 
>>  #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
>>  -int imx6_bbu_nand_register_handler(const char *name, unsigned long 
>> flags);
>>  -int imx7_bbu_nand_register_handler(const char *name, unsigned long 
>> flags);
>>  -int imx28_bbu_nand_register_handler(const char *name, unsigned 
>> long flags);
>>  +int imx6_bbu_nand_register_handler(const char *name, const char
>>  *devicefile, unsigned long flags);
>>  +int imx7_bbu_nand_register_handler(const char *name, const char
>>  *devicefile, unsigned long flags);
>>  +int imx28_bbu_nand_register_handler(const char *name, const char
>>  *devicefile, unsigned long flags);
>>  #else
>>  -static inline int imx6_bbu_nand_register_handler(const char *name, 
>> unsigned
>>  long flags)
>>  +static inline int imx6_bbu_nand_register_handler(const char *name,
>>  + const char *devicefile,
>>  + unsigned long flags)
>>  {
>>   return -ENOSYS;
>>  }
>>  -static inline int imx7_bbu_nand_register_handler(const char *name, 
>> unsigned
>>  long flags)
>>  +static inline int imx7_bbu_nand_register_handler(const char *name,
>>  + const char *devicefile,
>>  + unsigned long flags)
>>  {
>>   return -ENOSYS;
>>  }
>>  -static inline int imx28_bbu_nand_register_handler(const char *name,
>>  unsigned long flags)
>>  +static inline int imx28_bbu_nand_register_handler(const char *name,
>>  + const char *devicefile,
>>  + unsigned long flags)
>>  {
>>   return -ENOSYS;
>>  }
>>  --
>>  2.25.1
>> 
>> 
>> 
>> 
>> 
> 
> --
> Pengutronix e.K.                           |                          
>    |
> Steuerwalder Str. 21                       | 
> http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 
>    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   
> +49-5121-206917-5555 |




