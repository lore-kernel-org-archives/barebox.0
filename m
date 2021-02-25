Delivery-date: Thu, 25 Feb 2021 14:04:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFGJK-0007BE-MW
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 14:04:06 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFGJJ-000087-Tc
	for lore@pengutronix.de; Thu, 25 Feb 2021 14:04:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SfVaoONWBbkzqnevdeJL0B1RCNL8nGsRSDCVeykaaJY=; b=AmKmBoOtuYk5uyIwSpSYcWkxp
	phxWFrGN0So5yPRYkIYcXJH4EDoKxSrReST/J28Nq9s1/osbd2JpHsuRJ88q0bCPoMbQnVXVu+/zj
	OYO4fdkPHYdmNpAFhTbuh5WgyfoL3rBiiYPSZJ7Gxfm/qhP/PufP8E6hx21IZdu/Z1aGC/sUJTtpc
	c3VDMYyrcboTXG510pdD/lgnjUX4g+D0YQfY5Z0DPbylRDeOh6CBOGzAT9cYpQ6nELxqXEs+VP4gC
	/IqPpfgdD2Z15D35zm5i6D+ptM+6gzmOq9LRHJO6yuQ96ozLvtuXYJL0yj/p/RMIWhMkTfQs03NX+
	rtC1lfedw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFGIA-00085o-Qh; Thu, 25 Feb 2021 13:02:54 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFGI7-000858-2c
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 13:02:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id C106B1A26E3
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2021 13:02:47 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLKVMTRU;
 Thu, 25 Feb 2021 13:02:47 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 878BF1A26BE;
 Thu, 25 Feb 2021 13:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 560CE27E05BE;
 Thu, 25 Feb 2021 14:02:47 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id STo3WrUuOuPz; Thu, 25 Feb 2021 14:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D490527E0840;
 Thu, 25 Feb 2021 14:02:46 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D490527E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614258166;
 bh=fJ4i4QbGdXHjnSolc8rTJT5lsts9PhD4VXa5uvWuU0k=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=GHiCoP8ld1o3GmLQpafmT6rRskIPMSk9PK8pvfuz4Qd0Vf2BijPM2F+mGzktrDHHU
 LdwevYP3y6Y/z9IsYP1UB8j9EaFR6TTGnSvNw+/Z/P7GivH2/V0X7YLRgjLzF6cLbl
 pkGfx5OBcSybrr0lsMkBgwNKKguBs+TMzNteIllA=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id MxxmS7zDFJ3C; Thu, 25 Feb 2021 14:02:46 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B769427E05BE;
 Thu, 25 Feb 2021 14:02:46 +0100 (CET)
Date: Thu, 25 Feb 2021 14:02:40 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Stafford Horne <shorne@gmail.com>
Message-ID: <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210225124500.GA365039@lianli.shorne-pla.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_080251_336546_A3EFBC83 
X-CRM114-Status: GOOD (  13.43  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>,
 Barebox List <barebox@lists.infradead.org>, Sascha Hauer <sha@pengutronix.de>,
 shorne@opencores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 25, 2021 at 09:45:00PM +0900, Stafford Horne wrote:
> Hello,
> 
> I am the maintainer of most OpenRISC things right now.  I would be happy to
> help, but I don't really use barebox right now.  Most of my deployments I use
> with litex FPGA SoC's that has its own bootloader.
> 
> That said, we have a setjmp/longjmp implementation in our glibc port which I
> have been testing for upstreaming lately.
> 
>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/setjmp.S
>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/__longjmp.S
> 
> I had a look at the barebox docs and openrisc port, it seems like there is
> support for our standard platform, or1ksim, which is the same as my de0-nano
> fpga board/soc and qemu.  I should be able to make use of this.
> 
> Is there a branch where you are doing the green thread work?  I could add and
> test the OpenRISC implementation.
Hi,

I've done this yesterday, I've push a branch[1] that has the green
thread paches applied (except patches on usb mass storage gadget).
https://github.com/jmaselbas/barebox/tree/test_setjmp 

To test greenthread your can run the `poller -c` command in barebox's
prompt. To do you you'll need to enable CONFIG_POLLER_YIELD and define
CONFIG_HAS_ARCH_SJLJ

Best,
Jules
 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

