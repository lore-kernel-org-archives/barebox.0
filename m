Delivery-date: Sat, 02 Oct 2021 10:55:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWaoG-0002Ed-T4
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 10:55:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWaoG-0007n8-1j
	for lore@pengutronix.de; Sat, 02 Oct 2021 10:55:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nfiCb82XsNwIvkD154e2DVXcJ3innFt+ANBjFIia7ew=; b=rqvmSpQP202jnRyVAVRyniKD8o
	N1eNcDS6X13kisRinQRj967pdQzdeZq3VeDLngFOz5EL5vLr4dfI0YJAlQD47tCrdQG/OsHTQzswe
	k9i2ROth7KxxSiiy0fAL612IZDFDEl8iEkOKpLmTiSV2F+B45UBaRVdxgcRRQrK4Vvze1p/yjw53C
	gEfAR7VIwBw+AyTwKKgNl9plPsX88E05C8HauhVK4hAB6k+bM8uBski1Ub7UaBN7KSgL77p6Ksb2R
	iSUtBJybs4PUXRkOYOkpgP380CPmO4jYnfpD2CPqPdkfkpw2N9dbSvTwGkadzxIHyrcAFT0OBJj6/
	YPpOCNMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWamx-001xiB-I7; Sat, 02 Oct 2021 08:54:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWamr-001xhZ-PM
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 08:54:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWamq-0007Zx-4y; Sat, 02 Oct 2021 10:54:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWamp-0007SZ-8m; Sat, 02 Oct 2021 10:54:27 +0200
Date: Sat, 2 Oct 2021 10:54:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20211002085427.GA28453@pengutronix.de>
References: <20210917121152.16033-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917121152.16033-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:54:11 up 226 days, 12:18, 93 users,  load average: 0.20, 0.20,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_015429_853051_81B750A1 
X-CRM114-Status: GOOD (  20.02  )
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
Subject: Re: [PATCH v3] ARM: document arm_setup_stack() pitfalls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 17, 2021 at 02:11:52PM +0200, Ahmad Fatoum wrote:
> Many arm32 board entry points use arm_setup_stack() to set up
> the stack from C code. This necessitates using __naked, which
> probably has been our most frequent cause of misscompiled C code.
> 
> GCC is quite clear that:
> 
>   Only basic asm statements can safely be included in naked functions
>   While using extended asm or a mixture of basic asm and C code may
>   appear to work, they cannot be depended upon to work reliably and
>   are not supported.
> 
> But some boards use it anyway, because it's nice to avoid writing
> assembly. Reading generated assembly to spot compiler miscompilation
> isn't that nice though, so add some documentation, comments
> and compiler diagnostics to hopefully reduce future porting effort.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - fix typos (Uwe)
>   - use better matching CONFIG_CPU_64 instead of CONFIG_CPU_V8
>   - clarify 'bad' stack manipulation
> v1 -> v2:
>   - fix commit message title

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

