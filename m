Delivery-date: Tue, 11 Oct 2022 16:48:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiGYw-004gJM-2w
	for lore@lore.pengutronix.de; Tue, 11 Oct 2022 16:48:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiGYt-0001UW-Gx
	for lore@pengutronix.de; Tue, 11 Oct 2022 16:48:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YMXrLp6mt/k32rGcct++y6Ez8qJry9Yxurez0KyYRIk=; b=kI7XhYFcaUQyXzbOw7yNP4Phdk
	t4mCu06xIyYnhdf15gGzWzNf+TgC7lIt9dKU2zMM3IxnczpCeeU8zq+0m5oQxfHXWSVnv4Rm7W940
	RK2FwqnYfX8DSFk2Ti1ppBRF3QYzMeNO7LK6J8ELVk5ggYv4eMJUw22UEmSYkZoc4Tyv4I+ywoIIo
	VZlD2cT+aU3WFbokWWYQbRMUOF1EUFZ7ghZAQIEUskZrssjTAWZ/0W20CbL5m0adUclmQbWIx/g6i
	ZAfOSGBmCvGCYLDEiOUllV6Mp1c0VmIM6tkh3LtOMu0PjozC/nyRBhYKM8NPYkAN7x89rPlG0n2ok
	Ri/FMDqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiGX2-004WqA-QK; Tue, 11 Oct 2022 14:46:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiGWx-004WpE-Ek
	for barebox@lists.infradead.org; Tue, 11 Oct 2022 14:46:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiGWs-0001II-Cm; Tue, 11 Oct 2022 16:46:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiGWs-00019C-5R; Tue, 11 Oct 2022 16:46:46 +0200
Date: Tue, 11 Oct 2022 16:46:46 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221011144646.GI986@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_074651_509642_F1FEBE32 
X-CRM114-Status: GOOD (  13.78  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/10] treewide: misc cleanup for efiloader prep
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:11:12AM +0200, Ahmad Fatoum wrote:
> The patches have in common that no functional change sould be introduced
> and that they resulted during efiloader implementation.
> 
> Ahmad Fatoum (10):
>   block: have cdev_get_block_device accept const cdev
>   treewide: replace errno_str() with %m printf format specifier
>   common: misc: remove now unused errno_str
>   driver: don't crash when dev_name/dev_id is called with NULL dev
>   lds: introduce <asm/barebox.lds.h>
>   lds: move OUTPUT_FORMAT/ARCH definition into header
>   ARM: lds: define and use BAREBOX_RELOCATION_TABLE
>   lib: random: add hwrng_get_crypto_bytes
>   common: bootm: factor out FIT parsing code into bootm_open_bit
>   common: bootm: use switch-case

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


