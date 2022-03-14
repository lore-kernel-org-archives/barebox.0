Delivery-date: Mon, 14 Mar 2022 10:04:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nTgdK-002hdT-3z
	for lore@lore.pengutronix.de; Mon, 14 Mar 2022 10:04:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nTgdI-0004bJ-Mp
	for lore@pengutronix.de; Mon, 14 Mar 2022 10:04:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKlxpr/2x3izgC5/XinJAGRsceXHZdFXOa6zGP8JuSc=; b=fTzOl4pXk+RDfS
	q93yez0T/FxRsvlDJ0VqNhJhYnKPJT5mJiefPnTpT0TlSoTd9AtQt564Eak8bvzMWAqXFIpCN4k7D
	o4zyMgOSmS8neP3Ys8veb1V42RM64pyhe4d874ABhMcQ0aaqQVmDVBhk5nGhzKtcNHZQ17mizzENN
	AIvunKC9Xen+F//2uEJy+xxvBrKCuyt3u/PsZogwYXLiXH3uNl42NxZ9UM/CJSQR67lOjA5P1Ep6C
	9N18cf5AbI0Zhezd7j9VFa7w8AlJ1z2uo5BONdgkqbM6D6BUJMHnEXQyuL00d6BubDVLyJdQ7l7bH
	DXH6aHN319ivwW/35oCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTgbf-004h2e-SP; Mon, 14 Mar 2022 09:03:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTgbX-004h15-LW
 for barebox@lists.infradead.org; Mon, 14 Mar 2022 09:03:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nTgbW-0004QN-At; Mon, 14 Mar 2022 10:03:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nTgbV-0007NX-Pr; Mon, 14 Mar 2022 10:03:01 +0100
Date: Mon, 14 Mar 2022 10:03:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220314090301.GN405@pengutronix.de>
References: <20220310173253.de205299b310b63f0094730e@gmail.com>
 <20220310204206.31942-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220310204206.31942-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:02:46 up 93 days, 17:48, 88 users,  load average: 0.64, 0.41, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_020303_744918_F9FBC208 
X-CRM114-Status: GOOD (  27.78  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] MIPS: fix optimised memset returning garbage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 10, 2022 at 11:42:06PM +0300, Denis Orlov wrote:
> There is a subtle bug in arch/mips/lib/memset.S, used if option
> MIPS_OPTIMIZED_STRING_FUNCTIONS is enabled, which results in not writing
> the correct return value into v0 register if the value to fill memory
> with is 0.
> 
> The bug stems from a missing '.set noreorder' directive before the first
> beqz instruction. This results in an assembler stuffing a 'nop'
> instruction in the beqz delay slot instead of an instruction writing the
> return value into v0 register that was supposed to go there. That leads
> to an error that appears when reading memory from SPI Flash and that was
> mentioned here:
> http://lists.infradead.org/pipermail/barebox/2021-June/036557.html
> 
> There are a few ways of fixing this bug. The directive '.set noreorder'
> that shows up a bit later in code could be moved up and placed right
> before the memset label (as it was originally in Linux codebase - see
> a583158c9ce822c96a718fbf877cec1e5f9ad75d). Or, rather, the move and the
> branch instruction could be swapped, thus allowing the assembler to
> properly place move in delay slot (as it is done in Linux now - see
> 68dec269ee29c3abfd09596fbee7e40d875a6ab3) - that is what is done in this
> patch.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  arch/mips/lib/memset.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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

