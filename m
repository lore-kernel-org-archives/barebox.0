Delivery-date: Tue, 18 May 2021 08:28:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1litD9-0002X9-L6
	for lore@lore.pengutronix.de; Tue, 18 May 2021 08:28:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1litD8-0007zr-Ri
	for lore@pengutronix.de; Tue, 18 May 2021 08:28:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vtf6kfyGGDAkpBvX8jneGY98o/pZrUG5RhfHSZnw0l8=; b=ojynzkNFtXMmf1KZNg7/ifOVg
	f9t+n4/1SgdLYQdTPcSG4DoietzoJ1DyZGG5SByoWYH8HKQCSb1d7E+5sULnp/7YkkbwLL1JCC5qW
	R7CuOVlyAb/VAYc4Q2pgsD+bt3SFLnpWTyj+ACeiRF26K/IZaCApRncLYbIr+IIp3anGxcZPK6fZn
	8Go+1FhuYhameF12nWBna2BaoCYv1aewOob+OspaY2Hse0S/2t2046oY/jTSKKu56IctjdT4GjyeE
	Zv63uVuADMkEIlq95Vyxz54q0tJcDudKFX3yTrAhsrt2lhGdbc2vZMbFy/bJpZCJ5fjJwycONR+tX
	2QRFAfDOg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1litBw-00H9RK-Ae; Tue, 18 May 2021 06:26:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1litBs-00H9R2-JD
 for barebox@desiato.infradead.org; Tue, 18 May 2021 06:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8XeiMnAwVNuI82RCww+/DKyKR2lz4Eh9Ss8IqtHV18U=; b=jnYoobZTMU7dk1tb4+E8tZ2lST
 m4oxolxqH/qyGrQHcHJXPcDUaloMIKjO9w20ovFP9Ksrzhwwp/5D9X5RE40EHJP4kILo2eWPLjnCG
 CIpzN7IpJAK2AJCFkSQErECtzPFwuZAVEMay4z0n0IydFNPHDBvf8qCCetC2Mmv+NFeCBp5y/gAse
 pVtM7bvZeXrzQz2e/giAplM2cohxj6wKFDwDLD8+LpBdGoDGrO1D7+20pDF4SvSwsnaJCCFL70s7t
 jS+MBi4BmWkm6GLG9L4kUUX1eJlj6jgrCXTzH5kAOUskxxuLGV9fhWkA4FEZnxEfS7zUvuvSntcUb
 pAQ2XQ+Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1litBp-00ELoS-Kx
 for barebox@lists.infradead.org; Tue, 18 May 2021 06:26:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1litBl-0007le-IA; Tue, 18 May 2021 08:26:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1litBl-0006x4-8p; Tue, 18 May 2021 08:26:45 +0200
Date: Tue, 18 May 2021 08:26:45 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210518062645.GU19819@pengutronix.de>
References: <ce838b2e-bcb8-d13b-8c49-7ffee194094a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce838b2e-bcb8-d13b-8c49-7ffee194094a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:26:23 up 89 days,  9:50, 88 users,  load average: 0.16, 0.10, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_232649_728952_484667D0 
X-CRM114-Status: GOOD (  21.44  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [BUG] mtd: cfi-flash: comparison of unsigned expression in '>=
 0' is always true
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, May 17, 2021 at 01:29:05PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> The new warning correctly flags following piece of code in
> drivers/mtd/nor/cfi_flash.c:
> 
> /* loop through the sectors from the highest address
>  * when the passed address is greater or equal to the sector address
>  * we have a match
>  */
> flash_sect_t find_sector(struct flash_info *info, unsigned long addr)
> {
>         flash_sect_t sector;
> 
>         for (sector = info->sector_count - 1; sector >= 0; sector--) {
>                 if (addr >= info->start[sector])
>                         break;
>         }
> 
>         return sector;
> }
> 
> If addr is indeed unmapped by info->start[*], this would be an infinite
> loop. I don't know what the correct fix would be though. Any suggestions?

See
https://lore.barebox.org/20210517185424.32145-7-s.hauer@pengutronix.de

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

