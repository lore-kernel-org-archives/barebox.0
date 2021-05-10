Delivery-date: Mon, 10 May 2021 09:23:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg0Fz-0001j2-FI
	for lore@lore.pengutronix.de; Mon, 10 May 2021 09:23:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg0Fy-0007I4-K4
	for lore@pengutronix.de; Mon, 10 May 2021 09:23:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B/8U27KmtkGPfXOfNnVqNxtjb/tfv6eny9LDJ/ghODA=; b=Msvf063EwIfPHgGmczuCuDG58
	UKwxHi8Nl+frsA4y8dNMtzZ1zrSw8aHeFR6LGHOUiijpWxegDgNstBChJisc2uDvEtwVzaq+74tIR
	fZLJ+I7c9XTG06tYGlCklP8ESyPJ0CCNo4/xyciIFDCKfgxWwj9sDGlzJNVvS0R8pwOAr2dlLx+mz
	ErVKpQGniWhqb45k8CXMrxOIqYBCBKu8wFzac8uZ6R9sPHjWrgl9Gaf+8Rcn0cQ3NGhzpm4HUsFgf
	UbcntEvLKMFWD4pqd1ezKlVniPbq++hNsgCIa4b8emN0XfHXewOO24Rk4VHQ63dy50pXMXGT9AbpI
	8olyOOV/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg0Ev-00DUOl-PJ; Mon, 10 May 2021 07:22:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg0Eq-00DUOO-Vx
 for barebox@desiato.infradead.org; Mon, 10 May 2021 07:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=giqy42xJ3XAfc/sjSHj4r919h5lrZ73d+hV65T4rOY0=; b=OFWln8P79KXoLxoFSR8jhX1AwP
 bBR5sBy7keiEO4JIB9xkbflvZRzxnT7MailSJFeneH3300+ge83Obf/JEEYeD8pBR97aPRjO0Cafr
 c9o5UbZ3h/6hX7QmAZWXSxxINA6jCtqOH9my/KHQdz6ad/SfrZgnkfpDog8K4Ae/g9sQ9gqkBtvAx
 IeDO2XvBtXkq0dz13mbe795UB8eghj96PKjhI4RyuviE6BzFFJRNCOqIyBmZ4G8HH+0izxn0DdRTb
 U9X0mhQkdDAL5w/DzgZuu9jqN+SQ1bjDcqg+kN7gMgalr999zOI+3F7tVFq5X3p14gBu1Ie/5kAlp
 0nz3GoXA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg0Eo-008N6T-BT
 for barebox@lists.infradead.org; Mon, 10 May 2021 07:21:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lg0En-00074Y-4D; Mon, 10 May 2021 09:21:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lg0Em-0000cN-RV; Mon, 10 May 2021 09:21:56 +0200
Date: Mon, 10 May 2021 09:21:56 +0200
To: Neeraj Pal <neerajpal09@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210510072156.GZ19819@pengutronix.de>
References: <20210508193654.81389-1-neerajpal09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508193654.81389-1-neerajpal09@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:21:48 up 81 days, 10:45, 94 users,  load average: 2.64, 1.71, 1.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_002158_409067_DFC54A2D 
X-CRM114-Status: GOOD (  20.47  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Removed Unreachable code: net/net.c: net_handle_arp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, May 09, 2021 at 01:06:56AM +0530, Neeraj Pal wrote:
> Signed-off-by: Neeraj Pal <neerajpal09@gmail.com>
> ---
>  net/net.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/net/net.c b/net/net.c
> index 4dffc1bd5..fdb9ab826 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -577,8 +577,6 @@ static int net_handle_arp(struct eth_device *edev, unsigned char *pkt, int len)
>  		return -EINVAL;
>  	}
>  
> -	return 0;
> -
>  bad:
>  	net_bad_packet(pkt, len);
>  	return -EINVAL;
> -- 
> 2.25.1
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

