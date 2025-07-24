Delivery-date: Thu, 24 Jul 2025 15:54:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewOq-003GOC-0X
	for lore@lore.pengutronix.de;
	Thu, 24 Jul 2025 15:54:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewOn-0001wF-2K
	for lore@pengutronix.de; Thu, 24 Jul 2025 15:54:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YaGnNCrIdsMGTowQCCJbzs6OhXSnJsGtKOATvXB62Y0=; b=4MXCNDA/QLpfsJpXD1H7MmAH/D
	qeIC4prKfvYUt6HndGSDKPpCXBQUFIRfPyNa/EpyYnMmih9SD8jldpQyUljJ+26fCJg/COOeTYQR0
	msotTrn+XStYjbHUVMiPHBEwfBD5ZiGfXp2hG4PoJ7io3t/zmtx7gUUP4R04THxCWzBmeQsBDe7Bu
	eH/B6O+9zaeTVLjRvmqZR2O300YpTrVV9WV6iq+gmGa946zOboWG2Zwjg/VfjokzYFOi/mTc1xfHX
	a9tZChcpzz2bLecUakfhLkWbNx7XIZ4fS/qb6gIGZpavwOvyh6JddoEIXOu+u9l32apV3S6voF4no
	VXcd+e4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewON-00000007bXa-3U98;
	Thu, 24 Jul 2025 13:53:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueu7R-00000007L0V-40Yo
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 11:28:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueu7Q-0002P5-P1; Thu, 24 Jul 2025 13:28:12 +0200
Message-ID: <7b363e3a-978e-4632-9c46-604960e875a3@pengutronix.de>
Date: Thu, 24 Jul 2025 13:28:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20250723155545.682170-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250723155545.682170-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_042813_997727_DF6A3242 
X-CRM114-Status: GOOD (  15.20  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] block: follow links before check if
 cdev_is_block_partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/23/25 17:55, Marco Felsch wrote:
> cdev_is_block_partition() fails if a cdev is passed which is a
> parition-link. Most of our barebox code is link-aware by resolving the
> links first.
> 
> Make it more user-friendly and resolve the possible cdev parttion link
> first before performing the actual check.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/block.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/block.h b/include/block.h
> index 5ce3eb7d7838..a5a2dcf58995 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -107,6 +107,7 @@ static inline bool cdev_is_block_device(const struct cdev *cdev)
>  
>  static inline bool cdev_is_block_partition(const struct cdev *cdev)
>  {
> +	cdev = cdev_readlink(cdev);
>  	return cdev_is_block_device(cdev) && cdev_is_partition(cdev);
>  }
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



