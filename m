Delivery-date: Mon, 20 Oct 2025 14:59:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTq-009trL-2U
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTj-00013U-3V
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GTyH0wsHXeQsP8pfniKO8+tFI1J++CvAlum78HVbDiE=; b=AKUaVUKXf1J1CjCnoZU8kCJB4n
	KzSzbile+3sC/OMUQiaI4I09BF6Jvh5L0MRZpTVuOtHijtZx7ceKZlBZckWJedcPjZh5x/9RrsNs+
	xRRP5aIUv+4SAsS8gcJl76Zd/FxMkTpG2nRhsZuFReKWjS7gm2bkzYKLKK8QZ6OWx4O0yrlhRKdPa
	9Kh5r2jQTs/5TLSgkPSNYf4nZ2P3gu+RtUjHLOu3Dj+CqnuMkiHdXFD+nbyWlxJ3oO6Pl894h3QGL
	3ivU4aXkmzDnNT0SDtWZDraaVs+CbSno9cKx+LwQdy/JCZjqjyQBdCrj5uHfAF4zLU4rzgirkN6JY
	yDNWmUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSu-0000000DfWf-1ocE;
	Mon, 20 Oct 2025 12:58:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSm-0000000DfIw-3KE2
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=GTyH0wsHXeQsP8pfniKO8+tFI1J++CvAlum78HVbDiE=; b=ESJALuVsx7XA60hHson1Qz6aFm
	9k5Ldk4Zvn6VHR1UoxbOFmdryWwkNnq5NCY+ezzLhrvhFd4J0tsXWbDuZFPfbJWk6aUgX83ekBJ5L
	MpYdP89wgHzQQKDT/gOB+gfpjvJbbs1Ay9aYrIKCbXCG22DgDAYFJVr+8S6WJp2zzUQRaqSbKelW5
	i2V9h+HYAgTIvgBazK1FZfjUVGsOaF7SkUuZ04xFY+A22r2p90XRfJlW1SOGrVEHH7YZZCQ92aa0L
	Ja+ddmBA2/F5HGMupVxnO+018o9ZJdOQt/8GSq4D8lY9alOAgLJXtQQHK8ll4LkwxPFoNmAiNIxP0
	j+S+gh5w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSh-00000007hb8-1dax
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApSd-0008D0-1g
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAmRn-004WXy-30;
	Mon, 20 Oct 2025 11:44:59 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAmRn-007Hlz-2h;
	Mon, 20 Oct 2025 11:44:59 +0200
Date: Mon, 20 Oct 2025 11:44:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aPYEm6Ese37JVqJd@pengutronix.de>
References: <20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135808_699112_B8015250 
X-CRM114-Status: GOOD (  15.10  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gitignore: ignore /build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 17, 2025 at 12:22:13PM +0200, Jonas Rebmann wrote:
> Documentation such as Documentation/boards/kvx.rst and tooling such as
> conftest.py suggests /build is a good choice for build output directory.
> 
> Therefore, include it in .gitignore.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  .gitignore | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/.gitignore b/.gitignore
> index 98bb4dac89..32d54b8fbe 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -53,6 +53,7 @@ policy-list
>  /TAGS
>  /barebox*
>  /System.map
> +/build

I have nothing against adding this here. I just wondered why my build
directories don't show up in git status and realized the barebox
toplevel Makefile already creates a .gitignore file in the build
directory:

	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore

Any idea why this doesn't happen in your case?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


