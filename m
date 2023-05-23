Delivery-date: Tue, 23 May 2023 09:17:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MGt-00AUKb-9L
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:17:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MGq-0002SA-LG
	for lore@pengutronix.de; Tue, 23 May 2023 09:17:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NoiBvYxAHi2FAE+BL+sP/ASCWuUZds6MUmu6XFD/YEg=; b=hjPnMGa+hBz892GHQ6GTnuQ4UY
	uMIbEzOOs2uZF68rwgwRb72OIB34aE+s/DCTc/jHk1c7uIFcl+N9TDTKZKZhvhRN3k5+WL2IKgah4
	Bq8xxy1uog+ioCYHfWoFPpaIZU9pwyWFIfXHtqjAWkbriJDmMbimgOhPeJLGUTE7w3xGEHYR8GIEF
	zgyrdCp7LSV4ZNVVjYVA/ifV0g3IiB0+JBWFx+lFLM1zsuMx1Sg6i6lar37Zb7GA4qDFPPvbYHxjS
	nO7hdKH9js2eN3EaCY5EfbysxBIt0k4yK3GoE/PWxv7L73rPt75eixLE7+B+ZYKp18EgyISSu08HA
	GTwW5ycA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MCg-009Ant-28;
	Tue, 23 May 2023 07:13:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MCb-009AmW-07
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:13:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MBW-0001VE-AS; Tue, 23 May 2023 09:11:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MBV-0002EE-Bv; Tue, 23 May 2023 09:11:53 +0200
Date: Tue, 23 May 2023 09:11:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230523071153.GC17518@pengutronix.de>
References: <20230523055042.2863795-1-a.fatoum@pengutronix.de>
 <9c678311-3227-7577-780c-3f2d26596f74@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c678311-3227-7577-780c-3f2d26596f74@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_001301_070261_1EDE5992 
X-CRM114-Status: GOOD (  20.79  )
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
Subject: Re: [PATCH] fixup! pci: set upper word for 64bit base addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 08:08:51AM +0200, Ahmad Fatoum wrote:
> On 23.05.23 07:50, Ahmad Fatoum wrote:
> > pci: fix warning building for 32-bit
> > 
> > On systems with sizeof(resource_size_t) == 4, shifting by 32 will result
> > in a warning. Use the upper_32_bits macro to fix this.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  drivers/pci/pci.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> > index 046711cd145b..ff2ffacffb6b 100644
> > --- a/drivers/pci/pci.c
> > +++ b/drivers/pci/pci.c
> > @@ -223,7 +223,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
> >  			*last_addr = ALIGN(*last_addr, size);
> >  			pci_write_config_dword(dev, pci_base_address_0, *last_addr);
> 
> Sascha, could you change this into lower_32_bits(*last_addr) when you apply?

Did that, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


