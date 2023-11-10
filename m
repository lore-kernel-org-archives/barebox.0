Delivery-date: Fri, 10 Nov 2023 14:15:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RM0-005su9-1i
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:15:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RM0-0000hN-JV
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:15:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8+p6MufB2KDk85Pow31fcoS3IjvPch3rzZrLE2yhrE=; b=PCQysV9GfOmvRBxxiDSmiGvU4m
	zvkD5MuWX1d8XVR6DOnUTGWRKh0c3U8kE8n3MPtybjCxjdEG3CsX7dk3dI0EFgx6IQxx9f8wQYaeC
	hrfauGY1rfv0A05d53wvN7k2PQJ4+Q7i4QxssWnLYfVueqDq28gs9lsXYW5gQ3UMLlggZYsxdg/Ln
	QDER1FKAq4HYl8q4N4gy23uwg65FEkWbzUtKulZUlJ9IEIjy3k/LSI7L/OdmouOsCYiOpjEnOveZk
	gv4KjZnhVxiLi6z6OGUzZHuFaJCDoF79KNMIep2562xIqpmBoae6JdCcgWyeKV2+ucsHDpSUtkD8b
	Y4L7dLCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RL3-008oyy-1N;
	Fri, 10 Nov 2023 13:14:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RL0-008oyJ-2m
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:14:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RKz-0000R2-Lz; Fri, 10 Nov 2023 14:14:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RKz-00823H-9g; Fri, 10 Nov 2023 14:14:17 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RKz-001LWc-7V; Fri, 10 Nov 2023 14:14:17 +0100
Date: Fri, 10 Nov 2023 14:14:17 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110131417.GB3359458@pengutronix.de>
References: <20231109120045.1427680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109120045.1427680-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_051418_896309_42127497 
X-CRM114-Status: GOOD (  18.21  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] barebox-wrapper: define stub for MODULE_VERSION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 01:00:45PM +0100, Ahmad Fatoum wrote:
> We already stub out a number of MODULE_* macros to save porters the
> hassle of deleting them. Let's add MODULE_VERSION to the list as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/barebox-wrapper.h | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
> index ed237877fc75..5d311e1d70f4 100644
> --- a/include/linux/barebox-wrapper.h
> +++ b/include/linux/barebox-wrapper.h
> @@ -19,6 +19,7 @@ static inline void vfree(const void *addr)
>  #define MODULE_AUTHOR(x)
>  #define MODULE_DESCRIPTION(x)
>  #define MODULE_LICENSE(x)
> +#define MODULE_VERSION(x)
>  #define MODULE_ALIAS(x)
>  #define MODULE_DEVICE_TABLE(bus, table)
>  #define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
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


