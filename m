Delivery-date: Fri, 09 Dec 2022 08:48:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Y75-00FoHE-Cm
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:48:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Y74-0002Hi-OU
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:48:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qf4QIh1poctAFAFK9oymvxZ67jBt2+/LY+Wv6A9Lr0Y=; b=EtQ4kgyef37OielawQ0LsbDqjg
	+3nIVqNGzhZSk7A+4upRKDAyrqf6S7BCx7hSSm1be3eq+zJTraedI9cZmoRhbUC3bhdlpZkrsQfiT
	CttI+mFYZYcM8/1HQisO+E98hop0gmYhOACzwZL7PUMHqPZhzwdE4U64VvL4dRmyyb1q3VcJJB5E3
	MspEgD0vvOEPaSuiLbCg7Q9F+Wf1VkgHuQ9LmGFNl00iOe/xLbEpqIG2GLd9DNRVCvLFcq7a/iLYj
	Vhf9SeQooGtSiEjsqsGXYk6H/UqKPLFgjutfGgKI/KLglnvxqTUd1ThxBVta0P9H8+tg4TBVblmdu
	k225XO7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Y5r-005Cnx-N4; Fri, 09 Dec 2022 07:46:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Y5n-005CmL-8w
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:46:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3Y5m-0002BO-0P; Fri, 09 Dec 2022 08:46:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3Y5l-0004HY-PK; Fri, 09 Dec 2022 08:46:45 +0100
Date: Fri, 9 Dec 2022 08:46:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221209074645.GJ29728@pengutronix.de>
References: <20221209072900.3769403-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221209072900.3769403-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_234647_333857_396D68E2 
X-CRM114-Status: GOOD (  23.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootsource: export bootsource_to_string()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 09, 2022 at 08:29:00AM +0100, Ahmad Fatoum wrote:
> bootsource_str which translates enum bootsource to a string is not
> exported to other parts of barebox. Define a new bootsource_to_string()
> that provides access. This can be useful for board code debugging
> prints, especially in PBL, where the $bootsource environment variable
> is not available.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Makefile      |  2 +-
>  common/bootsource.c  | 14 +++++++++++---
>  include/bootsource.h |  2 ++
>  3 files changed, 14 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Makefile b/common/Makefile
> index 35f2120496ea..25f5653f906a 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -11,7 +11,7 @@ obj-y				+= startup.o
>  obj-y				+= misc.o
>  obj-pbl-y			+= memsize.o
>  obj-y				+= resource.o
> -obj-y				+= bootsource.o
> +obj-pbl-y			+= bootsource.o
>  obj-$(CONFIG_ELF)		+= elf.o
>  obj-y				+= restart.o
>  obj-y				+= poweroff.o
> diff --git a/common/bootsource.c b/common/bootsource.c
> index 70bac945de5a..66bddf2dacf4 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -10,7 +10,7 @@
>  #include <magicvar.h>
>  #include <init.h>
>  
> -static const char *bootsource_str[] = {
> +static const char *bootsource_str[BOOTSOURCE_MAX] = {
>  	[BOOTSOURCE_UNKNOWN] = "unknown",
>  	[BOOTSOURCE_NAND] = "nand",
>  	[BOOTSOURCE_NOR] = "nor",
> @@ -33,6 +33,14 @@ static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
>  static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
>  const char *bootsource_alias_name = NULL;
>  
> +const char *bootsource_to_string(enum bootsource src)
> +{
> +	if (src >= ARRAY_SIZE(bootsource_str))
> +		return NULL;
> +
> +	return bootsource_str[src];
> +}
> +
>  const char *bootsource_get_alias_stem(enum bootsource src)
>  {
>  	switch (src) {
> @@ -107,12 +115,12 @@ void bootsource_set_alias_name(const char *name)
>  
>  void bootsource_set_raw(enum bootsource src, int instance)
>  {
> -	if (src >= ARRAY_SIZE(bootsource_str))
> +	if (src >= BOOTSOURCE_MAX)
>  		src = BOOTSOURCE_UNKNOWN;
>  
>  	bootsource = src;
>  
> -	setenv("bootsource", bootsource_str[src]);
> +	setenv("bootsource", bootsource_to_string(src));
>  
>  	bootsource_set_raw_instance(instance);
>  }
> diff --git a/include/bootsource.h b/include/bootsource.h
> index 9ca4fcc525b5..381776a85a4c 100644
> --- a/include/bootsource.h
> +++ b/include/bootsource.h
> @@ -20,6 +20,7 @@ enum bootsource {
>  	BOOTSOURCE_NET,
>  	BOOTSOURCE_CAN,
>  	BOOTSOURCE_JTAG,
> +	BOOTSOURCE_MAX,
>  };
>  
>  #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
> @@ -28,6 +29,7 @@ enum bootsource bootsource_get(void);
>  int bootsource_get_instance(void);
>  void bootsource_set_alias_name(const char *name);
>  char *bootsource_get_alias_name(void);
> +const char *bootsource_to_string(enum bootsource src);
>  const char *bootsource_get_alias_stem(enum bootsource bs);
>  int bootsource_of_alias_xlate(enum bootsource bs, int instance);
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


