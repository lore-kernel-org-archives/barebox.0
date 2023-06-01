Delivery-date: Thu, 01 Jun 2023 09:09:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cQg-005Rtz-5W
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:09:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cQd-0008DJ-SJ
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:09:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zn5b6qE+n2vXJE/2o6RoTr+1SRPzWQwkIeGi+s4UG4E=; b=ykeLKpx23qiLW8+LR2PmI6bxOU
	Yy1yKArf0wySd7diR0XCPWPoEPzFmFOUBpoNKEYx5Lc32dWIXI+pJkcWLFTnhZzrh/PC4o4o65VuE
	9zdA6UphbYA2kBU+uw0vcoZAd8xat7rCC1y4Ar3m1CluHMqbxCNsbiuoIA2FQKFJ2CJpmaOZLWQh8
	AHTKKu0UUOmtU210sdgJo8ZHoS0z6EAqU8iVH0wWDV7fwVBl4T0WqztOe2zLgaQnRF6La022J73Vk
	z+XulPghikt3LW6ZPDGupij3AY72KZAAjY4CKCKkObZEdtBxyZfZ2oxz/wZJ4ORPSjn1sG9Ioyst2
	9jFzAvzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cPb-002JLy-1U;
	Thu, 01 Jun 2023 07:07:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cPY-002JLI-0w
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:07:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cPX-00089A-1b; Thu, 01 Jun 2023 09:07:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cPW-0001QI-P9; Thu, 01 Jun 2023 09:07:50 +0200
Date: Thu, 1 Jun 2023 09:07:50 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230601070750.GF18491@pengutronix.de>
References: <20230531062853.670751-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531062853.670751-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_000752_328517_DC370EF7 
X-CRM114-Status: GOOD (  18.58  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] string: import strverscmp_improved from systemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 08:28:50AM +0200, Ahmad Fatoum wrote:
> The Boot Loader specification now references the UAPI group's version
> format specification[1] on how blspec entries should be sorted.
> 
> In preparation of aligning barebox entry sorting with the specification,
> import systemd's strverscmp_improved as strverscmp and add some tests
> for it.
> 
> The changes to bootloader spec sorting need some more testing and will
> follow separately.
> 
> Ahmad Fatoum (3):
>   include: sync min/max definitions with Linux
>   include: minmax.h: implement compare3 helper
>   string: import strverscmp_improved from systemd

Applied, thanks

Sascha

> 
>  include/linux/const.h  |   9 ++
>  include/linux/kernel.h | 123 +--------------------------
>  include/linux/minmax.h | 189 +++++++++++++++++++++++++++++++++++++++++
>  include/string.h       |   2 +
>  lib/Kconfig            |   9 +-
>  lib/Makefile           |   1 +
>  lib/strverscmp.c       | 165 +++++++++++++++++++++++++++++++++++
>  test/self/Kconfig      |   6 ++
>  test/self/Makefile     |   1 +
>  test/self/string.c     | 175 ++++++++++++++++++++++++++++++++++++++
>  10 files changed, 557 insertions(+), 123 deletions(-)
>  create mode 100644 include/linux/minmax.h
>  create mode 100644 lib/strverscmp.c
>  create mode 100644 test/self/string.c
> 
> -- 
> 2.38.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


