Delivery-date: Wed, 18 Mar 2026 11:06:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2nnZ-0028qw-1X
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 11:06:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2nnY-0003VU-RN
	for lore@pengutronix.de; Wed, 18 Mar 2026 11:06:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=swhFNSkq+JbU5w/TYUyxaGq9tM0x833KOcE7FTNso7s=; b=X/y/7KkRBy3g0fF5P/pOnJ4lTo
	a/H+DKOs7m+P3AMeBISuwTUZrwsTlSfjCRrJS9PFo1kowK355izQfsv4gCcCb0+sBTiXb2xbRbMGW
	dnAAMXhxgUPlGFFBonqXO02e/N4tzzVbnSAeF43ySD1OQiHWx1NNPzj2PSi04qhgSIUGQt7WDvJ6l
	KlyISuuc9VE0c4zlse4TOBW+Ievt6copOfmocq/7mSM9tMK94OGbT5UivFU1emB5WHZYYh017Nphm
	ADfPI+L90Akz80QFXGdmzHGP8IzcPEkhUaaehjkTzcs9UUTzpj9PEsbyc6VgmJu32JYZY0aicmEYl
	m/0olHQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nn7-00000008BCj-3Hln;
	Wed, 18 Mar 2026 10:06:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nn5-00000008BBo-2ezW
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 10:06:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2nn3-0003QV-QK; Wed, 18 Mar 2026 11:06:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2nn3-000tIR-1z;
	Wed, 18 Mar 2026 11:06:13 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2nn3-0000000DKZo-2MNK;
	Wed, 18 Mar 2026 11:06:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
Message-Id: <177382837356.3177094.16349359860150788545.b4-ty@pengutronix.de>
Date: Wed, 18 Mar 2026 11:06:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_030615_684027_8F1079E4 
X-CRM114-Status: UNSURE (   7.28  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/16] lib: add lazy loadable infrastructure for
 deferred boot component loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 15:44:44 +0100, Ahmad Fatoum wrote:
> This adds a new "loadable" abstraction that allows boot components (kernel,
> initrd, FDT) to be represented without immediately loading their data.
> Metadata can be queried via get_info() and actual loading happens on
> demand via extract(), extract_into_buf() or mmap().
> 
> 

Applied, thanks!

[01/16] lib: add lazy loadable infrastructure for deferred boot component loading
        https://git.pengutronix.de/cgit/barebox/commit/?id=b4a3f1da19d8 (link may not be stable)
[02/16] bootm: split preparatory step from handler invocation
        https://git.pengutronix.de/cgit/barebox/commit/?id=7c5de879f9d0 (link may not be stable)
[03/16] boot: add bootm_boot wrapper that takes struct bootentry
        https://git.pengutronix.de/cgit/barebox/commit/?id=797d4cf2115c (link may not be stable)
[04/16] bootchooser: pass along struct bootentry
        https://git.pengutronix.de/cgit/barebox/commit/?id=d768a46f9960 (link may not be stable)
[05/16] bootm: switch plain file names case to loadable API
        https://git.pengutronix.de/cgit/barebox/commit/?id=6c65dec5f7cc (link may not be stable)
[06/16] uimage: add offset parameter to uimage_load
        https://git.pengutronix.de/cgit/barebox/commit/?id=8355a1a55aa3 (link may not be stable)
[07/16] bootm: uimage: switch to loadable API
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e6541814a3d (link may not be stable)
[08/16] bootm: fit: switch to new loadable API
        https://git.pengutronix.de/cgit/barebox/commit/?id=cd86928a7b4a (link may not be stable)
[09/16] bootm: stash initial OS address/entry in image_data
        https://git.pengutronix.de/cgit/barebox/commit/?id=55acd3ee34ec (link may not be stable)
[10/16] bootm: support multiple entries for bootm.initrd
        https://git.pengutronix.de/cgit/barebox/commit/?id=d907c0987359 (link may not be stable)
[11/16] bootm: implement plain and FIT bootm.image override
        https://git.pengutronix.de/cgit/barebox/commit/?id=10130dd5ff19 (link may not be stable)
[12/16] bootm: overrides: add support for overlays
        https://git.pengutronix.de/cgit/barebox/commit/?id=7f66aaf6e6e4 (link may not be stable)
[13/16] test: py: add test for initrd concatenation
        https://git.pengutronix.de/cgit/barebox/commit/?id=90a736b917f0 (link may not be stable)
[14/16] defaultenv: base: add new devboot script
        https://git.pengutronix.de/cgit/barebox/commit/?id=7901159d712b (link may not be stable)
[15/16] Documentation: user: devboot: add section on forwarding build dirs
        https://git.pengutronix.de/cgit/barebox/commit/?id=886de762c869 (link may not be stable)
[16/16] libfile: remove file_to_sdram
        https://git.pengutronix.de/cgit/barebox/commit/?id=03d683fe8999 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



