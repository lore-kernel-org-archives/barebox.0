Delivery-date: Mon, 12 Jun 2023 14:58:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h8O-003qM1-4C
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:58:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h8L-0007Ne-Rf
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:58:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jmUjQ057uua+FSKyErasTEDPsJmeAOJkW3602N4VRXs=; b=RI8EFavbjkJS6EQ3qja562d9DS
	/GiRFfiQNsppLqOBuxYnllBfODHFy7ausUEJmM6PkS5GHPqLqARGVqKGKzi+MF0GAyv+ftB4YQx8n
	u0w/Os9juNxcQ3z2B4AMZDZdalXPLV1isDTOwNUAXoHu5V9otTsulh3+ajTD4tkgziNUnq36h6fRg
	x5NpjJ8FJxfSO0QOgmT25VutS6hEkWMJG2Wuba0gHt1ZvEvVcdFMo+d+WPG5p/qlaCmgxTAF7vQtl
	bqBTE3N8UbSnSjwKXMlKfFF6BsOgxl1Z4R3no4Ayx5L51alFtTLphi+bkF3hK8kul64q3+EbHaZqW
	caRC77cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h7G-0046FU-2w;
	Mon, 12 Jun 2023 12:57:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h7E-0046Eq-17
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:57:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8h7D-0007F4-2T; Mon, 12 Jun 2023 14:57:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8h7C-0005sr-RF; Mon, 12 Jun 2023 14:57:46 +0200
Date: Mon, 12 Jun 2023 14:57:46 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230612125746.GA18491@pengutronix.de>
References: <20230612124728.1080623-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612124728.1080623-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055748_384526_B5D60488 
X-CRM114-Status: GOOD (  19.67  )
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
Subject: Re: [PATCH] test/Containerfile: run wget with no-verbose flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 02:47:28PM +0200, Ahmad Fatoum wrote:
> Container build results in a number of toolchain downloads and default
> wget behavior of updating the progress bar results in a lot of lines
> to wade through when reviewing the log. There's middle ground between
> this and quiet operation in the form of the --no-verbose or -nv flag.
> Make use of it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/Containerfile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/test/Containerfile b/test/Containerfile
> index 8c1f2f893805..224ea2ea4804 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -51,7 +51,7 @@ RUN apt-get update && apt-get install -y \
>  ENV GCC_VERSION=13.1.0
>  
>  # Manually install the kernel.org Crosstool based toolchains
> -RUN korg_crosstool_dl() { wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
> +RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
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


