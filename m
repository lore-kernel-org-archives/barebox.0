Delivery-date: Thu, 09 Jun 2022 16:12:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzItL-008niz-Uq
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 16:12:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzItK-0006Qo-HF
	for lore@pengutronix.de; Thu, 09 Jun 2022 16:12:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f4DUzgN6ikNtQ/YnTn0Az+d+sW/z+zPCtwwtM4yCM2s=; b=txKOoDlgW6zEi+ELfhTZTZjPwu
	wApMJJARRNxYt4FQvNnSosM0OCQV7bdBzeqf53abD0d07JWuuzYTLp7h4tOvgM7b6CsVy5ppzgbaV
	Uz8G5fjZh0sB0K8BqtVJ2BMyIWpcBK01fjhQWRWaogz/1PJJlAzU1HkLMBI5+pKlC1x9V4zXbur9v
	RwiseBzDOovtkmPEkN6Ha8Jp+r/FD9oByBtoaxkBeMlYiEqwkJZyx+Q9bMbtX7UwNzWDxYCGJK8/r
	da4wqzNe8N7S68qqD6fBfLJJzeVB4nIQ83Ijr62sOsyd7CNr4oPwi66asnb9wFqUaeHLgdJAW8Q1W
	YAfYgOPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIs3-002PUI-Cr; Thu, 09 Jun 2022 14:10:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIrw-002PSp-7a
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 14:10:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzIru-0005ng-PC; Thu, 09 Jun 2022 16:10:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzIru-0005C9-G9; Thu, 09 Jun 2022 16:10:38 +0200
Date: Thu, 9 Jun 2022 16:10:38 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220609141038.GW1615@pengutronix.de>
References: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
 <20220609130936.3616309-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609130936.3616309-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_071040_314774_8BD68C80 
X-CRM114-Status: GOOD (  23.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 2/2] fastboot: bail if update handler couldn't be
 found for bbu-partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 03:09:36PM +0200, Ahmad Fatoum wrote:
> Fastboot would fall back to a raw copy even for bbu- partitions if
> no barebox_update handler was found. Prevent this by bailing out
> with an error code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - bail out instead of only printing message and falling back
>     to raw copy (Sascha)
> v1 -> v2:
>   - print message in case barebox_update handler is not found
> ---
>  common/fastboot.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 330a06f5a32f..a5cf04b39ecd 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -683,8 +683,13 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
>  		};
>  
>  		handler = bbu_find_handler_by_device(data.devicefile);
> -		if (!handler)
> -			goto copy;
> +		if (!handler) {
> +			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
> +					  "No barebox update handler registered for %s",
> +					  data.devicefile);
> +			ret = -ENOENT;
> +			goto out;
> +		}

I didn't verify that, but I believe a full raw bootable disk image
generated for i.MX will be detected as barebox image. With this patch we
wouldn't be able to flash that anymore.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

