Delivery-date: Thu, 25 May 2023 09:38:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q25Y9-00DVXL-SG
	for lore@lore.pengutronix.de; Thu, 25 May 2023 09:38:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q25Y7-00058c-JK
	for lore@pengutronix.de; Thu, 25 May 2023 09:38:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ET2Jb7j71hy0b0sV/2+O3lyexCpKazZ/uJZGvwAiPKc=; b=0PPNXMtjVm3Wl9jtFj4c0ezXIF
	v1BulTP0gB8RUDA8c/SD7Dq7dnICjIrNY2skKCRh7SalJrBVWlv5z5IaRo0oyQcsxodrplA9jb0RU
	6E0vUdBAoEe7vQ1u+tRArl4eoQPQOyg+JZnXlZipP6Tnm/SEUlFgVUOcGXkga/UtR8hihDgvrI0sM
	tTvEZ2kttA3ZLuai6kXx5jTcIRh/TuD269LnGce1X1PNhkBAdihxlvBC/7Ybh6znPdDk7KeQb3zFZ
	BxL67R/DXX+4Y1bCOeHBG4GEfArC1kxDSAuexkcGyxk1+1cOfqioOcNldGSVqFJSKz9IynCsIA2lY
	eOOk/s2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q25X1-00Fq0I-27;
	Thu, 25 May 2023 07:37:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q25WG-00FpNF-0l
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 07:36:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q25WE-0004qL-Nz; Thu, 25 May 2023 09:36:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q25WE-0000K8-GT; Thu, 25 May 2023 09:36:18 +0200
Date: Thu, 25 May 2023 09:36:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230525073618.GO17518@pengutronix.de>
References: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_003620_282613_3DB36055 
X-CRM114-Status: GOOD (  17.66  )
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
Subject: Re: [PATCH v2 0/6] commands: implement of_compatible command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 19, 2023 at 12:01:14PM +0200, Ahmad Fatoum wrote:
> This enables scripts to do:
> 
>   if of_compatible -k radxa,rock3a radxa,rock5a ; then
>     of_property -df mmc0 sd-uhs-sdr104
>   fi
> 
> instead of checking $global.model. See individual patches for changelog.
> 
> Ahmad Fatoum (6):
>   treewide: don't mix goto labels and statements on same line
>   treewide: drop null pointer checks around of_delete_node
>   commands: of_property: use new of_read_file
>   commands: of_dump: remove duplicate error message
>   commands: of_dump: use of_dup instead of flattening/unflattening
>   commands: implement of_compatible command
> 
>  commands/Kconfig                 |  15 ++++
>  commands/Makefile                |   1 +
>  commands/of_compatible.c         | 124 +++++++++++++++++++++++++++++++
>  commands/of_dump.c               |  28 ++-----
>  commands/of_property.c           |  16 +---
>  common/blspec.c                  |   3 +-
>  common/state/state.c             |  15 ++--
>  common/state/state_variables.c   |   9 ++-
>  drivers/usb/gadget/udc/fsl_udc.c |   3 +-
>  9 files changed, 168 insertions(+), 46 deletions(-)
>  create mode 100644 commands/of_compatible.c

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


