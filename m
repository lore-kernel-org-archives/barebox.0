Delivery-date: Tue, 15 Oct 2024 08:55:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bTA-004Z0o-0L
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 08:55:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bT9-0001Z3-G5
	for lore@pengutronix.de; Tue, 15 Oct 2024 08:55:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KywyjeYrn0i73iTeePC3tuC5xoOgGvGNXpm4Agw2jbA=; b=w8JF23Cnqk/7WFkcXv88rKqWWx
	xi5rfBbze3A+zyYYmlBy3z1jJKWH8kmZMRM88GHdNdw28m6ZaScvoQiAhmZxPb0dnIMfFoeMVJj5I
	9smmHfD3GAcux2iFby7JGBZ5IHt+FC4+P0/EacsKCc14DiBC0nOnrJ0j5ww0avauudSqbOEbtuqeF
	uRZCLdHRGURULj6e2WwT9RDBHUoyckWpYFsWw1JQps+FI2dmKi9ThMwc9nD+DDr1+g/xO+ZEYFX9t
	VZKb2tEpYRSjY/KmwmL8gW5wDOP0qtemHWu8h5GGzs99CxwMYq2Dno0IxOcHhFkfiIgaEBPI/59T1
	ltXvCFNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bSW-00000007H5J-35lL;
	Tue, 15 Oct 2024 06:55:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bRw-00000007H1y-3oeW
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 06:54:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bRu-0001Pv-Is; Tue, 15 Oct 2024 08:54:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bRu-001yAn-6U; Tue, 15 Oct 2024 08:54:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bRu-0041dv-0T;
	Tue, 15 Oct 2024 08:54:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ejo@pengutronix.de
In-Reply-To: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
Message-Id: <172897527014.959514.11559235043161085627.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 08:54:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_235433_085097_40DA04B0 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] ARM64: make barebox compatible with KVM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Oct 2024 08:05:06 +0200, Ahmad Fatoum wrote:
> It was noticed by a patch series[1] for OpenEmbedded-core that
> neither barebox nor U-Boot reach their shell when tested on a native
> AArch64 server with Qemu running with KVM enabled.
> 
> After investigation and help from the Qemu/KVM maintainers[2], it turns
> out that software that wants to run under KVM needs to take care what
> instructions it uses for MMIO accesses:
> 
> [...]

Applied, thanks!

[1/5] ARM64: io: implement I/O accessors in assembly
      https://git.pengutronix.de/cgit/barebox/commit/?id=ad6062f654a4 (link may not be stable)
[2/5] ARM64: board-dt-2nd: grow stack down from start of binary
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf7081c0771f (link may not be stable)
[3/5] mtd: cfi-flash: use I/O accessors for reads/writes of MMIO regions
      https://git.pengutronix.de/cgit/barebox/commit/?id=133903c41840 (link may not be stable)
[4/5] ARM64: mmu: flush cacheable regions prior to remapping
      https://git.pengutronix.de/cgit/barebox/commit/?id=b8454cae3b1e (link may not be stable)
[5/5] virtio: don't use DMA API unless required
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ebd05809a49 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



