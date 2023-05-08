Delivery-date: Mon, 08 May 2023 15:20:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pw0nA-00AA1T-0z
	for lore@lore.pengutronix.de; Mon, 08 May 2023 15:20:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pw0n8-0007BR-0W
	for lore@pengutronix.de; Mon, 08 May 2023 15:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BV4fl84CFAwEa2ywfTdEf4zdldddi/jPgI0wS0qJjCQ=; b=exAPo+YxwFh5X90nX/dmskwrpe
	AUNFOmmpEJheiVWuXvovXM2nwNCCqcsk4FUj5rjfbQZg0IDyexXUJull2johosprBXX7lnrCiK4rv
	HPZgBWAJmJfcni20duGxSpFwUHYLAmueni00JC/kMYvPlCefGQY5/YNWIlUPEC0EDoU59h9S5og/h
	PSBmZYfIKh9Kmz1xd4B1oRMNMUl+QlZonIj1nHnBNObJEM3vuayRTZQ5j6FCEC90aCLK/QrLyVDF3
	gaVVqHsk+6hxHsRlVl5LzB2+7xwmuHehfDjED334Y+pa5DQmCZehYVCFXp+AX0E4iuH24Qs2ghyCG
	9FYm0LWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0m8-000cGY-2d;
	Mon, 08 May 2023 13:19:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0m6-000cFv-10
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 13:19:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pw0m5-0006p2-2V; Mon, 08 May 2023 15:19:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pw0m4-0005fX-EH; Mon, 08 May 2023 15:19:32 +0200
Date: Mon, 8 May 2023 15:19:32 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230508131932.GY29365@pengutronix.de>
References: <20230508090322.3845161-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230508090322.3845161-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_061934_354903_E001334A 
X-CRM114-Status: GOOD (  20.32  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! of: add function to read a file as unflattened
 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 08, 2023 at 11:03:22AM +0200, Ahmad Fatoum wrote:
> of: fix warning about now unused variable
> 
> This was an argument to read_file, which has been replaced in a previous
> commit. Now GCC warns about it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 197ccb2b07e6..4b4e04b03997 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -426,7 +426,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
>  {
>  	const char *devicetree;
>  	const char *abspath;
> -	size_t size;
>  	int ret;
>  	struct device_node *root = NULL, *barebox_root;
>  	const char *compat;
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


