Delivery-date: Mon, 23 May 2022 10:35:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt3XI-006KAQ-J9
	for lore@lore.pengutronix.de; Mon, 23 May 2022 10:35:32 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt3XH-0005CS-90
	for lore@pengutronix.de; Mon, 23 May 2022 10:35:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mV6GeLMPfLnKjEXjpVmzfy2VM/oM1eAkwsjAt0GmYOc=; b=W8afuto3UDfHsq
	WcR9AILhRUhIb9YGuzMmjDFDcFtP38fajy+fs6B0ePVedfhglnith5W1X2aFvot3ELhDwR2JfoV2s
	yYOGPBc19SxXmRuU0owt2GOToAfYX5Wbid6V3n0QFeGp0k9kBfCg/LPuocQyYA+kz+zUwkrP6kWr2
	0AYgsg6cIQ8kr7XtqBJeYDWRssHT7RbFplFQ4jHix/gcwftffu4ApfmyZMH6hL/DbB9r7Hm+yzqzF
	Oda0GwuUb1BQjLxsBxRnohz2YUxAC45EhkQNScOZahXRad+ZA84xJfASmWR4cQNmFnYKCow6xYKlk
	9MpsdIV+pfzyEKJnh6XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt3Va-002TAs-St; Mon, 23 May 2022 08:33:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt31I-002GHj-0T
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 08:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aIgRvxqqxOpxDUgJ69moupg0t+YUcfoN59Ic38G+Iog=; b=bna+htOUWNV7JqMRCMi9M1IxYV
 VIGNXE8Lrg0LCcHk+FeS1WbBNrBDka49BIxx+vigwA3x1uv4Q3gU7LVouklQbbjhliIh3cSDoWopT
 2EGa6XYwscZL5mBOh39od1PU5LQepSRWo7Hw8/onlcWEPH9ChKo5Jo58wl52HCArtFZXHBhpvKmRq
 TU2Wu0aw0nEa3xtw2UMPTkVU8ZcPjmoE54liSIAQ1V2bEupbsDZVd1EoHNwE0kH7XTzt2hTvEgU3y
 jevPS9uA5BdQJzyYxt86ACdn4RG30iXhpSEINTCgMxYhJCWi3zeCK/Ah19FqokaFDG5gseA707vO0
 hmUnUH/A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt31C-000ylW-0c
 for barebox@lists.infradead.org; Mon, 23 May 2022 08:02:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1nt2z3-0006qc-AQ; Mon, 23 May 2022 10:00:09 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1nt2z3-0006YW-1S; Mon, 23 May 2022 10:00:09 +0200
Date: Mon, 23 May 2022 10:00:09 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
References: <20220523072125.776735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220523072125.776735-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_090222_199448_08B00B07 
X-CRM114-Status: GOOD (  17.46  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: usb251xb: remove duplicate status line on probe
 success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 22-05-23, Ahmad Fatoum wrote:
> A successful probe results in two lines logged:
> 
>   usb251xb usb2514b0: Hub configuration was successful.

The configuration (and this line) can be skipped if you specify
"skip-config".

>   usb251xb usb2514b0: Hub probed successfully
> 
> There is no case where the first line is printed, but not the other and
> they say about the same thing anyway, so drop the latter.

The config step can fail. What about lower down the log level for the
config step to dev_dbg() instead?

Regards,
  Marco


> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/misc/usb251xb.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
> index 4871faf451ce..8d60f19e1355 100644
> --- a/drivers/usb/misc/usb251xb.c
> +++ b/drivers/usb/misc/usb251xb.c
> @@ -639,8 +639,6 @@ static int usb251xb_probe(struct usb251xb *hub)
>  		return err;
>  	}
>  
> -	dev_info(dev, "Hub probed successfully\n");
> -
>  	return 0;
>  }
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

