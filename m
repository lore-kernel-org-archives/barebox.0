Delivery-date: Thu, 05 Oct 2023 08:55:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIGP-006MqL-Lc
	for lore@lore.pengutronix.de; Thu, 05 Oct 2023 08:55:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIGN-0006Ex-Tg
	for lore@pengutronix.de; Thu, 05 Oct 2023 08:55:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2hzg37OPQ0fO6UrbZVA7WK8dR0qwHJLzP/NNhjBcKNY=; b=gqvoZ+5Y3HzmaE7oa3vWHN2GvK
	w2VD52+MOwOB38Fjg5pS/cEF3iOsEogzJa3T6CkUWsgBRhVcJPc76AuS709+2rA1ddZUWFYfiXBb1
	xEFy6iXzUAKIBpP9j5p2Khk8VERN/EiyM4vgeeyp/xgzhkUXT2uqn+s+JgyGc55GdM0379S6XHfEn
	tkQUlNzKZwrOIZu/bJtRdx51I7w4TV6iQJbiRYH3dmC4r4v5INilaB76TwkrM87YUFI3WxhYk1U23
	6e+6Sk0W7b865oeEqyylPuf6GT4RsI/fFqSrl3pkCieJT295786Na2/yrbcjQBQtEK8LQiVJa3DEb
	FTzsvtMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIFI-001Y8O-1N;
	Thu, 05 Oct 2023 06:54:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIFD-001Y7k-0S
	for barebox@lists.infradead.org;
	Thu, 05 Oct 2023 06:54:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoIFB-0005tS-U6; Thu, 05 Oct 2023 08:53:57 +0200
Message-ID: <94c6f8f0-5f55-0f17-8636-06d4a874a51e@pengutronix.de>
Date: Thu, 5 Oct 2023 08:53:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20230921141628.277661-1-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230921141628.277661-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_235359_181110_743A8DB5 
X-CRM114-Status: GOOD (  18.58  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] globalvar: add a globalvar_get helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.09.23 16:16, Ahmad Fatoum wrote:
> We have functions to set global variables, but none to get them, but
> having a globalvar_get helper could be useful to get code size down when
> global variables are disabled, as globalvar_get("var") would be optimized
> out, while getenv("global.var") wouldn't. Therefore, add the helper.

Gentle ping.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/globalvar.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



