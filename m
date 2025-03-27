Delivery-date: Thu, 27 Mar 2025 10:13:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjJ9-004ogC-0o
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 10:13:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjJ8-00023W-Kf
	for lore@pengutronix.de; Thu, 27 Mar 2025 10:13:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WvxyMdYVh0YkPaiDPJIXYnOfBlOcCERCyBWQNOBeHe0=; b=gsv9MNs5vbvaBwLpwgdMXn/I7V
	mhFIAQk8j0+DcwD5ttNfiS0y+YtEgk6Vk38hCWqAk+Mw8ToRo6qdMXeD+jP83ajcjYFZTAuVUDbGo
	95jXI5b/rMc7x/8U9Ii611yyp57bfxA+k8T/3uYU5rsOVfAUQQpdNE55wsyBbZJpl4P/D5tr2j7eK
	CNkQQV3zA/JqIhUcXUaHdQbPLBHwYnR7cGETU7Z/Bauwqa44VkeilSUyEvBpz5zIO8F01uZRSpT2J
	fGgh/5RyP/5MNx+1KzrURwvjdaKA8DlbtNk+5y9Racc7C+m7RDRP9z9jRokXNof3/H23K7mYDIwsW
	bpa7lOQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjIf-0000000AXlX-1yEM;
	Thu, 27 Mar 2025 09:13:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjIb-0000000AXkx-3RI3
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 09:13:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjIa-0001tu-FF; Thu, 27 Mar 2025 10:13:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjIa-001u6O-0t;
	Thu, 27 Mar 2025 10:13:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjIa-003Tyt-0g;
	Thu, 27 Mar 2025 10:13:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250327075036.3719261-1-a.fatoum@pengutronix.de>
References: <20250327075036.3719261-1-a.fatoum@pengutronix.de>
Message-Id: <174306679620.830034.5159790038260238960.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 10:13:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_021317_862606_E948E09B 
X-CRM114-Status: GOOD (  15.99  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: pe: fix pe reloc pointer overrun
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 08:50:36 +0100, Ahmad Fatoum wrote:
> Import the fix from U-Boot commit 463e4e6476299b32452a8a:
> 
> | Author:     Aleksandar Gerasimovski <Aleksandar.Gerasimovski@belden.com>
> | AuthorDate: Fri Nov 29 21:09:44 2024 +0000
> |
> | efi_loader: fix pe reloc pointer overrun
> |
> | The fix provided by 997fc12ec91 is actually introducing
> | a buffer overrun, and the overrun is effective if the
> | memory after the reloc section is not zeroed.
> | Probably that's why this bug is not always noticeable.
> |
> | The problem is that 8-bytes 'rel' pointer can be 4-bytes aligned
> | according to the PE Format, so the actual relocate function can
> | take values after the reloc section.
> |
> | One example is the following dump from the reloc section:
> |
> |     bce26000: 3000 0000 000c 0000 0000 0000 0000 0000
> |     bce26010: 7c00 9340 67e0 f900 1c00 0ea1 a400 0f20
> |
> | This section has two relocations at offset bce26008 and bce2600a,
> | however the given size (rel_size) for this relocation is 16-bytes
> | and this is coming form the efi image Misc.VirtualSize, so in this
> | case the 'reloc' pointer ends at affset bce2600c and is taken as
> | valid and this is where the overflow is.
> |
> | In our system we see this problem when we are starting the
> | Boot Guard efi image.
> |
> | This patch is fixing the overrun while preserving the fix done
> | by 997fc12ec91.
> | Signed-off-by: Aleksandar Gerasimovski <aleksandar.gerasimovski@belden.com>
> | Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
> 
> [...]

Applied, thanks!

[1/1] common: pe: fix pe reloc pointer overrun
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4b5f3d3d191 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



