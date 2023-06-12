Delivery-date: Mon, 12 Jun 2023 08:40:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bEa-003VOQ-4q
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:40:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bEX-0004kq-Nz
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:40:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7GMfdX1jY7uHLZMRhySZF2HQw/IYbL9MDnk8RCpkr2w=; b=i1sntTjTH4ouWkzKqFs5GqFoJm
	4r2NfmbwgA9kivM3YAAp/rRqKvmnYAmF4FUJL8QgeY8yAcNviB4hdcDpkM9j5HjE0XaLxCVWM8hBD
	eYf+TTdMwq7hZJCIyWboY7wlsVhrBb69PUWXMyUyCK15rCZPb2RptOG6zcu5sOalRh4QnGEOuuSSz
	uQ2axMyLI9X8ejeAC+hVlG0xzqs30TggMxu6Hg3drBc37OY4WY7F4+4azs0pINEUAASxHc3RHwtbM
	WV6U/vUVycMQMX7zDQ0z6HiO/YMfIBSGOsiyxMagkyOsUTzkC66bKo32c1zQVLLChPTooMTVQhjfl
	m/p+XiKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bDT-002nNR-2E;
	Mon, 12 Jun 2023 06:39:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bDP-002nMN-27
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:39:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8bDO-0004E5-DA; Mon, 12 Jun 2023 08:39:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8bDO-0001py-65; Mon, 12 Jun 2023 08:39:46 +0200
Date: Mon, 12 Jun 2023 08:39:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230612063946.GE15436@pengutronix.de>
References: <20230610084146.9448-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230610084146.9448-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_233947_691757_3F129FC7 
X-CRM114-Status: GOOD (  16.33  )
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
Subject: Re: [PATCH 0/2] MIPS: set virtio and other options in malta
 defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 10, 2023 at 11:36:27AM +0300, Denis Orlov wrote:
> The issues with VIRTIO_PCI on MIPS seems to have been fixes, so enable
> this option. And, while at it, also enable a few more for which there is
> no reason not to have them enabled.
> 
> Denis Orlov (2):
>   virtio: remove VIRTIO_PCI dependance on MMU for MIPS
>   MIPS: enable more options in malta defconfigs

Applied, thanks

Sascha

> 
>  arch/mips/configs/qemu-malta64el_defconfig | 10 +++++++++-
>  arch/mips/configs/qemu-malta_defconfig     | 10 +++++++++-
>  drivers/virtio/Kconfig                     |  1 -
>  3 files changed, 18 insertions(+), 3 deletions(-)
> 
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


