Delivery-date: Mon, 13 Apr 2026 09:27:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBhs-00BdZw-1N
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:27:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBhr-0004g1-R3
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:27:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5mWNEt0vBDW/hZDQ4BwWS175UXowjTPKVDD34qPWDNM=; b=o3HVR3jYfTBCyje9Y1uBHGhl9W
	6Oc5e+x2FgXMrCyz02rkmXphyHAVlyiqcmMe+G3ix7cmsLSrG4z088a1uOwT6Sg/BYeG0MBJ6BP5T
	Uc6xGPGlAIZoLqzfsH4xIwaIRiOKayDRc3X6V5e1jUTn5qPOaBS3nNuXT6OpummhQ1YNoxAJm25Yr
	DjWpiI95+K+6E0Vf6CRoE2owVuPesK5fuu2MiOhyHcMc0lfKxvPX6Hzkab7XRV9RU1G0U3QILcQn4
	mPPWprT6sJXRu58ZCty/GToa8KUGaUjdYLOg/IhVJ6q0XW1AXd/0Amj6Gr8IR9qyUKneKNRf1DyBI
	pyzIst+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBhN-0000000F8xC-0Sll;
	Mon, 13 Apr 2026 07:27:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBhL-0000000F8vw-1Gzp
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5mWNEt0vBDW/hZDQ4BwWS175UXowjTPKVDD34qPWDNM=; b=RmHK6FzUyVTtSiXQU2r2zAFQKU
	aP98LCUWMH3osCXvUv4IYwEIypYBpwcFrZGF0bIIXtqmplfGAmTksGClc0zoYFKPoVoEPZlfGBOwh
	Krp3502VvPdKSgjpfmbexZfcnvZw5QNhZiiCShVL85qUNj8GWdrXqaLMQGvimwxh4OiKtbPSQ8DD3
	FXZyFsjnacJrWPoZH0Im8a6R1phWdQutZKK/brCgGDD8bBX3ly0H6v/Ibl0pNWwdI9SjCS4X3CINq
	vY/HyGnvIuVhF9KFt/nDKeXNv2DA5tvqviCXGODGDn9ixYZ2r28zE8KAJiA1FICxlKcy73IsArt/U
	Rc9ZXpJA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBhF-0000000GH7M-2ely
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBhA-0004W9-Or; Mon, 13 Apr 2026 09:26:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBhA-0058CY-1s;
	Mon, 13 Apr 2026 09:26:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBhA-0000000Eg7H-29o6;
	Mon, 13 Apr 2026 09:26:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
Message-Id: <177606521650.3498462.17941938150244328554.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 09:26:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_082702_786423_C18552A6 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] arm: socfpga: iossm: add support for mailbox
 v1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 Apr 2026 15:52:40 +0200, Michael Tretter wrote:
> The IOSSM on the Agilex5 may have different mailbox versions depending
> on the Quartus version that was used to generate the SoC configuration.
> Up until now, barebox only supports mailbox version 0, which was
> configured by versions before Quartus 25.3.0. With Quartus 25.3.0 and
> later, the IOSSM provides mailbox version 1, which exposes many
> configuration options as registers instead of mailbox responses.
> 
> [...]

Applied, thanks!

[01/10] arm: socfpga: iossm: remove uninitialized variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=3620d7592ea8 (link may not be stable)
[02/10] arm: socfpga: iossm: add version check
        https://git.pengutronix.de/cgit/barebox/commit/?id=4ad79e15ab16 (link may not be stable)
[03/10] arm: socfpga: iossm: use local mb_ctrl variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=8e69335f1404 (link may not be stable)
[04/10] arm: socfpga: iossm: store size in bytes
        https://git.pengutronix.de/cgit/barebox/commit/?id=f13172e790b2 (link may not be stable)
[05/10] arm: socfpga: iossm: refactor io96b_mb_init
        https://git.pengutronix.de/cgit/barebox/commit/?id=44f9b70df025 (link may not be stable)
[06/10] arm: socfpga: iossm: refactor return value handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e870948bd11 (link may not be stable)
[07/10] arm: socfgpa: iossm: extract poll_bist_mem_init_status
        https://git.pengutronix.de/cgit/barebox/commit/?id=d54f98530a5d (link may not be stable)
[08/10] arm: socfgpa: iossm: extract initialization of one interface
        https://git.pengutronix.de/cgit/barebox/commit/?id=600fa481c84f (link may not be stable)
[09/10] arm: socfpga: iossm: add memory initialization with inline ecc
        https://git.pengutronix.de/cgit/barebox/commit/?id=9c210fda2dee (link may not be stable)
[10/10] arm: socfpga: iossm: add support for mailbox v1
        https://git.pengutronix.de/cgit/barebox/commit/?id=7efe39390586 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



