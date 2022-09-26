Delivery-date: Mon, 26 Sep 2022 12:32:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oclPZ-00FEaQ-Lx
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 12:32:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oclPX-0008La-Ak
	for lore@pengutronix.de; Mon, 26 Sep 2022 12:32:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rP8gq2H1uloo+hXoZvBAICL4DrtLsWSgFZ+V1tGo5cA=; b=K2kpRdTKo66EfZ836ewpREp16K
	Qxkpw4Z8C3wI7Im60SaCwmHHPX7SwwZm62pzWhE6DHfDI4pjK0KR0hPSLwg0anTRAKJ4rFfEgeBkv
	1A8CWIDkU0iUX/+vt3vlFTAVnPmMTlQwa3rtEXIb+QtC8wYjZmaqwkjw8/rLPBA0zqefxOnmM2aEC
	+/uckuOaIMmuVJVSz1GRjRmSttA+x+xUPsGVnv8ATcR1niyiby69LaAnksuECVI+n4tqbrrbyxOqf
	qnn/sU7E5xPvReZaOmV6CmO7xWH1esi8GTcA7DKWvqSn49Z/NOez3guFc0vDNGwRkOQOT/DIYG2Dn
	TC+HExVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oclNg-0047Sx-To; Mon, 26 Sep 2022 10:30:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oclKM-0046QM-29
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 10:27:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oclKI-0007Cy-Cj; Mon, 26 Sep 2022 12:27:02 +0200
Message-ID: <fd93df72-c4da-0347-9c77-a9d96c2bc2e5@pengutronix.de>
Date: Mon, 26 Sep 2022 11:26:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 barebox@lists.infradead.org
References: <20220926100610.1457821-1-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220926100610.1457821-1-michael.riesch@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_032706_157444_4D89807E 
X-CRM114-Status: GOOD (  21.95  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: overlay: fix overly strict check for symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.09.22 11:06, Michael Riesch wrote:
> The recent patch "of: overlay: improve error handling in
> of_overlay_apply_tree" introduced overly strict checks for symbols
> in the root device tree and the overlay. However, it is legal for
> both to have no symbols. Fix the checks in order to implement the
> status quo.
> 
> Fixes: bc475fd88810 ("of: overlay: improve error handling in of_overlay_apply_tree")
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>


Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

FWIW, we do such fixups on the emulated Virt platforms. The device tree comes
from QEMU and lacks symbols, still barebox applies an overlay with state
and environment nodes on top of it.

Cheers,
Ahmad

> ---
>  drivers/of/overlay.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index 0fc440fdcf..9d112b67f1 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -131,12 +131,12 @@ static int of_overlay_apply_symbols(struct device_node *root,
>  
>  	if (!overlay_symbols) {
>  		pr_debug("overlay doesn't have a __symbols__ node\n");
> -		return -EINVAL;
> +		return 0;
>  	}
>  
>  	if (!root_symbols) {
>  		pr_info("root doesn't have a __symbols__ node\n");
> -		return -EINVAL;
> +		return 0;
>  	}
>  
>  	list_for_each_entry(prop, &overlay_symbols->properties, list) {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


