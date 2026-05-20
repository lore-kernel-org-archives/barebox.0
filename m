Delivery-date: Wed, 20 May 2026 15:18:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPgoe-001sIl-1U
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 15:18:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPgod-0001Lx-Re
	for lore@pengutronix.de; Wed, 20 May 2026 15:18:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=zZ+jOYfox0d380iwmIpx4c4Ub0FTcD/42VvFk4GsOow=; b=uMw3JSOadUTK8PDTDQ/9Xo/eSL
	thGTvfS/KQrBkTc06tzAhaX0ECvYFFfqtSzBleWj9rGMT2Qcr2WvSLP3nyTaVQG539Rj5BCv6DBty
	k4pvbr9FzntIod08HLZxynl/zR4Q3bL0SnxMzeMS2vCZ6w22XbP6vcVvPOqs9RO0zojRB9GswjLye
	7TnItp4gxCeNI5ZZK/SLMYcahF9ZXVPrazO+ngMT+byXnH14ZYna/RYih94MI96a6TWIx5VZDIW6i
	/1qYshHl4RZXVKiMRLfEdvmZ4OGt0MV0LA32mQ6QxruG8MFQCvyubOebA1j04v2jsSUUQBZKLGOpp
	HIDKMFfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPgnW-00000004erT-1wOR;
	Wed, 20 May 2026 13:17:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPgnU-00000004eqp-0zNR
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 13:17:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wPgnR-0001Bu-Ur; Wed, 20 May 2026 15:17:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wPgnR-000wGN-14;
	Wed, 20 May 2026 15:17:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wPgnR-0000000264u-3MOI;
	Wed, 20 May 2026 15:17:13 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <CAP1tNvQh2dCn9_+dwiOzRgCeNFT6AC9n4rJNC39AB2tNYC_W-w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 13:17:13 +0000
Message-Id: <E1wPgnR-0000000264u-3MOI@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_061716_354988_64B0F5B1 
X-CRM114-Status: UNSURE (   9.56  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-20 15:11, Alexander Shiyan wrote:
> Here is output with lowlevel debug:
> DDR 03ea844c5d typ 24/09/03-10:42:57,fwver: v1.23
> In
> ...
> out
> >rockchip-dmc: rockchip_sdram_size(reg2=3D1000ea01, reg3=3D30000031)
> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
> bw 2 row_3_4 0
> rockchip-dmc: rk3568_ram_sizes() =3D 8589934592
> mmu: enabling MMU, ttb @ 0xedf80000
> mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
> mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
> mmu: __arch_remap_range: 0x00a00000+0xef600000 type RWX
> mmu: __arch_remap_range: 0xee000000+0x2000000 type FAULT
> mmu: __arch_remap_range: 0x00b00000+0x60000 type RWX

Damn. I introduced this:

        pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALL=
OC_SIZE);

This exactly ends up in the area marked as FAULT above (reserved for
OP-TEE).

Try this:

        pbl_malloc_init(membase[0] + memsize[0] - OPTEE_SIZE - PBL_MALLOC_S=
IZE,
                        PBL_MALLOC_SIZE);

You have XZ as image compression, right?

The rockchip_v8_defconfig uses LZ4 which doesn't need any dynamic memory
for decompression. I tested with XZ as well, but the configuration I
used for this test doesn't have OP-TEE enabled, so the faulting area was
not there.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


