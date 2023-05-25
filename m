Delivery-date: Thu, 25 May 2023 08:49:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q24nF-00DRR0-U6
	for lore@lore.pengutronix.de; Thu, 25 May 2023 08:49:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q24nD-0006GW-FD
	for lore@pengutronix.de; Thu, 25 May 2023 08:49:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dFqya9N/p231YsTeK+91vxDIFEVUNOUharMdXPQ0o2M=; b=20JWe3hcTmQKOS3iWv8SbpnRXy
	f/IH5KoqeGcLyOQs2D34jIJpocyeaA7Fhhvh2sn1KPafs5c4r50lspW3xyZuSNw/AOpcf0TfVOC0g
	4YP/a18sFPrD93k8V4x8GCuxu7DKy8fWGGCyx0zd0K/9l4CAeWigG0kK/gvTTPZLMZS28m4S0kWE/
	nmZb893KJny6rgJt26jbF1OLaD0tahe1E3tFySdTxAHmm7rNQ7X9gyyKwO91Wqa3GQQfQW46JgkiD
	SfI8+sfT+dT3H2KYdSYq5d/sdNjQH2lpNwtOVhpofD/lOoOvRha/YPFA6NLPFNDzo/PIM8JZ0ktEs
	+fhhVarg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q24lj-00FiE7-1G;
	Thu, 25 May 2023 06:48:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q24lf-00FiCF-1I
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 06:48:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q24lZ-00066O-G8; Thu, 25 May 2023 08:48:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q24lZ-0005wv-8a; Thu, 25 May 2023 08:48:05 +0200
Date: Thu, 25 May 2023 08:48:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230525064805.GJ17518@pengutronix.de>
References: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_234811_438354_72855FBE 
X-CRM114-Status: GOOD (  18.48  )
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
Subject: Re: [PATCH 0/7] ARM64: crypto: add Crypto Extensions accelerated SHA
 implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 07:30:37AM +0200, Ahmad Fatoum wrote:
> This shaves 400ms of a FIT image boot that uses sha256 as digest for
> the images referenced by the selected configuration:
> 
>   barebox@imx8mn-old:/ time bootm -d kernel-a
>   Dryrun. Aborted.
>   time: 998ms
> 
>   barebox@imx8mn-new:/ time bootm -d kernel-a
>   Dryrun. Aborted.
>   time: 601ms
> 
> We also use SHA256 to verify barebox proper when in high assurance boot,
> but that still uses the software implementation.
> 
> Ahmad Fatoum (7):
>   crypto: digest: match driver name if no algo name matches
>   test: self: add digest test
>   include: sync <linux/linkage.h> with Linux
>   ARM: asm: implement CPU_BE/CPU_LE
>   ARM: asm: import Linux adr_l/ldr_l assembler.h definitions
>   crypto: sha: reorder struct sha*_state into Linux order
>   ARM64: crypto: add Crypto Extensions accelerated SHA implementation

Applied, thanks

Sascha

> 
>  arch/arm/Makefile                |   3 +-
>  arch/arm/crypto/Makefile         |   6 +
>  arch/arm/crypto/sha1-ce-core.S   | 149 ++++++++++++++
>  arch/arm/crypto/sha1-ce-glue.c   |  93 +++++++++
>  arch/arm/crypto/sha2-ce-core.S   | 156 +++++++++++++++
>  arch/arm/crypto/sha2-ce-glue.c   | 121 ++++++++++++
>  arch/arm/include/asm/assembler.h | 230 ++++++++++++++++++++++
>  arch/arm/include/asm/neon.h      |   8 +
>  commands/digest.c                |   2 +-
>  common/Kconfig                   |   6 +
>  crypto/Kconfig                   |  21 ++
>  crypto/digest.c                  |  11 +-
>  include/crypto/sha.h             |  10 +-
>  include/crypto/sha1_base.h       | 104 ++++++++++
>  include/crypto/sha256_base.h     | 129 +++++++++++++
>  include/linux/barebox-wrapper.h  |   1 +
>  include/linux/linkage.h          | 321 ++++++++++++++++++++++++++++---
>  include/linux/string.h           |  20 ++
>  test/self/Kconfig                |   6 +
>  test/self/Makefile               |   1 +
>  test/self/digest.c               | 194 +++++++++++++++++++
>  21 files changed, 1553 insertions(+), 39 deletions(-)
>  create mode 100644 arch/arm/crypto/sha1-ce-core.S
>  create mode 100644 arch/arm/crypto/sha1-ce-glue.c
>  create mode 100644 arch/arm/crypto/sha2-ce-core.S
>  create mode 100644 arch/arm/crypto/sha2-ce-glue.c
>  create mode 100644 arch/arm/include/asm/neon.h
>  create mode 100644 include/crypto/sha1_base.h
>  create mode 100644 include/crypto/sha256_base.h
>  create mode 100644 test/self/digest.c
> 
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


