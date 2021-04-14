Delivery-date: Wed, 14 Apr 2021 11:55:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWcFY-0001b4-5m
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 11:55:56 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWcFX-0007cS-Ev
	for lore@pengutronix.de; Wed, 14 Apr 2021 11:55:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HDM0+bK5E9Moc/fQbwmkaXaLE06izJ4zsiOoJ1pYbBg=; b=nVkudz4s+MHOO4XN8v7E1EDnO
	cyRk4+3aqaM/p9AA/8LDme1nwwBWK1R5q/A5T/n0rFW1u4a8EjkJTjAn/3Rkl58KJJC2Dd5XKoIAF
	jtudlmD/70DHRLticbQM8Q7pumDM1cc79i2L1IMBrLDhPql5CmqT01vhfdkJmtSdbk3spbSp7sP2k
	ZOU4OzSNK7eU1cuuMNNX3Ockvzg8WJh+WLEU4nx4p+jbKkHoL8Yx/mMqaGyTisbYIZuSCjMoH2OfZ
	1oauIqvk+P6qW5Y3DMVy7NT1s+10XN9COBU7an81akpuNKla9EfrUmj+b0Jmg13+4e+Cbsubb3hRB
	upUh7sc5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWcEI-00CCg0-Ei; Wed, 14 Apr 2021 09:54:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcEC-00CCfo-FV
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 09:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Tn7Et5X0jBQjLwJ8N9aj28m4n1snpdvTo9MvimLAJXE=; b=bs8h29OuKo00+vqR0wvXbKW+Qg
 Pp+AkcvZEM0u8po42g/NNw6jMEKDO2BfQEDTorB9MqBLI2qjHNevsdWzYaLczHlNf0nEZj/BBs6J4
 1IX/mO8yLi4LIYn1hlEPEdqCI+kVrkH8gWU+KJg1DfqHHmXwD2F85w7OfdQfuT3pb7f+2QBcwYAoV
 CdrWeI0aCfdwpnYu2z38NPS1cqLrmuJ8+nAbnga+81R4hicml6cjN3fq5WEFSWqXCV8RMa1X2QF3m
 cN2m7pqoDPjpJN0tWY0s5Jzi4Y4+XBiz/SJo0ZKjajXTUEjvJcRuR7uKa8QRzyhIH2ShFxLuKkNSP
 MDhAGLNw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcE9-007fN2-Tp
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 09:54:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWcE8-0007IY-5X; Wed, 14 Apr 2021 11:54:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWcE7-0005oO-Lc; Wed, 14 Apr 2021 11:54:27 +0200
Date: Wed, 14 Apr 2021 11:54:27 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210414095427.GS19819@pengutronix.de>
References: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:48:42 up 55 days, 13:12, 105 users,  load average: 0.03, 0.08,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_025429_980942_994BF698 
X-CRM114-Status: GOOD (  17.14  )
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

On Wed, Apr 14, 2021 at 08:54:22AM +0300, Antony Pavlov wrote:
> Hi Ahmad!
> 
> Here is the iomem command output on erizo:
> 
> barebox:/ iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x80000000 - 0x807fffff (size 0x00800000) ram0
>     0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
>     0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
>     0x80600000 - 0x80636b1f (size 0x00036b20) barebox
>     0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
>     0x8063ec9c - 0x80643147 (size 0x000044ac) bss
>     0x807e0000 - 0x807fffff (size 0x00020000) stack
>   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
>   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
>   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
> 
> I see large unused region between bss and stack regions (>1600 Kbytes).

That's normal. The compressed barebox knows the size of the uncompressed
barebox, but it doesn't know the size of the bss segment above it. For
that reason we have a very pessimistic estimate of:

#define MAX_BSS_SIZE SZ_1M

The barebox binary itself is then aligned to the previous 1MiB
boundary, so barebox usually starts at 2MiB below the end of SDRAM.
That's a bit wasteful for boards with very little memory like the erizo,
but that's how things are at the moment.

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

