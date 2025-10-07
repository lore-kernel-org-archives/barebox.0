Delivery-date: Tue, 07 Oct 2025 12:16:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v64jr-005DFT-1s
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 12:16:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v64jr-0000Af-0M
	for lore@pengutronix.de; Tue, 07 Oct 2025 12:16:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yYIOjMgcfd1Ce+Rkd9oS75fjXm49C9x+AY/AxVhojrU=; b=JEMCM2nl1ZqyTr9+3e1v6mg5jk
	Ght0ioP/VPLqSNCyhqzX8EMpw577qGQ8kD9z/VPw245U6v8LLoqbB4xdX4RAeNfrnR9N7XMq9P2L8
	rO/RQvw5vt/lUq70USi4NVGSrCGYo+3UaP0Ycz7WgQKr1BBe5If7FkRUl3iQZNfh5Lh5yBthjh53o
	/ngg4iK+DI4pxu7pCVsaIKlTTTYvSgWy+dxpOum42qn+AIE/Zuk/mxwUs4sX+Xv76EoG0wMlX3qwm
	3mi+vKmGWhl3aPEIN9CJeWkguz/6F9vxaTTWYMX7eDQ/pzHjeqfzXwojGmA5zvW/Mc4wmGRWb1Oq6
	FOqc/nDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64jS-00000001meI-0zbX;
	Tue, 07 Oct 2025 10:15:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64jP-00000001mce-0xr8
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 10:15:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v64jN-0008S5-QE; Tue, 07 Oct 2025 12:15:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v64jN-002NtY-1w;
	Tue, 07 Oct 2025 12:15:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v64jN-000000047ts-2GIt;
	Tue, 07 Oct 2025 12:15:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
Message-Id: <175983214153.983651.2889096974255262063.b4-ty@pengutronix.de>
Date: Tue, 07 Oct 2025 12:15:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_031543_284824_034616C0 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/11] common: filetype: add detection for x86 Linux
 kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Oct 2025 00:15:02 -0400, chalianis1@gmail.com wrote:
> Introduce a new filetype for x86 Linux kernel images by checking for
> the "HdrS" magic (0x53726448) at offset 0x202 in the setup header.
> 
> 

Applied, thanks!

[01/11] common: filetype: add detection for x86 Linux kernel images
        (no commit info)
[02/11] efi: payload: split out payload Kconfig symbols
        https://git.pengutronix.de/cgit/barebox/commit/?id=4ba4e23652ea (link may not be stable)
[03/11] efi: payload: add support for EFI initrd media protocol
        https://git.pengutronix.de/cgit/barebox/commit/?id=9ef8a6e873dc (link may not be stable)
[04/11] tlsf: move kasan_poison_shadow into tlsf_add_pool
        https://git.pengutronix.de/cgit/barebox/commit/?id=4fd2c32546d6 (link may not be stable)
[05/11] tlsf: support on-demand requesting memory from external store
        https://git.pengutronix.de/cgit/barebox/commit/?id=7e43bc6e8f8d (link may not be stable)
[06/11] efi: payload: earlymem: allocate only the barebox needs in term of memory
        https://git.pengutronix.de/cgit/barebox/commit/?id=ca4d3c34699c (link may not be stable)
[07/11] efi: payload: split image handling from legacy handover boot
        (no commit info)
[08/11] efi: payload: bootm: add support for efi stub boot
        https://git.pengutronix.de/cgit/barebox/commit/?id=d1485062fc94 (link may not be stable)
[09/11] efi: payload: bootm: add support for fit image
        https://git.pengutronix.de/cgit/barebox/commit/?id=cce4c24a1e85 (link may not be stable)
[10/11] efi: payload: make selectable without COMPILE_TEST
        https://git.pengutronix.de/cgit/barebox/commit/?id=063da7a655c1 (link may not be stable)
[11/11] ARM: efi: add a generic defconfig for v8 efi payload
        https://git.pengutronix.de/cgit/barebox/commit/?id=487cd4e91a99 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



