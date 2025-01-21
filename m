Delivery-date: Tue, 21 Jan 2025 10:42:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taAls-002b8S-0F
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 10:42:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taAls-0006zl-4K
	for lore@pengutronix.de; Tue, 21 Jan 2025 10:42:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ndPF1Y3goCaOl7SNUWSGTJCEixxSzF/NBPOFqAtNV90=; b=rew3euil3G9NH333pDkFq/1tGn
	aoz+xn7sd5Gv/kfWEwiHq+aMKJBujBPvmvGfeCfxzJoOv7fxWcdDPYYc5dRUki30v4F9+NavgMZuD
	DWnYmp9/AnrKjEKWHYPEGOlZJqZO+atl99j0XXRnvek+NA9/PZ50xqgFhe8oy7BlwMqsll9fVr9ZH
	yhydy+24W1ujWD/gq/8mDKYBiWTP2F1ICFrPmdBu2WUImCrPEd/cnhfDwm1SjTGBWdlmx/V0dqPo+
	Q60Y+SAHuB06T9rk1ShSMVxvg0ChByV38o6z6vCgF9452QEDy/81BVDbFQCu77jnsXZZPDY/ZvdIt
	aZnouSlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taAlJ-00000007RVt-0aDU;
	Tue, 21 Jan 2025 09:41:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taAiV-00000007R7Z-1AT4
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 09:38:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1taAiT-0006C5-QU; Tue, 21 Jan 2025 10:38:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1taAiT-0015LV-22;
	Tue, 21 Jan 2025 10:38:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1taAiT-005qWK-1l;
	Tue, 21 Jan 2025 10:38:37 +0100
Date: Tue, 21 Jan 2025 10:38:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z49rHTam9hL1ikwU@pengutronix.de>
References: <20250116140924.298889-1-a.fatoum@pengutronix.de>
 <20250116140924.298889-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116140924.298889-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_013839_317496_08A55C7E 
X-CRM114-Status: GOOD (  21.08  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] kbuild: allow overriding compression tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 16, 2025 at 03:09:24PM +0100, Ahmad Fatoum wrote:
> barebox proper is usually compressed and this introduces a dependency on
> an outside host tool depending on the chosen compression algo.
> 
> So far, we expected the utility to be in PATH, but to allow build
> systems to place it elsewhere, let's copy what Linux does and adopt a number
> of Make variable that can be overridden from the outside.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Makefile             |  6 ++++++
>  scripts/Makefile.lib | 12 ++++++------
>  scripts/xz_wrap.sh   |  5 +++--
>  3 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 3487aba201b9..81cab701230e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -440,6 +440,12 @@ PYTHON3		= python3
>  CHECK		= sparse
>  MKIMAGE		= mkimage
>  BASH		= bash
> +KGZIP		= gzip
> +KBZIP2		= bzip2
> +KLZOP		= lzop
> +LZMA		= lzma
> +LZ4		= lz4
> +XZ		= xz

Added missing

export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ

to make this patch work.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


