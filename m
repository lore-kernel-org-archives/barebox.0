Delivery-date: Tue, 02 May 2023 13:44:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoQT-002FDO-Gg
	for lore@lore.pengutronix.de; Tue, 02 May 2023 13:44:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoQR-0006ZI-L4
	for lore@pengutronix.de; Tue, 02 May 2023 13:44:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S7BYusm/RG7Mm7w3WKc4yBXE9cL3a45LQhPQ5LUqs5U=; b=ebpYMlqLAKvobEnrtw4k4YXHoO
	y7evm5T9+qWhFZj8kA71lW6YKJENNl5Fri3Z7xJX12xsOW3o8Wv1+lvOivevxXL6byc56iCAXiIpJ
	686h/EgWsID8AV/FQGnDWqb+3q8qmHZ2v+pFyfOw8OCrKctZPEs/v6WK8j/2OaOL6B+nV3EH9Qgdo
	GyEbxnYsBdAwr6KdT1qSq/BY/ZeqH19+eKHoifa4uggEWbL7lJNHbIfLzgpmWZSG5QwG/NPosOQVg
	1NbP3JRkgoeNAMo85AJlnyoDmDC4oFo7NUM0qtAQbfAqLcT4f7gxRvURiTkCcdaMQcN/3ZQX/EkkO
	C2Z5z4Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoPN-001HYY-2t;
	Tue, 02 May 2023 11:43:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoPL-001HXw-0g
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:43:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoPJ-0006QM-RA; Tue, 02 May 2023 13:42:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoPJ-0005t2-71; Tue, 02 May 2023 13:42:57 +0200
Date: Tue, 2 May 2023 13:42:57 +0200
To: Wolfram Sang <wsa@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230502114257.GF29365@pengutronix.de>
References: <20230427184718.105393-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230427184718.105393-1-wsa@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_044259_250509_54256A4B 
X-CRM114-Status: GOOD (  17.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] ARM: at91: usb-a9g20: make it work out of the box
 again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 27, 2023 at 08:47:16PM +0200, Wolfram Sang wrote:
> Here are the remaining two patches to make a (for me) useable barebox
> with the defconfig and no other patches. Comments welcome!
> 
> Wolfram Sang (2):
>   ARM: at91: usb-a926x: remove nand partitions from config
>   defconfigs: usb-a9g20: update to a working version

Applied, thanks

Sascha

> 
>  .../boards/usb-a926x/defaultenv-usb-a926x/config  |  4 ----
>  arch/arm/configs/usb_a9g20_defconfig              | 15 ++++++---------
>  2 files changed, 6 insertions(+), 13 deletions(-)
> 
> -- 
> 2.35.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


