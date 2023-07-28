Delivery-date: Fri, 28 Jul 2023 07:54:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGR5-00D6wf-Eh
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 07:54:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGR2-0000W5-V8
	for lore@pengutronix.de; Fri, 28 Jul 2023 07:54:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hferYNcNSQEY5QAnONqZgweR91MDrioKosExUISnxA8=; b=T3RmJKrh1kFD2238hAksJQfYg8
	2rn5z1fbtuotwEJlKGIRvr+kBYPYB6OtwmOjfc/3lznk7bGzCQyC3uarkqYaRul/ds5SrcopLBwb/
	mf9TD8OZjcMd1RsLBmf08r1/Gu3HKp3wMOOn26PSRNiF7KRjXACv1+PHqB9za4fCej4lx7JetEnS2
	vQDJHoyt3oTAALxY/WTM68Ewo7kQQ0Yk05MEgP1c5VBjPm8RY4vqGLjz5rEQlLesfMsBDhvPfK1rL
	IK+WBMYmbqE+80elxtN5AH0bem0FAP4DSq85vTb9PggcrJf3Sp8qsf7r2UD9hk7k9XOuokdrKtOxF
	awEA8gJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGQ1-001lTH-1J;
	Fri, 28 Jul 2023 05:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGPy-001lSE-0y
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 05:53:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGPx-0000JP-2L; Fri, 28 Jul 2023 07:53:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGPw-0002Vj-RT; Fri, 28 Jul 2023 07:53:36 +0200
Date: Fri, 28 Jul 2023 07:53:36 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230728055336.GC18491@pengutronix.de>
References: <20230726192824.917472-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726192824.917472-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_225338_335206_640981C2 
X-CRM114-Status: GOOD (  20.74  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: export bootm_set_verify_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 26, 2023 at 09:28:24PM +0200, Ahmad Fatoum wrote:
> We already have bootm_get_verify_mode() exported, so export
> bootm_set_verify_mode() for symmetry. The same can already be achieved
> by changing $global.bootm.verify, but direct access makes it easier to
> set a default value that can be overridden by built-in environment.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/bootm.c  | 5 +++++
>  include/bootm.h | 1 +
>  2 files changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 791d6b8fbbf1..c46b00a86f64 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -70,6 +70,11 @@ enum bootm_verify bootm_get_verify_mode(void)
>  	return bootm_verify_mode;
>  }
>  
> +void bootm_set_verify_mode(enum bootm_verify mode)
> +{
> +	bootm_verify_mode = mode;
> +}
> +
>  static const char * const bootm_verify_names[] = {
>  #ifndef CONFIG_BOOTM_FORCE_SIGNED_IMAGES
>  	[BOOTM_VERIFY_NONE] = "none",
> diff --git a/include/bootm.h b/include/bootm.h
> index 655c5152d97e..ee2b574521db 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -145,6 +145,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
>  int bootm_get_os_size(struct image_data *data);
>  
>  enum bootm_verify bootm_get_verify_mode(void);
> +void bootm_set_verify_mode(enum bootm_verify mode);
>  
>  #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
>  
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


