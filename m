Delivery-date: Mon, 30 Jan 2023 21:32:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMaoy-0080GQ-26
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 21:32:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMaov-0001EW-Cv
	for lore@pengutronix.de; Mon, 30 Jan 2023 21:32:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ar21Htl5yvzUdX0kuhovGpMnDlDh5gFchhOjEB7ffT4=; b=bBOt5kFqQD3Byck9lFF2teZYdx
	vyzVmwhNd0Cjna5tccqui7ChPuIJVg0C2WJ6yZLJfGHKP78gFmKzj2O87RhCCOAVXnsPHa+cTJD4q
	JvjZomCyWNLIuy1fhXolmN3B2mJ+qjwrcqIIjqGdzY2W3yo4AThdOzO8gISBoHHRYmPlM1jCzVgjJ
	MMdTt2i44d6UQN9J85RS2hdMFZhCuo+WWzMvpbbH7JRR9QIgmzLZVdfhvbeZK1mZtwdIGPFzcVrHQ
	Qb8TXCwJV5SdY+te1oV45LOMfXriVRpCTn4E2Y8sQpi12mDbAXO0HuU6rkfRK8BgzYWTAxk2UUe05
	E9YUaUSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMaoC-005MWy-8R; Mon, 30 Jan 2023 20:31:20 +0000
Received: from out-2.mta1.migadu.com ([2001:41d0:203:375::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMao7-005MVx-D2
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 20:31:17 +0000
Date: Tue, 31 Jan 2023 07:26:32 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675110671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ar21Htl5yvzUdX0kuhovGpMnDlDh5gFchhOjEB7ffT4=;
	b=u46bD+WsHBMOckGZMC23SLaD76TdEO0xFIprbBdnV4ApqXq1DeoO9QkTCtiwqddeI/NUcI
	n7mGVS+qKHBeEXDBy3w4Mo6OVziHQlOyLZx/RF2ak62Y1/8cXhLoMUE54sE5tw/Tyv6it8
	O/KTdYgdZKxIOCcUQNvCK4JtYdqOMssfAHtK1xSLKYIj7H+MWxdiHcgLqXCnWU9WbhWWlt
	3CY7x52E88Lpe4gkQyuuMA+pM4LsbzO5t6U452zCwjVgyvHtKQAAp7PPxGd3qOZsJ1Jrys
	2oPLNC5UnAjofArj1qIPsMBCZ13VQFDbYmMcn3uLN4rO+U5l4+HtnJo/DsYspQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9gn+G5ll/lHIv1G@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-2-contact@jookia.org>
 <20230130201308.iqzujvfb4mek3qdk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130201308.iqzujvfb4mek3qdk@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_123115_596876_9FFAD59D 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/4] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 09:13:08PM +0100, Marco Felsch wrote:
> > +#define STACK_TOP (MX6_OCRAM_BASE_ADDR + MX6_OCRAM_MAX_SIZE)
> > +
> > +extern char __dtb_imx6q_novena_start[];
> 
> Can we use compressed device-tree's instead? For this feature you only
> need to rename this variable to: __dtb_z_imx6q_novena_start[] and select
> 'ARM_USE_COMPRESSED_DTB' within the Kconfig.
> 
> An example can be found here:
>  - arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
>  - arch/arm/mach-imx/Kconfig
> 
> Sorry for not recognize it the first time.

Sure!

> > +	pr_err("Unsupported boot source %i instance %i\n",
> > +				bootsrc, bootinstance);
> 
> Nit: Please align it correctly.

Just a single tab?

> Regards,
>   Marco

John.


