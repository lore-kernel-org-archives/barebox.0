Delivery-date: Thu, 09 Jun 2022 08:07:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBJy-008SJU-MD
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:07:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBJx-0003JT-37
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:07:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iwRGU/cbryN6JafDl7yioaF+jebhWpjryk3pmi5+q8=; b=qLZFhmoUtV1jjT
	XT3N58ISV1VUZYWVwg09ngcD0KkFIn14jbeCu4dD6+gFU3g1DqX7xANjM+t7HgAyQC1SGVHn9wGbT
	Ioib7zg4ZUy7DnO1UmSivDWl/FHJAhP5BBrmBaqlBPBdSG5cIJpdu5JoHgZmNa2y8C6CpqqFotssd
	PvHQR9yNuUMaSJUBc/YIJ3mgUoSlAt4ogA9mg/mmqGDSHGEFIomotz9dDGHXhMnFFkBsWu53djWY9
	gCTs6UsztVtfWiDW6rQu1vQVQ0wzg2VKBqKoZE9HJS4SFKBR9W3/Qx1Dn7l8SrVxdAgjhsXrCdZri
	B8lvNm7VL316itOc3OWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBIn-00Gz1a-Mp; Thu, 09 Jun 2022 06:05:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBIh-00Gyzv-0H
	for barebox@bombadil.infradead.org; Thu, 09 Jun 2022 06:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MZcKjJ9ZtER9x2kj0nDxjdSP7Pner8bXDjtfEFasU7w=; b=BI6wZ+F7sV36CnlBjLbuo4cF0h
	5Lzn0y9iDnjPWz1ZGv1MRnmgD7jswz2Q90SUKyKvNM96HmtSuDC0xYuUvS7IUmc+Ejd34gQyNT+Gm
	IVhHooxqa0SnPf3JBKsxF6G6BBgsR0wePSNayhjkTbdzw+ijIfR9A9YmcN8yA9UbZlYwGpODKSSIy
	rmz1ekbyHQEI0arpuRt9BVK3J2GMuoZekVFszSgJrgpmSF3mD03VxCHLEdUwLsrhLbs90E6P4JZJX
	Urc+TjzFaN/e104rpZBSgc/9WH1IrN4F1/W4eOz66aEfjQSWQfAq8WTT48atBk/uXJUWN2im+sCOK
	9WjxEmSg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBIc-006Ho4-5o
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 06:05:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nzBIZ-0002qG-9L; Thu, 09 Jun 2022 08:05:39 +0200
Message-ID: <1f13ff87-69d5-6cb3-5313-9b40def070ac@pengutronix.de>
Date: Thu, 9 Jun 2022 08:05:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de
References: <20220531093537.1731712-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220531093537.1731712-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_070542_830059_CAB9603D 
X-CRM114-Status: GOOD (  25.54  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fastboot: inform user if barebox update falls back to raw
 copy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 31.05.22 11:35, Ahmad Fatoum wrote:
> Fastboot code determines whether to go into barebox update handler by
> checking whether filetype_is_barebox_image() returns true for the image.
> This is different from the barebox_update command which leaves it to the
> individual handlers to decide whether an image is suitable.
> 
> Coupled with eMMC boot partitions, this could lead to
> `barebox_update -t mmc` updating the boot partition, while a
> `fastboot flash bbu-mmc` will write the image to the user area instead.
> 
> It may be worth breaking backwards compatibility here and refuse update
> in that case, but for now at least alert the user that a raw copy is
> being attempted.

Any comments?

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/fastboot.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index f8ed40c86e00..50ea8421d92c 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -673,7 +673,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
>  		goto out;
>  	}
>  
> -	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
> +	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE)) {
>  		void *buf;
>  		struct bbu_handler *handler;
>  		struct bbu_data data = {
> @@ -681,6 +681,17 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
>  			.flags = BBU_FLAG_YES,
>  		};
>  
> +		if (!filetype_is_barebox_image(filetype)) {
> +			if (strstarts(fentry->name, "bbu-")) {
> +				fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
> +						  "This is _not_ a barebox image...");
> +				fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
> +						  "Falling back to raw copy to %s", filename);
> +			}
> +
> +			goto copy;
> +		}
> +
>  		handler = bbu_find_handler_by_device(data.devicefile);
>  		if (!handler)
>  			goto copy;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

