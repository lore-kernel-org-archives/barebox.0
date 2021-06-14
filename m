Delivery-date: Mon, 14 Jun 2021 10:52:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsiKY-0007ev-8z
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 10:52:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsiKX-00023G-8T
	for lore@pengutronix.de; Mon, 14 Jun 2021 10:52:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rIqZt2vgcYJRZ692zn5BVkiBk4szgaHsA8InT7g73qc=; b=PcpZ3P5TMF9Ue26hHDwehDHehx
	bkB5jfhqw12WLXdNpFEHDeY3sjorffuVL5dl0sijvfkdksnJtEoJKdfxJdBZf7CrZfT+1SOwAXlFD
	/XrRn1HtZ1y8TfuO6HIoMrXL/+RFwYp20KF90d+RbY6noMfVXqThKnrN65zPzW3lyg/Nd0cEEJ9c8
	Ao/sSdXGq9avVL1uGwz8UIgjV8veGddM+bRB4KLt+NVbw1UZzN2gGGCpCdGJorDOcWRNsoJipkoyb
	nrX8yGUv2tMYWKZQY9/gU39YyQD8xQkVUAJaOBeg5J1DDZdCotTugyqYrZrLFrXT6VHXEn4n8VtFI
	0HiZPiiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsiJk-00DBOh-Tl; Mon, 14 Jun 2021 08:51:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsiJf-00DBHw-VK
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 08:51:33 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lsiJe-0001yx-OL; Mon, 14 Jun 2021 10:51:30 +0200
To: Marc Reilly <marc@cpdesign.com.au>, barebox@lists.infradead.org
References: <20210613222639.13190-1-marc@cpdesign.com.au>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cefc5375-c35a-7e32-8cbe-557a3e87fa99@pengutronix.de>
Date: Mon, 14 Jun 2021 10:51:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210613222639.13190-1-marc@cpdesign.com.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_015132_046708_F867F7DB 
X-CRM114-Status: GOOD (  21.62  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] common: boot: don't return too early in bootscript
 dryrun
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 14.06.21 00:26, Marc Reilly wrote:
> A dryrun boot will now run the boot script and a then a
> dryrun of the bootm.

This would change behavior for boot scripts that directly boot
instead of setting up variables for bootm to use, but I think
that's acceptable,

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  common/boot.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/common/boot.c b/common/boot.c
> index 07b67734d..183e6bb43 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -77,7 +77,6 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  
>  	if (dryrun) {
>  		printf("Would run %s\n", bs->scriptpath);
> -		return 0;

Maybe change message to reflect the new reality?
s/Would run/Running/

>  	}
>  
>  	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

