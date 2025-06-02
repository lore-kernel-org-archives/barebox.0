Delivery-date: Mon, 02 Jun 2025 12:19:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Gr-002vP3-35
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:19:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Gr-0003Td-Cr
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:19:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c84XYzNFLhMXnhspHz84B9+8a6LMpx0lbm/yZZJtkq4=; b=p65J1abluTOGF8cTbmBptfBgUD
	jJaHtIijfSvbvXBeT9sjDtCWzdRJysOcyVURdB5UmLp5ARyw1UUqj2vDGbNI1mckY5YFRxxivR5OX
	wdv6T+nHNYN5yGVdKHZ9i4L6wFJy6cPwoUcmPCnFPFeBNtyWZBH89P3LzzZ7EACrB2TVuefAmF0pF
	otslHvKLmYAl7ZZCqSOjNsxpq+ODvzXRnvWMqp3ikCpCkMuumVQWDcPIAC2JmD0qLDFwo9aUlKHrk
	raZa1SKJGhuSqpDqVxdACZAhfm3TGDDof0Np6SCS1FV5jUYCWtB93fT1K8oo9qfydUZbht8IZBjVR
	8JzOU60A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2GT-00000007Awd-0QBz;
	Mon, 02 Jun 2025 10:19:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2FJ-00000007ArL-1hoi
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:18:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2FA-0002tm-7n; Mon, 02 Jun 2025 12:18:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2FA-001RC2-0A;
	Mon, 02 Jun 2025 12:18:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2F9-003i1M-3B;
	Mon, 02 Jun 2025 12:18:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
Message-Id: <174885949198.884157.18174718508451096886.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 12:18:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_031821_449550_8347D229 
X-CRM114-Status: UNSURE (   7.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] Add barebox TLV infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 16:30:33 +0200, Ahmad Fatoum wrote:
> barebox TLV is a system to store and retrieve a device's (read-only)
> meta-data from non-volatile memory.
> It is intended to handle information that are usually only set in
> the factory - like serial number, MAC-addresses, analog calibration
> data, etc.
> Data is stored in a tag-length-value format (hence the name) and read
> from non-volatile memory during startup.
> 
> [...]

Applied, thanks!

[01/10] net: factor out eth_of_get_fixup_node
        https://git.pengutronix.de/cgit/barebox/commit/?id=bdd4724851c6 (link may not be stable)
[02/10] net: export list of registered ethernet addresses
        https://git.pengutronix.de/cgit/barebox/commit/?id=41ce77cf857d (link may not be stable)
[03/10] common: add optional systemd.hostname generation
        https://git.pengutronix.de/cgit/barebox/commit/?id=82a0f33b0be0 (link may not be stable)
[04/10] common: add barebox TLV support
        https://git.pengutronix.de/cgit/barebox/commit/?id=0b444f05f713 (link may not be stable)
[05/10] commands: add TLV debugging command
        https://git.pengutronix.de/cgit/barebox/commit/?id=f418e36f9bc1 (link may not be stable)
[06/10] scripts: add bareboxtlv host/target tool
        https://git.pengutronix.de/cgit/barebox/commit/?id=ae1c64f8b799 (link may not be stable)
[07/10] boards: add decoder for LXA TLV v1 format
        https://git.pengutronix.de/cgit/barebox/commit/?id=edc1152b47d8 (link may not be stable)
[08/10] scripts: Add Barebox TLV Generator Tooling
        https://git.pengutronix.de/cgit/barebox/commit/?id=62f8e6a21fb1 (link may not be stable)
[09/10] doc: Add User-Documentation for Barebox TLV
        https://git.pengutronix.de/cgit/barebox/commit/?id=5a7fc3321407 (link may not be stable)
[10/10] ARM: stm32mp: lxa: enable TLV support for TAC & FairyTux2
        https://git.pengutronix.de/cgit/barebox/commit/?id=89fa32f572da (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



