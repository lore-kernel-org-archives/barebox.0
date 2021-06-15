Delivery-date: Tue, 15 Jun 2021 17:52:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltBMF-0001IW-NI
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 17:52:07 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltBME-0005Kw-5u
	for lore@pengutronix.de; Tue, 15 Jun 2021 17:52:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+V8sDRPbPPyUZdINBs+6RAHe3jUVRuo/UHxIpnT+g0=; b=yqkqs4Z8/yXTxo
	ftp+pAp3sWEq1r5kyRyCrTWRGswwUMRPI6FaeHDKJo8c+H8kky9eSYAE9wkV5hCR5eoTkIkoI2eRk
	M8KYlPXS/IuzS1tl1wiOVhOMgl2ZAA2FkFmg5DHAIaJkiitZnnCyGtO41uU3TM8PLZEhPqYPVWd36
	RM9ZTX/2spcKJzdbOvIId9NrhEfnQBFXYBrSKW4pYDHaYMWpaXHw9u2nYK7G2nif0lztxqczeEMYM
	IKnc+SvhnKZXUfFtoTCYlat5rb5/LIutUD60Sni0G+qogum9xMgiqaTbspdeaKOMPCh3ZsxwnVCU+
	AFMNHL9hOMZXQOXk7bcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltBFB-0014Bz-7s; Tue, 15 Jun 2021 15:44:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9IB-000E8e-9k
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:39:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BzzrqpwsYKHZ6O4HhoLF53TDON0hWySfOXd1/1tfBQw=; b=pmDqxXdyvy6455OZwqncZ2gmwc
 y6iEDpHgaOr/aq/nuSLw9PAc3teA8Kb6hwrV24sAoIzTxnHWfFABnAzySUjZlIJjLvJS62oRGrYlH
 DNGKEhebphqVBewxz00PqrEB2+nArOMvS0I4r9ZGq8FnVAXtR0n5TiFv2+XDUeWZTyPm6sDxeUq7/
 W21oH90K6eov2nKN/YoIm9BNtNRI4uO7evYTNbMrzOI+AcQWH7yDSo8WBpJKJoOa9466sFAm4bVsb
 suwAkhabjCejMN6/Eu2Kq+2DsXZCSUbCGIp3cjQuQDa0tnyt2EHfXCnx+C2jDqsSUr+tdFv3hI6tt
 zEds9+LA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt5Gq-007YqK-Bq
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 09:22:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt5Gw-0006SC-ED; Tue, 15 Jun 2021 11:22:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt5Gv-0007RA-RQ; Tue, 15 Jun 2021 11:22:13 +0200
Date: Tue, 15 Jun 2021 11:22:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210615092213.GH9782@pengutronix.de>
References: <20210614142833.86544-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614142833.86544-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:19:35 up 117 days, 12:43, 119 users,  load average: 0.08, 0.12,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_102215_277626_97FF8B74 
X-CRM114-Status: GOOD (  19.50  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: drop unused usb_gadget_{map,unmap}_request()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 05:28:33PM +0300, Antony Pavlov wrote:
> There is no code that is dependent on
> usb_gadget_{map,unmap}_request().

My first reaction was: But maybe there *should* be code depending on
that, but

> -#ifdef	CONFIG_KERNEL_HAS_DMA
> -
> -int usb_gadget_map_request(struct usb_gadget *gadget,
> -		struct usb_request *req, int is_in)
> -{
> -	if (req->length == 0)
> -		return 0;
> -
> -	if (req->num_sgs) {
> -		int     mapped;
> -
> -		mapped = dma_map_sg(&gadget->dev, req->sg, req->num_sgs,
> -				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);

Trying to use it would at least fail when trying to link this. We don't
have any implementation for dma_map_sg().

So ok to remove this nonfunctional code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

