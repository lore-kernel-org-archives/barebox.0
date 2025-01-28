Delivery-date: Tue, 28 Jan 2025 11:01:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciPe-005TLS-2w
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:01:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciPe-0000Iq-Uo
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:01:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LF1TAXy1g2Q9mo3bV/Aa7XBpwUJfzBT2gcxRT5ZFDZk=; b=EbIRXdjq09hkmspfAkANfGHuyY
	agOxcl97oG+fFtt+R/bqouA5OkImnF1pW4mXuCZbS/3G+54x0KROPvSHFIrF9asDIiCBCQcekrd0N
	D12pVn9c1tpuC3sszp2lOIKdn2oG/+njWuEXJuqENpXGxAJKncGooFWkPF12CRQfLfO1zn+1wQ1yD
	kZYZVyqlyi7sty/ga5SNYQn9vybFdnel8exdsF27oSLSPmPB7BZtlDE9fQb/iG/L+23iqvfYl5HB7
	C0y2s01URGP0cHW81e7PJvtlS+XuuiZ4yPHL58sjm0aOMtWJm6R5OuvzRvyeLOSbGcbedY584coQv
	wYyD5bNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tciOy-00000004b2q-1Gid;
	Tue, 28 Jan 2025 10:01:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tciOv-00000004b1z-2c1e
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:00:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciOs-00005o-U7; Tue, 28 Jan 2025 11:00:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciOs-002HBs-2K;
	Tue, 28 Jan 2025 11:00:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciOs-0027q0-27;
	Tue, 28 Jan 2025 11:00:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
Message-Id: <173805845465.506757.2890538006380160377.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:00:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_020057_662971_258F7B93 
X-CRM114-Status: UNSURE (   7.26  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 00/10] i.MX8M HAB and OCOTP additions and fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Jan 2025 15:56:05 +0100, Stefan Kerkmann wrote:
> this fixes the HABv4 locking on i.MX8M devices and add additional
> features like:
>  - key revocation
>  - field-return burning
>  - additional security related fuse defintions
>  - automatic locking of the gp5 eFuse on i.MX8MP SoCs
> 
> [...]

Applied, thanks!

[01/10] nvmem: ocotp: add support to get/set srk_revoke sticky bit
        https://git.pengutronix.de/cgit/barebox/commit/?id=5b39c1064607 (link may not be stable)
[02/10] nvmem: ocotp: add support to query the field-return sticky bit
        https://git.pengutronix.de/cgit/barebox/commit/?id=df4871b9fd7a (link may not be stable)
[03/10] hab: convert flags to use BIT() macro
        https://git.pengutronix.de/cgit/barebox/commit/?id=76020dfb4d1b (link may not be stable)
[04/10] i.MX: HAB: add imx_hab_revoke_key support
        https://git.pengutronix.de/cgit/barebox/commit/?id=1cf409e48bb7 (link may not be stable)
[05/10] i.MX: HABv4: add more i.MX8M fuse defines
        https://git.pengutronix.de/cgit/barebox/commit/?id=e92b769fc7e2 (link may not be stable)
[06/10] i.MX8M: HABv4: add an option to allow key revocation
        https://git.pengutronix.de/cgit/barebox/commit/?id=e0602f983ce4 (link may not be stable)
[07/10] i.MX8M: HABv4: add option to allow burning the field-return fuse
        https://git.pengutronix.de/cgit/barebox/commit/?id=a499b77f25b0 (link may not be stable)
[08/10] i.MX: HAB: add imx_hab_field_return support
        https://git.pengutronix.de/cgit/barebox/commit/?id=79241ac489e5 (link may not be stable)
[09/10] i.mx8: ocotp: add GPx_LOCK defines
        https://git.pengutronix.de/cgit/barebox/commit/?id=6cc096461cb9 (link may not be stable)
[10/10] hab: lock GP5 on i.MX8MP socs
        https://git.pengutronix.de/cgit/barebox/commit/?id=33f78b77d667 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



