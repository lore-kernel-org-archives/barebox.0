Delivery-date: Fri, 03 Mar 2023 11:07:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY2KS-007PiO-MN
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 11:07:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY2KS-0002bV-0K
	for lore@pengutronix.de; Fri, 03 Mar 2023 11:07:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ypAKS94FmSeCMV7IH+qlxJP0TVfEtrR1jZnwOhiubmw=; b=Me62qO20FKoCS5dAKfO5Aw+ClW
	wC/X8Oj54iizciGwBGrbThUTXidWHwjLqUbLO5SwwdZNr0SRw7BRQefIX2ozifeplveUnbUheGbUD
	j+GZvHQYEO/U5/UmeudSN1u0IEYSlTKtus1DjsdRm5RX7LYSKumLZSoCHhi+kmydH9BaLNx6M6IaL
	rs0JktMpfi0dKIrj8NevIAq5kMpx/Mdyi+tM3I5e3p/YWAgu3mkup0h3SPD41jCkXc+RdZVoJ5CSb
	wzol+w/KH9bry3OkxzbUDOAdMWuqjl2Jp7JWBdjG+KFSF7CWd5LT4+O/togEyra0vFfLoiW9C9Vtz
	VGbdYqhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY2J7-005wp3-Sx; Fri, 03 Mar 2023 10:06:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY2Iz-005wl9-Mh
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 10:06:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY2Iu-0002R5-B4; Fri, 03 Mar 2023 11:06:20 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY2Iu-0002RD-3w; Fri, 03 Mar 2023 11:06:20 +0100
Date: Fri, 3 Mar 2023 11:06:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Message-ID: <20230303100620.GS32097@pengutronix.de>
References: <20230228103248.2118342-1-denorl2009@gmail.com>
 <20230228103248.2118342-2-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228103248.2118342-2-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_020625_783941_DD871256 
X-CRM114-Status: GOOD (  15.15  )
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
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: Re: [RFC 1/2] dma: rework dma_sync_single interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Denis,

On Tue, Feb 28, 2023 at 01:32:47PM +0300, Denis Orlov wrote:
> -#ifndef dma_sync_single_for_device
> -static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
> -				enum dma_data_direction dir)
> +#ifndef arch_sync_dma_for_device
> +void arch_sync_dma_for_device(void *vaddr, size_t size,
> +			      enum dma_data_direction dir);
>  {
> -	barrier_data((void *)address);
> +	barrier_data(address);
>  }
>  #endif

"static inline" is missing here. Also "address" should be "vaddr".

With that fixed imx_v7_defconfig compiles successfully and from what I
can tell also works.

I haven't looked into this patch yet. Passing a struct device to the
dma_sync functions is a step into the right direction for sure.

Ultimately both patches should be merged to avoid bisecting failures.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


