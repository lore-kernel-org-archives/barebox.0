Delivery-date: Tue, 23 May 2023 09:13:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MCw-00AU9g-3x
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:13:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MCt-0001bT-O7
	for lore@pengutronix.de; Tue, 23 May 2023 09:13:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z6qllwI+sCeIHS5s6oYCgx1CI9I+rlrE5qnzujBfPe0=; b=oEBz2geGRCZQclR/LvYooESW0o
	mXUmB+CZxInGwovsfzstCtvYqnndIIf1ik4PZO+R3S+Dpx6ErY76xGNux3sUTe1LN9qQT2UR0gMQ9
	B3vdPIoa3fMxnj0+DSKcvMdPZEAQFFnIecueF73eLM7X1+vZG9AthbYwC9Q+cmRyZQFC8fHPWLJTk
	bK9NNcHTdRO0ilrhJbjNeoZN2K7uo1f7MfXZ6wKS/1i53NqUigXSYTuOlmtNGST9HoOXRJGLpjsz8
	NPudsX+OrUkSL12OJ/PUvvhlAAQb+GanMbnIeiQcCHKR6cjaMurz/lRX/hjkNafebyPTlk0FIjCYA
	ecM7IeVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1M8l-009AGv-0t;
	Tue, 23 May 2023 07:09:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1M8f-009AFS-0G
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:09:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1M8a-00011W-S6; Tue, 23 May 2023 09:08:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1M8Z-00026S-TD; Tue, 23 May 2023 09:08:51 +0200
Date: Tue, 23 May 2023 09:08:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230523070851.GB17518@pengutronix.de>
References: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_000857_117065_1551B4CC 
X-CRM114-Status: GOOD (  19.86  )
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
Subject: Re: [PATCH master 1/3] .clangd: black-list -mabi=lp64 to enable LSP
 for 64-bit ARM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 03:42:08PM +0200, Ahmad Fatoum wrote:
> clangd invoked via Language Server Protocol chokes on -mabi=lp64, which
> we use for ARM64 build. We should eventually fix that by having barebox
> itself compile with clang, but till then, let's drop a .clangd file that
> instructs clangd to ignore this unsupported option. Pointers and longs
> are still 64-bit, presumably because that's the default AArch64 ABI.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

>  .clangd | 2 ++
>  1 file changed, 2 insertions(+)
>  create mode 100644 .clangd
> 
> diff --git a/.clangd b/.clangd
> new file mode 100644
> index 000000000000..58e83cd2871a
> --- /dev/null
> +++ b/.clangd
> @@ -0,0 +1,2 @@
> +CompileFlags:
> +  Remove: -mabi=lp64
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


