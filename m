Delivery-date: Fri, 12 Sep 2025 09:49:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyXO-0029iw-2r
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 09:49:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyXO-0004CH-Bj
	for lore@pengutronix.de; Fri, 12 Sep 2025 09:49:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ijaXbdQTLYBoOlQW1dMEhJJDkolU6DMQ2FKdJthw04=; b=P3raGzkneeY8DmY9no4QebQwZD
	Sx4ZX0pkTI4ErM0yiLj09ekMHD+RoKoidxIJdkFpzjG83vHSKcQny0zhtZcH5RWnuWoyKnajxYBpn
	O9Ptj4wrUabATrrVDnTLvdrfpju3umBu7Qn9L/L7bK9G/+0/IEJBnRmmKNsan8eTHHdktxnibsKpS
	D1K/+tXgHObNDlNVv9CLg9q/5C0EFworT565TngjqFMMZyN3BoCsqsba7mJO55M2cXT0jZciSAmJq
	zdqR7Diy27qGPp98FXuLgzLdEFF0GTHI0M+BgQgiGM0QQFdgjURbcuKUAtzPMp77qlKcal7IXGkjb
	jLf/gk2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyWw-00000007jjv-3aRM;
	Fri, 12 Sep 2025 07:49:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyWu-00000007jik-1qNA
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 07:49:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uwyWr-00045Y-LT; Fri, 12 Sep 2025 09:49:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uwyWr-000tf0-15;
	Fri, 12 Sep 2025 09:49:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uwyWr-002wG1-0g;
	Fri, 12 Sep 2025 09:49:09 +0200
Date: Fri, 12 Sep 2025 09:49:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aMPQdUEH0Tj7YrdS@pengutronix.de>
References: <20250825121152.197198-1-eagle.alexander923@gmail.com>
 <CAP1tNvQEkKGxwqxeY0_kXtqLdiUV6L4zVL7kLk4xc6ic80yiVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvQEkKGxwqxeY0_kXtqLdiUV6L4zVL7kLk4xc6ic80yiVQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_004912_480532_A06451AD 
X-CRM114-Status: GOOD (  19.24  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: bootm-fip: remove redundant variable declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 12, 2025 at 09:55:07AM +0300, Alexander Shiyan wrote:
> ping

The patch already sits in master as 54e2f6bf92 ("arm: bootm-fip:
remove redundant variable declaration")

Sascha

> 
> пн, 25 авг. 2025 г. в 15:12, Alexander Shiyan <eagle.alexander923@gmail.com>:
> >
> > Remove shadowed variable declaration inside the loop
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  arch/arm/cpu/bootm-fip.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
> > index bd176f0645..a50b3f4431 100644
> > --- a/arch/arm/cpu/bootm-fip.c
> > +++ b/arch/arm/cpu/bootm-fip.c
> > @@ -91,7 +91,6 @@ static int parse_dtb_registry(struct fip_image_desc *fw_config_desc,
> >                 for_each_child_of_node_safe(fconf, tmp, image) {
> >                         u64 load_addr;
> >                         u32 id;
> > -                       int ret;
> >
> >                         ret = of_property_read_u32(image, "id", &id);
> >                         if (ret)
> > --
> > 2.38.2
> >
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


