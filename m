Delivery-date: Fri, 06 Oct 2023 13:56:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojRi-008NsV-Md
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 13:56:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojRh-0006Aa-Qr
	for lore@pengutronix.de; Fri, 06 Oct 2023 13:56:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eAMHhPIbAg+b0JL1P5IBFChbHYFiDgESBlAc/sVQLvA=; b=QHsA1kYgtTq0Y7rsIXn+o4sJWI
	Thm6z2Rrg3veF4l9pgYir3BKxY1LkK8qpi6YbKYv8XSSQxrlfe999F25SxLrwO9GbTi4Vfm1yYfk8
	mrFQ7/XCN+Qmac1GveUdbCb5ZavOuY4t2gZYaWS0LuofcVbjpht38O3YuECb7EunNt3h4nYOqoZHE
	lVeXaO0eCkEI1FzscjQQCEHdZAr/j4ZlhILj1sh53OKlWnGCtjU8UX9pjs40LWFIirNdg6fPmwZL3
	9f8yrSRki9UGR6Z6bXztgZYvgYSyxuwkYLXe8e4//fcDbT90twjAbfPHeIh7BOhAVFb46jtID2d9g
	jwGhDW8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qojQW-005j7w-2r;
	Fri, 06 Oct 2023 11:55:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qojQS-005j7V-2d
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 11:55:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojQR-0005xN-9E; Fri, 06 Oct 2023 13:55:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qojQQ-00BVMr-TH; Fri, 06 Oct 2023 13:55:22 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojQQ-00D4DV-Qv; Fri, 06 Oct 2023 13:55:22 +0200
Date: Fri, 6 Oct 2023 13:55:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231006115522.GG235829@pengutronix.de>
References: <20230921141628.277661-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921141628.277661-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_045524_859883_91F40DF0 
X-CRM114-Status: GOOD (  21.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] globalvar: add a globalvar_get helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 04:16:28PM +0200, Ahmad Fatoum wrote:
> We have functions to set global variables, but none to get them, but
> having a globalvar_get helper could be useful to get code size down when
> global variables are disabled, as globalvar_get("var") would be optimized
> out, while getenv("global.var") wouldn't. Therefore, add the helper.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/globalvar.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/globalvar.h b/include/globalvar.h
> index 36a7c7006c76..5fdb70fca911 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -10,6 +10,12 @@
>  extern struct device global_device;
>  
>  #ifdef CONFIG_GLOBALVAR
> +
> +static inline const char *globalvar_get(const char *name)
> +{
> +	return dev_get_param(&global_device, name);
> +}
> +
>  int globalvar_add_simple(const char *name, const char *value);
>  
>  void globalvar_remove(const char *name);
> @@ -41,6 +47,11 @@ void dev_param_init_from_nv(struct device *dev, const char *name);
>  void globalvar_alias_deprecated(const char *newname, const char *oldname);
>  
>  #else
> +static inline const char *globalvar_get(const char *name)
> +{
> +	return NULL;
> +}
> +
>  static inline int globalvar_add_simple(const char *name, const char *value)
>  {
>  	return 0;
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


