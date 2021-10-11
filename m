Delivery-date: Mon, 11 Oct 2021 10:13:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqQg-0007gt-Bq
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:13:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqQf-0008CV-Eh
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:13:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=04ieKNZ7zRR+TWboNcL5kWpISWGMWsYauVKr2D4KISs=; b=kEMGBvM0GbQGYZD27ng0fsxI/k
	v3bUu1ka5PLKMFvhJUDJOyr5txoLChsUM/Mk+RTbRE0I8UUqChtWLw4H3gyZpvzSIAQhRADYP+p++
	mxj7ewDrSK6yFIz9EMosLFx0ljdWKujatTiI95i+4Olm8qUSeguIln83ojRV2UCOQCjTZLdVNt8f3
	ZyrlZTRx5ZA9qLXkJLEPsB7M0Z/tB1UcEIYL8jW1r8WUntK2p3f9+Gl5hj7ZNvTbE2Eljb2kzP8L2
	V+z7k9TGwLyS0NXwFhZQAoJW5qrX1geccZcxOYBnEF9gCth+ATQnxFyC9dWdOXkSWkZHnTZdzQ0Y7
	XtuTVnrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqPO-008FRx-DV; Mon, 11 Oct 2021 08:11:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqPD-008FPN-9m
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:11:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqPC-0007s0-1J; Mon, 11 Oct 2021 10:11:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqPB-0006vR-Jo; Mon, 11 Oct 2021 10:11:29 +0200
Date: Mon, 11 Oct 2021 10:11:29 +0200
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org, Enrico Joerns <ejo@pengutronix.de>
Message-ID: <20211011081129.GX28453@pengutronix.de>
References: <12cdc549cacb6f4f93f939fb76486d62@inside-m2m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12cdc549cacb6f4f93f939fb76486d62@inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:07:28 up 235 days, 11:31, 138 users,  load average: 0.34, 0.57,
 0.48
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_011131_371624_9E87065D 
X-CRM114-Status: GOOD (  23.68  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: yocto integration - best practice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Konsti,

On Fri, Oct 08, 2021 at 03:18:56PM +0200, Konstantin Kletschke wrote:
> Hi All,
> 
> I wonder how to properly integrate bare box into my yocto. I read many other
> examples in
> the internet how other people do this and I am a little stupid now.
> 
> I have a yocto poky image up and running based on their beaglebone-yocto
> subset which can be utlilized
> in my case with a rather minimal setup with a local.conf only. This since I
> by accident actually
> use a Beaglebone Black board.
> 
> I added my own meta-insidem2m layer also and in this layer I modify kernel
> config, integrate out of
> kernel modules and other stuff. Also barebox patches (for default boot
> configs) are added from there.
> The local.conf shrunk to a rather minimal content, because I have an own
> distro in it with three
> different images.
> 
> Additionally I integrated meta-barebox successfully into this and use
> barebox in my daily development
> work to boot from internal MMC and external SD-Card.
> 
> What I wonder, what is need to be done to integrate MLO and barebox.bin into
> the SD-Card image?

We use https://github.com/pengutronix/genimage for this task. The tool
can generate all kinds of images with complete partitioning, also
containing bootloader images and barebox environment images if you like.

I'm not very much into YOCTO, I don't know how genimage is integrated
into YOCTO, there must be the right receipt files somewhere. Added
Enrico to Cc: for that.

Regards,
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

