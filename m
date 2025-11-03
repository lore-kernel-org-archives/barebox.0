Delivery-date: Mon, 03 Nov 2025 11:11:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFrXT-00Eofi-18
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 11:11:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFrXS-00039R-Qo
	for lore@pengutronix.de; Mon, 03 Nov 2025 11:11:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t+t2V46D4PSCu5mYv6nL3jN/fTmcMU2OwE+HI5xSnSE=; b=0/abBMymiHB8ePkilc18k2wexH
	uxwTOo3+odR4WcA+40/S8ePDNOdEDCmmLuPDyHveovceEpn0/QKkSRT76vVDA0l931w+Y/+pLh+Ax
	+NZayK09bG70RxfNsuyL+rUTqkgy1KR2XuG4K7Kxj8AFE1hnEUnK+8ca/zZpwdKkEi3Gq6lHbKR8y
	8/OXy75g7TyTXE0ixzzgcOmGAz7aN9uqAU2NsSscfbwGSeGSEvd2Si2Ic6pefLWAk+f4kAkdIgPQX
	R5y5MvgXTaBr8S4WkWjddxgf1q0gtLwWXmXTbbev7ommPVNlQ5c5ge0pvEOov5IVDUy5CjHSj4lmK
	wo4QrapA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFrX4-00000009ZxA-00yF;
	Mon, 03 Nov 2025 10:11:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFrX1-00000009ZwJ-0YU0
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 10:11:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFrWz-00034y-Lp; Mon, 03 Nov 2025 11:11:21 +0100
Message-ID: <98fce828-190d-4e50-bb5a-5f0132f67da4@pengutronix.de>
Date: Mon, 3 Nov 2025 11:11:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-1-3bafce636ad7@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-1-3bafce636ad7@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_021123_176258_270657BE 
X-CRM114-Status: GOOD (  19.10  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/17] lib: idr: avoid dangling else in
 idr_for_each_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10/28/25 7:03 PM, Jonas Rebmann wrote:
> The idr_for_each_entry() macro uses an if statement to update _entry and
> _in in the loop body. This can lead to dangling else issues, or at least
> a compiler warning of the potential thereof.
> 
> We build with -Werror=dangling-else in CI and that is triggered very
> easily by this construct.
> 
> Move the loop body into an else to avoid this issue.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>



> ---
>  include/linux/idr.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/idr.h b/include/linux/idr.h
> index e726d17b59..206c006c62 100644
> --- a/include/linux/idr.h
> +++ b/include/linux/idr.h
> @@ -41,7 +41,7 @@ struct idr {
>  	     *tmp = iter ? list_next_entry(iter, list) : NULL;		\
>  	     (iter && iter != (_idr)) || (_entry = NULL);		\
>  	     iter = tmp, tmp = tmp ?  list_next_entry(tmp, list) : NULL)\
> -	if ((_entry = iter->ptr, _id = iter->id, true))
> +	if ((_entry = iter->ptr, _id = iter->id, false)) {} else
>  
>  struct idr *__idr_find(struct idr *head, int lookup_id);
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



