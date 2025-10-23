Delivery-date: Thu, 23 Oct 2025 09:51:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBq6x-00At9a-2p
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 09:51:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBq6x-00005J-9u
	for lore@pengutronix.de; Thu, 23 Oct 2025 09:51:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sNE2pSCOOjU9VTGTiyhIzjdm6u8LH7QVHjAiIbgBR0E=; b=tqK3z42WVfLhmpb/8FyWermnwI
	Mw+y7HNkGQJm0KCGzFfgaDhspPJOi/L0oeLofW2noc5Mhzqtp7E0g3uGGVO7PQKoSq3ritB2/LeYE
	f0XVZQ+usJgRJy7Zdw4HLo8E+OdJ6e62JdcX+dQiWU55WniLLEAlUGACkorI1Gky92X85x1h2zq0c
	D2D915Dra366GkvZ+ukjmwQEg2EJUtEXCSugBc7DDT1DKIfXnokpGrYW+TyxGZi9Lqc+Nw/ocMh4d
	qqpgcFKzxgPCV3myomhxMJEOAmtWqjXbcJXPmGF32QmYdXAUKLB/SukHIzdqxouPXgNqrTSvzq+Fb
	AviWxg1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBq6U-00000005Qjl-2jkJ;
	Thu, 23 Oct 2025 07:51:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBq6R-00000005Qhg-3fPo
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 07:51:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vBq6P-0008QP-0K; Thu, 23 Oct 2025 09:51:17 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vBq6O-0051Pq-2B;
	Thu, 23 Oct 2025 09:51:16 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vBq6O-00D18G-1t;
	Thu, 23 Oct 2025 09:51:16 +0200
Date: Thu, 23 Oct 2025 09:51:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
Message-ID: <aPnedOwUjUzz0WlI@pengutronix.de>
References: <20251022052508.1368520-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251022052508.1368520-1-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_005119_916610_7CABD4CB 
X-CRM114-Status: GOOD (  20.25  )
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
Subject: Re: [PATCH 1/3] test: Containerfile: add qemu-efi-aarch64.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 22, 2025 at 01:25:06AM -0400, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> this will provide the uefi bios binaries to used for efi aarch64
> payload test.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  test/Containerfile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/test/Containerfile b/test/Containerfile
> index c6c3c57596a6..3d277a147ad1 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -40,6 +40,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
>  	qemu-system-misc \
>  	qemu-system-mips \
>  	qemu-system-x86 \
> +	qemu-efi-aarch64 \
>  	qemu-system-common \
>  	ovmf \
>  	python3 \
> @@ -63,7 +64,7 @@ ENV LLVM_VERSION=21
>  
>  RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
>  	&& wget https://apt.llvm.org/llvm.sh \
> -	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
> +	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} -n trixie \

We had problems installing LLVM 21 on latest trixie and therefore
downgraded to LLVM 20, see
https://lore.barebox.org/20251022104509.845994-1-a.fatoum@pengutronix.de.

Does this change here have something to do with this?

In any way, this change doesn't seem to be related to installing
qemu-efi-aarch64, so this should be an extra patch with an explanation
why it's needed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


