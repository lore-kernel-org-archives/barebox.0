Delivery-date: Wed, 24 Feb 2021 09:50:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpsn-0004gU-4V
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:50:57 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpsm-0007rJ-8I
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:50:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KIa06qPbVzopomSJUyBpkHoab0+vIa7aiSA+rrzUukI=; b=tf+ICequoZPHr7mPa0vqgBe9T
	VpLxu/rdE453avMx+VwkQrpxUR02ZZDJUp/d0OxNWw8UATnJ9SpLnQR+RFm/SJ33uKoTkuMZ2HNaw
	qrNGnzB4k56WUMr/Gj5Gs0sLSzdkHQwta/lf5pxuD4OJTdSpsa/edEnKoWLBa8TgfiMTME0VNC2fo
	mvMpYDDcYM/BXZ2PYaPczUHuYH0jgaEcgC4l9f1+yGC1+bWc5ZJQVJr0GualrM7gwTIiiZy0P2+ko
	06ZbDFYfv2+jfmJN11RwiMFZdtl08FmqP/CXjcw89qdREO3D70PbPK7pAAnndCNS/aV0cIJxxUl4q
	qDvwMfj1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEprk-0006WE-Rq; Wed, 24 Feb 2021 08:49:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEprg-0006V2-45
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:49:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEprf-0007Vt-7S; Wed, 24 Feb 2021 09:49:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEprd-00069F-IJ; Wed, 24 Feb 2021 09:49:45 +0100
Date: Wed, 24 Feb 2021 09:49:45 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20210224084945.GI5549@pengutronix.de>
References: <20210223072427.166689-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210223072427.166689-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:49:37 up 6 days, 12:13, 61 users, load average: 0.01, 0.17, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_034948_219540_4A0007B4 
X-CRM114-Status: GOOD (  23.48  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: add '-fno-stack-check' to barebox build
 options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 23, 2021 at 08:24:26AM +0100, Ahmad Fatoum wrote:
> This ports over Linux commit 3ce120b16cc5 ("kbuild: add
> '-fno-stack-check' to kernel build options"):
> 
>   Author:     Linus Torvalds <torvalds@linux-foundation.org>
> 
>     kbuild: add '-fno-stack-check' to kernel build options
> 
>     It appears that hardened gentoo enables "-fstack-check" by default for
>     gcc.
> 
>     That doesn't work _at_all_ for the kernel, because the kernel stack
>     doesn't act like a user stack at all: it's much smaller, and it doesn't
>     auto-expand on use.  So the extra "probe one page below the stack" code
>     generated by -fstack-check just breaks the kernel in horrible ways,
>     causing infinite double faults etc.
> 
>     [ I have to say, that the particular code gcc generates looks very
>       stupid even for user space where it works, but that's a separate
>       issue.  ]
> 
>     Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
> 
> I am porting it, because it may become more acute with the incoming
> support for multiple stacks (via initjmp).
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---

Applied, thanks

Sascha

>  Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index f3c85cff9430..fa7fbbeb35f0 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -622,6 +622,9 @@ KBUILD_CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
>  # disable invalid "can't wrap" optimizations for signed / pointers
>  KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
>  
> +# Make sure -fstack-check isn't enabled (like gentoo apparently did)
> +KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
> +
>  KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
>  
>  # Align the bit size of userspace programs with the kernel
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

