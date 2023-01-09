Delivery-date: Mon, 09 Jan 2023 10:13:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEoDr-006Uvd-1b
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 10:13:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEoDp-0006nk-6h
	for lore@pengutronix.de; Mon, 09 Jan 2023 10:13:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a7/QFPaI9pysmy6h+48xGK5fS+j5Yq0luLb1RlwjG1E=; b=c4yXIKNyQtjRsTbhBU/ipihIvr
	l03h5Rkgw+rUwbuYWWqd4vRVMtZBe5g9HgXd3YPjBTA+qM2+ufAeZ7dQDq+t390fyEOY/XT93sCBB
	bkCP6fnvEzTNjextZaZvz8LX//br988lOhZZGA84+haFC9v/FljWZwapjVfA9sj6jLa072RExSTLd
	qTblqxgUTVFt+l+ouCAb8cqaTZYKMRR+kGm5KvJZa1EbeDzA6evPNMOdSwVNkpWUBshwp0Ve638iE
	++dEVcq8fASmCDZ4LrrdZulPHvjm6AkLqNy2G/YSr0D9YXTvJi6z69A8kAbJYuOcfJJObUG+HQuK1
	MExHMCzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEoCf-000Xpa-Hc; Mon, 09 Jan 2023 09:12:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEoCZ-000Xo5-7C
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 09:12:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pEoCX-0006XA-Go; Mon, 09 Jan 2023 10:12:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pEoCX-0003vZ-7V; Mon, 09 Jan 2023 10:12:17 +0100
Date: Mon, 9 Jan 2023 10:12:17 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230109091217.GC28911@pengutronix.de>
References: <20230109083600.1820078-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109083600.1820078-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_011219_280289_0655598C 
X-CRM114-Status: GOOD (  23.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] driver: have dev_name(unregistered device)
 behave as expected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 09:35:58AM +0100, Ahmad Fatoum wrote:
> For drivers that create new virtual child devices, error paths often
> tend to use dev_name() on the uninitialized device via the dev_ family
> of logging functions. Many such uninitialized devices have a name set
> already though, but just lacks registration, which leads to dev_id
> returning dev->unique_name, which may be NULL. Change dev_name to
> return dev->name if dev->unique_name is NULL.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/driver.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/driver.h b/include/driver.h
> index 693d5cb3e580..4d500ed21e34 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -191,7 +191,9 @@ static inline const char *dev_id(const struct device *dev)
>  
>  static inline const char *dev_name(const struct device *dev)
>  {
> -	return dev_id(dev);
> +	if (!dev)
> +		return NULL;
> +	return dev_id(dev) ?: dev->name;
>  }
>  
>  int dev_set_name(struct device *dev, const char *fmt, ...);
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


