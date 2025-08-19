Delivery-date: Tue, 19 Aug 2025 09:47:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoH48-002AMN-1c
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 09:47:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoH47-00012q-9S
	for lore@pengutronix.de; Tue, 19 Aug 2025 09:47:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pY5t9X/8REXuROd3x2GIW245d9RgQE/lhE+0BeTe38Q=; b=1mSgasq1Yo6+koaeNdJJf1NE9f
	TjioX1fvlUpSpUMBx37NXtZvX3er2P9XbwTCoqofzidFhpjouE2bgc05f40tNhKw68vIuwnDZRE+l
	bcY/M42AVLiSlYyUMxhCKR5DPj8HsH2HRJms5Q24qha73hP2rfIm07x2HCaU+G8mp1UHyKq7X/s2D
	qrv1LqH3lnUpZ18G+ox7x24ocAtKQimRjm2RX3qp5K2Tov//g8wkug0p9nSahch20CnLLarryvAml
	rhOUL+Z0ox+YACbQIplgoJLRif28e16p87/lZo1iwLG2gbaQxW7E5rkmbgvWiEeXD3ik1eAFcB4EA
	mnRIHgHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoH3f-00000009iSB-25t7;
	Tue, 19 Aug 2025 07:47:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGgp-00000009f9K-2bzR
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 07:23:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoGgg-0006a4-GS; Tue, 19 Aug 2025 09:23:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoGgg-00122e-0z;
	Tue, 19 Aug 2025 09:23:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoGgg-00D66z-0n;
	Tue, 19 Aug 2025 09:23:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
Message-Id: <175558819824.3121704.4400851516091113450.b4-ty@pengutronix.de>
Date: Tue, 19 Aug 2025 09:23:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_002327_690191_C8DBF014 
X-CRM114-Status: GOOD (  10.73  )
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
Subject: Re: [PATCH v2 00/15] NVMEM: Add support for layout drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 Aug 2025 19:44:34 +0200, Marco Felsch wrote:
> with this patchset the barebox nvmem-core is prepared for the Linux
> nvmem-layout drivers. Layout drivers are used to describe the NVMEM
> storage format. The patchset also adds the support to read nvmem-cells
> via the devfs. This makes it possible to read the cells from the board
> code or shell without the need of referencing the cells within the DT.
> 
> A long with the alignment and feature work I fixed a few issues like:
> honor the DT alias for a nvmem provider correctly.
> 
> [...]

Applied, thanks!

[01/15] of: sync of_*_phandle_with_args with Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=3daa7f9af67d (link may not be stable)
[02/15] of: base: add of_parse_phandle_with_optional_args()
        https://git.pengutronix.de/cgit/barebox/commit/?id=4658225f5eb6 (link may not be stable)
[03/15] of: device: Export of_device_make_bus_id()
        https://git.pengutronix.de/cgit/barebox/commit/?id=b25846a86181 (link may not be stable)
[04/15] nvmem: core: fix nvmem_register error path
        https://git.pengutronix.de/cgit/barebox/commit/?id=6e06a04207b1 (link may not be stable)
[05/15] nvmem: core: sync with Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=f7d4cd4aa3c3 (link may not be stable)
[06/15] nvmem: core: expose nvmem cells as cdev
        https://git.pengutronix.de/cgit/barebox/commit/?id=9e68c25a5358 (link may not be stable)
[07/15] nvmem: core: allow single and dynamic device ids
        https://git.pengutronix.de/cgit/barebox/commit/?id=4e1366b1540b (link may not be stable)
[08/15] eeprom: at24: fix device name handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=742d577ea35e (link may not be stable)
[09/15] nvmem: core: create a header for internal sharing
        https://git.pengutronix.de/cgit/barebox/commit/?id=c2e7a024122d (link may not be stable)
[10/15] nvmem: core: add nvmem-layout support
        https://git.pengutronix.de/cgit/barebox/commit/?id=796e915d3ba0 (link may not be stable)
[11/15] nvmem: core: add an index parameter to the cell
        https://git.pengutronix.de/cgit/barebox/commit/?id=7e1c99bad15d (link may not be stable)
[12/15] nvmem: core: add per-cell post processing
        https://git.pengutronix.de/cgit/barebox/commit/?id=4254a6275c73 (link may not be stable)
[13/15] nvmem: core: add cell based fixup logic
        https://git.pengutronix.de/cgit/barebox/commit/?id=c6821e76e961 (link may not be stable)
[14/15] nvmem: core: provide own priv pointer in post process callback
        https://git.pengutronix.de/cgit/barebox/commit/?id=ef9eefd4403b (link may not be stable)
[15/15] nvmem: core: drop global cell_post_process
        https://git.pengutronix.de/cgit/barebox/commit/?id=1e811fd53f26 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



