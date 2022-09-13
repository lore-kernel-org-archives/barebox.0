Delivery-date: Tue, 13 Sep 2022 10:10:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY0zq-003P6b-2G
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:10:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY0zo-0008Sx-8M
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yPfOP43unC5jLWi0IHC2+WFNwNYnC0OG4Up5dB9xrw0=; b=gKJTinI9/z4fkfnxgJY7FQS5Zo
	MusMZVVI7l0joSS1B5BVceD5X0xIbyATObzjOTsAk+5HlbQp6IzmduDo42WHZGLgxWn+7GXPGjPqq
	RzHUXw+/hh3kZFN7AtyMDUnUm+xbi1ukPr3BjBib3D37PPrztvM8HgSDzf/Vm+1vb02BFR1uCIwgz
	BFnx/wQsyoFkrwxSZudFQvgUfJ4N0ENp2q0URJOUVO2J2awJQD24kab4aK6amo5sexRxNY7iMPhyF
	AIBgXTaKam0ms2fkFH66eqy9Quqhksa+qM/aNBFa/EWiUJLcWLVYHlmNG4beKgFOKF2untNt43PnQ
	VoHqlaBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY0yS-0045OZ-5F; Tue, 13 Sep 2022 08:08:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY0yF-0045ID-AG
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:08:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY0yE-0008Jn-3B; Tue, 13 Sep 2022 10:08:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY0yD-0003Rh-53; Tue, 13 Sep 2022 10:08:37 +0200
Date: Tue, 13 Sep 2022 10:08:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org,
	Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Message-ID: <20220913080837.GG6477@pengutronix.de>
References: <20220912085047.84819-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220912085047.84819-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_010839_483740_72B0D66E 
X-CRM114-Status: GOOD (  19.74  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH next] Documentation: filesystems: tftp: fix code blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 12, 2022 at 11:50:47AM +0300, Antony Pavlov wrote:
> The patch fixes these sphinx errors:
> 
>   Documentation/filesystems/tftp.rst:44: ERROR: Error in "code-block" directive:
>     maximum 1 argument(s) allowed, 3 supplied.
>   Documentation/filesystems/tftp.rst:53: ERROR: Error in "code-block" directive:
>     maximum 1 argument(s) allowed, 4 supplied.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/filesystems/tftp.rst | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
> index 8929213d3c4..e88ad3dd4c8 100644
> --- a/Documentation/filesystems/tftp.rst
> +++ b/Documentation/filesystems/tftp.rst
> @@ -42,6 +42,7 @@ the opposite effect.  Performance depends on:
>     100 Mb/s) it had to be reduced to
>  
>     .. code-block:: console
> +
>       global tftp.windowsize=26
>  
>     for example.
> @@ -51,6 +52,7 @@ the opposite effect.  Performance depends on:
>     example, the `fec-imx` driver reserves place for
>  
>     .. code-block:: c
> +
>       #define FEC_RBD_NUM		64
>  
>     packets before they are dropped
> -- 
> 2.37.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


