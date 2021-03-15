Delivery-date: Mon, 15 Mar 2021 09:37:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLij4-0000bL-DY
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:37:22 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLij3-00033J-4a
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:37:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HCOEdnQHoGNUOlQ7mo2/PRLpthmVtY1QmBCTiBQTI2U=; b=mCHACzau5nR/Yd6u6vAJjB+J1
	Gdu9paEYJLllVuY3C4jK5WpIKjTw8oSQYI/++Rz0i2X0f1mkwTVJIolP3/wcFelPTIh3lj/+B8XcC
	rGEfJGlBE4Og1QOm1CCaovN2S/S8PnPxDvQbtzQwodQY8YtLGkEfUmq6NfPWH+4Han18ZTRmdAJRB
	0rWGwdS0NMEYDi85pvZCXQg9I43DMMDZOXwAzBNBkRZy0GWpddwrod8uClohcBNMsogl1sR5fMHTI
	p96uYOR8DoxGLLsK/p7iBZvRvRIYQ6Ep/t/xRLAvPmbJ1/aGTggvQOtNKahjW8KZKfIJIkIMxYmOf
	wAGXzKWrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLihl-00FF2t-8z; Mon, 15 Mar 2021 08:36:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLigh-00FErR-Bk
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:35:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLigg-0002SS-MJ; Mon, 15 Mar 2021 09:34:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLigf-0006ht-U3; Mon, 15 Mar 2021 09:34:53 +0100
Date: Mon, 15 Mar 2021 09:34:53 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>,
 Peter Korsgaard <peter@korsgaard.com>
Message-ID: <20210315083453.GK23724@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:32:56 up 25 days, 11:56, 79 users,  load average: 0.06, 0.20, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_083456_082746_DD26E1F3 
X-CRM114-Status: GOOD (  17.15  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/16] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 10, 2021 at 09:47:44AM +0100, Ahmad Fatoum wrote:
> Current state of CONFIG_HAS_ARCH_SJLJ
> 
>     [x] arm 32-bit (Ahmad)
>     [x] arm 64-bit (Sascha)
>     [x] mips (Sascha)
>     [x] powerpc (Sascha)
>     [x] riscv (Sascha)
>     [x] sandbox (Ahmad)
>     [-] nios2 (Removed; Sascha)
>     [x] x86 32-bit (Ahmad)
>     [x] x86 64-bit (Ahmad)
>     [x] openrisc (Stafford)
>     [x] kvx (Jules)
> 
> Legend: [-] arch removed, [x] implemented
> 
> Changes since v2:
>   - Reworked bthread_reschedule(): Threads now always schedule the next
>     thread in the runqueue. Simplifies code and saves context switch back
>     to scheduler
>   - Removed assert_command_context yield. Will need further rework until
>     it's usable, so just warn for now like with pollers
>   - Added resched() to collect the reschedule bits in one place
>   - Migrate LED poller as an example
>   - Rework bthread command to use API better
>   - Split up commits for shorter, reworked, commit messages
>   - Fixed poor English and copy-paste errors (Peter Korsgaard)
>   - Marked RISC-V and MIPS CONFIG_HAS_ARCH_SJLJ explicitly 32-bit only
>     (Peter Mamonov)
>   - Added x86 implementations (tested on EFI x86_64 and i386 sandbox)

Applied, thanks

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

