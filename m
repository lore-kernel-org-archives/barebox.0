Delivery-date: Thu, 11 Mar 2021 09:55:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKH6J-0002mg-Dz
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 09:55:23 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKH6I-0001HN-NQ
	for lore@pengutronix.de; Thu, 11 Mar 2021 09:55:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ZDVEGc2RUwKnm/MZVcj0/KNCcaReMTs5873Xg8RTSo=; b=V18ubJo+aMqYTB5GBYgG7qf82
	TrstZNvCLBnvu5xPoI7ga/ApEvpe6urPWrTOZa77htJN/m1JT0I/39NLulZuYXADoERao3Eb9Z4vh
	cqjmDdQu9TgKIe+J8Y9bxZ2fZ9MsshBHcT995QbwcCwPksY6zfL6/IrlsePZ0Kytn32RZx++VFzc9
	B+A7OZkVY9Du7j75IK9zlHGTH2I5F0m8KCPZsSXuxixxMGtlRkZz/Ow9W2KBHYVy0QbqDq7ftGM2V
	0jM8GWD2lBXMfS63sgNmhTlDyRFaKwOEi4g3q5Ak5szxZvBhyYvpiX5vvZzrp5qzMMdtTuArSnPRq
	A9d9sXEnA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKH5X-008hic-1P; Thu, 11 Mar 2021 08:54:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKH5R-008hho-7H
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 08:54:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKH5Q-00018I-QL; Thu, 11 Mar 2021 09:54:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKH5Q-0001zK-GK; Thu, 11 Mar 2021 09:54:28 +0100
Date: Thu, 11 Mar 2021 09:54:28 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210311085428.GB23724@pengutronix.de>
References: <20210308151908.15416-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308151908.15416-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:54:18 up 21 days, 12:18, 82 users,  load average: 0.11, 0.07, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_085429_391515_4E638FFE 
X-CRM114-Status: GOOD (  22.97  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] resource: include region name in conflict's debug output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 08, 2021 at 04:19:08PM +0100, Ahmad Fatoum wrote:
> The iomem command does print names, but it won't list dynamically
> allocated and deallocated regions, like those requested during bootm.
> 
> Include region name in conflict debug output to make them easier
> to debug.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/resource.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/resource.c b/common/resource.c
> index 92fe96252fdc..ff4318a0d77f 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -61,12 +61,14 @@ struct resource *__request_region(struct resource *parent,
>  			goto ok;
>  		if (start > r->end)
>  			continue;
> -		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
> +		debug("%s: 0x%08llx:0x%08llx (%s) conflicts with 0x%08llx:0x%08llx (%s)\n",
>  				__func__,
>  				(unsigned long long)start,
>  				(unsigned long long)end,
> +				name,
>  				(unsigned long long)r->start,
> -				(unsigned long long)r->end);
> +				(unsigned long long)r->end,
> +				r->name);
>  		return ERR_PTR(-EBUSY);
>  	}
>  
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

