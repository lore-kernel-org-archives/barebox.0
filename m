Delivery-date: Thu, 15 Apr 2021 09:55:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwqh-0006td-0j
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:55:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwqg-0001le-7c
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:55:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2AlN5f9EbATNoqK8UQRrdqMDvzW8b7CA5v9B0ToMBWA=; b=VGfiJAqW47GBD/5Si+arOv9Mk
	MBnRM5yXOT/D1VvhPvF8WEdqM6nunCz16IKl5Folyji/5pkTUZgmUL8RsPztEvcHtOvR2QZtOEgIj
	g9DdJ5BLUt3HZDNSSj1uHMVMSHccw1X+TWTc1+hDRFWSsNhyP7cIcBzsnap7KQa8S2BNzLQKw0o99
	BMt4osOLvPpZQ1QCtoEQvRfHbm/ejCvQMEgWXDyutzDVqhNemmtmeAe1q6DO1pXFowGIOCfJy5HC4
	4576Dzle6GZmsiQdDXfGI2ScuZ7QwH/m+hEk9vaXMnFQDUJJKFnfwP+YRRTgbeJQfbHPadZttPS/u
	aTfunMTtg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwpW-00FHlT-2T; Thu, 15 Apr 2021 07:54:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwpQ-00FHkT-FX
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:54:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwpP-0001bY-2D; Thu, 15 Apr 2021 09:54:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwpO-0002TP-PK; Thu, 15 Apr 2021 09:54:18 +0200
Date: Thu, 15 Apr 2021 09:54:18 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210415075418.GC19819@pengutronix.de>
References: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
 <20210414095427.GS19819@pengutronix.de>
 <20210414140736.bf2d10eed1149d407434575a@gmail.com>
 <5b740bc2-c0a2-2592-557b-f5da2540025f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b740bc2-c0a2-2592-557b-f5da2540025f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:02 up 56 days, 11:10, 101 users,  load average: 0.07, 0.65,
 0.71
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_085420_607213_CFC5F1CC 
X-CRM114-Status: GOOD (  23.79  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RISC-V: erizo: large gap between bss and stack regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 14, 2021 at 01:20:44PM +0200, Ahmad Fatoum wrote:
> On 14.04.21 13:07, Antony Pavlov wrote:
> > On Wed, 14 Apr 2021 11:54:27 +0200
> > Sascha Hauer <sha@pengutronix.de> wrote:
> > 
> >> On Wed, Apr 14, 2021 at 08:54:22AM +0300, Antony Pavlov wrote:
> >>> Hi Ahmad!
> >>>
> >>> Here is the iomem command output on erizo:
> >>>
> >>> barebox:/ iomem
> >>> 0x00000000 - 0xffffffff (size 0x00000000) iomem
> >>>   0x80000000 - 0x807fffff (size 0x00800000) ram0
> >>>     0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
> >>>     0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
> >>>     0x80600000 - 0x80636b1f (size 0x00036b20) barebox
> >>>     0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
> >>>     0x8063ec9c - 0x80643147 (size 0x000044ac) bss
> >>>     0x807e0000 - 0x807fffff (size 0x00020000) stack
> >>>   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
> >>>   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
> >>>   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
> >>>
> >>> I see large unused region between bss and stack regions (>1600 Kbytes).
> >>
> >> That's normal. The compressed barebox knows the size of the uncompressed
> >> barebox, but it doesn't know the size of the bss segment above it. For
> >> that reason we have a very pessimistic estimate of:
> >>
> >> #define MAX_BSS_SIZE SZ_1M
> >>
> >> The barebox binary itself is then aligned to the previous 1MiB
> >> boundary, so barebox usually starts at 2MiB below the end of SDRAM.
> >> That's a bit wasteful for boards with very little memory like the erizo,
> >> but that's how things are at the moment.
> > 
> > Can we make it configurable via Kconfig?
> 
> Or even better: Could we easily add to the piggy data the size of bss
> it contains?

That probably depends on your definition of 'easily', but that would be
the preferred solution for me as well.
We already include a sha256 of the compressed image in the pbl binary,
maybe we could include the bss size in a similar way.

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

