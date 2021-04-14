Delivery-date: Wed, 14 Apr 2021 15:00:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf7t-0002G6-B3
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 15:00:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf7s-0002n0-EL
	for lore@pengutronix.de; Wed, 14 Apr 2021 15:00:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=go8dv1g4mnjCbKy3UrYT2eZRXfVbObw63uYTL+ROtLE=; b=JH6jUMqNxatPkYIaLvH/aHupc
	qtApJx6MdTYYnl972s3AU8wPVQ0dnz0dIZSTu4Cd104Yri1jNDr8P2HOvCQe1WG/c4q8EMjWC1z1X
	z0Mxy8fg5I/mjwTwCU/n9oOd5HUiwH1ST8oiDHtUs7d/oxTFyFMPBNdj69D8h3SrUhao6d7i0YF2X
	EnUJzdv7XLSTmysV+VAyJ+kcfMC4wRKqO3W50Rmy+P8SDxHbI4XnDmcvg356GFfd6fQes54g5aMcj
	W3CnwnXCjDsC4J2FiSEe6h3TpCwAHAkWE0orD/DxJvoL9vEaJoyxn769YZdjFHMXp68jLkCYCnPLO
	q3Qq4QU+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWf6s-00Cezu-4a; Wed, 14 Apr 2021 12:59:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf6j-00CezH-2Q
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 12:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9Mh8vv5dmg/FkHXpifK7WmRuwt1NWNwSy6YqhuYw00s=; b=IrZJ7z/OT9WML10g69AtftmjO2
 8XBXvZsM3r/QErL5uZ+6kAFd0jbnVsE0Y6K5KpvNMshzt0zbl2vSGBaEBFwNkVU+g/NCLrcJNZYnm
 peHNZsFoWxh644OPPqfYAPLj0wINrE0IPAqTjSnk5tGLj3pN6eRsHBfYMNoXdCx+5F0vruoNoB4rM
 YBuMC5wCYvSTA2IMtNPJpRCv+3Wm2E2E88TXVKcUUAuncZcOKg5V+2yrdKTXjYvxW2uAvH5BYdzG6
 LFT+X1vtdTQiT4+N2+RteznY3YUqXYA0pXrwjdaGyfKXAgnOByvCkDxthFk3yYKsc9gfGO7gyl4N8
 K3HYbsQA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf6g-007m95-DW
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 12:58:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWf6e-0002d8-P4; Wed, 14 Apr 2021 14:58:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWf6e-0000Vu-Fl; Wed, 14 Apr 2021 14:58:56 +0200
Date: Wed, 14 Apr 2021 14:58:56 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20210414125856.GW19819@pengutronix.de>
References: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
 <20210414095427.GS19819@pengutronix.de>
 <20210414140736.bf2d10eed1149d407434575a@gmail.com>
 <5b740bc2-c0a2-2592-557b-f5da2540025f@pengutronix.de>
 <20210414155443.f6f4c5b2c125a6581a7b5f75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414155443.f6f4c5b2c125a6581a7b5f75@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:57:47 up 55 days, 16:21, 106 users,  load average: 0.62, 0.35,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_055858_474554_E8EFA860 
X-CRM114-Status: GOOD (  24.63  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RISC-V: erizo: large gap between bss and stack regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 14, 2021 at 03:54:43PM +0300, Antony Pavlov wrote:
> On Wed, 14 Apr 2021 13:20:44 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> > On 14.04.21 13:07, Antony Pavlov wrote:
> > > On Wed, 14 Apr 2021 11:54:27 +0200
> > > Sascha Hauer <sha@pengutronix.de> wrote:
> > > 
> > >> On Wed, Apr 14, 2021 at 08:54:22AM +0300, Antony Pavlov wrote:
> > >>> Hi Ahmad!
> > >>>
> > >>> Here is the iomem command output on erizo:
> > >>>
> > >>> barebox:/ iomem
> > >>> 0x00000000 - 0xffffffff (size 0x00000000) iomem
> > >>>   0x80000000 - 0x807fffff (size 0x00800000) ram0
> > >>>     0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
> > >>>     0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
> > >>>     0x80600000 - 0x80636b1f (size 0x00036b20) barebox
> > >>>     0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
> > >>>     0x8063ec9c - 0x80643147 (size 0x000044ac) bss
> > >>>     0x807e0000 - 0x807fffff (size 0x00020000) stack
> > >>>   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
> > >>>   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
> > >>>   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
> > >>>
> > >>> I see large unused region between bss and stack regions (>1600 Kbytes).
> > >>
> > >> That's normal. The compressed barebox knows the size of the uncompressed
> > >> barebox, but it doesn't know the size of the bss segment above it. For
> > >> that reason we have a very pessimistic estimate of:
> > >>
> > >> #define MAX_BSS_SIZE SZ_1M
> > >>
> > >> The barebox binary itself is then aligned to the previous 1MiB
> > >> boundary, so barebox usually starts at 2MiB below the end of SDRAM.
> > >> That's a bit wasteful for boards with very little memory like the erizo,
> > >> but that's how things are at the moment.
> > > 
> > > Can we make it configurable via Kconfig?
> > 
> > Or even better: Could we easily add to the piggy data the size of bss
> > it contains?
> > 
> 
> On MIPS we already have:
> 
>    bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;

When running in the decompressor that gives you the bss size of the
decompressor binary, but we need the bss size of barebox proper.

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

