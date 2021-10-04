Delivery-date: Mon, 04 Oct 2021 15:12:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXNli-0000pa-UK
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 15:12:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXNle-0007Zl-Tq
	for lore@pengutronix.de; Mon, 04 Oct 2021 15:12:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXD8IS3xp3h+xukrAQyJ/yHQE1+F7It8Hr8QPFLnQlg=; b=mtZCiQ/o5kXn6h
	W4bjsUPlNQBPys5KcpDrJOL9pzGOSZilbuzgWBZPmTChjINA9yzmBPGr0XTS3TzmGgtd7Nh63SbD8
	o1MABI6AVdufFac/iQQ7oXuDeMUKdpDBUk6Pao6hLzcK1fEwab4avdrRKqC8U3Yow9wiqxb68VsEP
	0T0B5F0VaKVAPl16ST4R+8sr+i1P3lWLIV69fSDsPf4WJSAVtN0dEEgd6v7xGXWX7Yw4azEvXnEef
	u6YwwIZhGUhn73ZSiP0vhXoJ9A/kbA+e9iMxoJIg3lUb1bsrbwRCcjRDDSuHuvgb8TPhUOMciVuL6
	/U/j9455yCIMPOwErNkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXNkB-006a0h-Ms; Mon, 04 Oct 2021 13:10:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXNk4-006Zzt-LJ
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 13:10:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXNk3-00075b-AG; Mon, 04 Oct 2021 15:10:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXNk3-0003Bo-1C; Mon, 04 Oct 2021 15:10:51 +0200
Date: Mon, 4 Oct 2021 15:10:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Dahl <ada@thorsis.com>
Message-ID: <20211004131051.GL28453@pengutronix.de>
References: <20210622080811.28335-1-a.fatoum@pengutronix.de>
 <991b390e-3f6d-5c2d-af66-602292dc956e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <991b390e-3f6d-5c2d-af66-602292dc956e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:10:34 up 228 days, 16:34, 143 users,  load average: 0.49, 0.50,
 0.40
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_061052_720508_8E1EEBA1 
X-CRM114-Status: GOOD (  22.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: sama5d27_som1_ek: populate MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 22, 2021 at 12:54:25PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 22.06.21 10:08, Ahmad Fatoum wrote:
> > With the latest NVMEM enhancements merged, barebox networking core now
> > always consults NVMEM cells referenced in the network controller
> > device tree node before it falls back to randomizing a new address.
> > 
> > The SAM5D27-SOM1 has a 256 byte EEPROM, which holds a MAC address in its
> > last 6 bytes. Describe this in the device tree, so boards using the SoM
> > will get an unique MAC address assigned and fixed up into the kernel
> > device tree. This change can be dropped again when/if the change is
> > submitted and applied upstream.
> 
> This patch seems to have slipped through the cracks.

Applied now, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

