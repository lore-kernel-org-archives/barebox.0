Delivery-date: Fri, 09 Jan 2026 09:21:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ve7kX-002vLG-00
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 09:21:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ve7kW-0005Tf-DO
	for lore@pengutronix.de; Fri, 09 Jan 2026 09:21:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGNogDxopMJgxixs5Se+8p0Ott/OQXo7pUXS2JcSbJY=; b=O6PFIjlu8+punW0IHBKzOkCBfa
	to7oQLLg6xgmEfIfWW99JPjF1LcqXLweJLSvUOImWTx9lDoA1JyBC8cn5xYrkzMd3MQHt3icKKoXW
	A2MELLKYatDy9PmsUSAKRq5M1puKZQNkxU3UXkQCj4HSt8O0gQiVmvHGw0ATSL8z7VLq4Bfvbm0bV
	etOC729328GZmXmtoYUPURNmbR/Yjokqg1/SHFTKSI/xln5859uU3ibRN8RumPGbZVVgolgCh70oG
	H5kDa8MlJRwIq2COMuwTyfcpHnQEwchhyEgKFpaOIpHxaPwdhOm5vi1aN6PKWRquZg6tUWQAeemJi
	p+Xa8Iew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve7jm-00000001s5J-1J1Q;
	Fri, 09 Jan 2026 08:20:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve7jj-00000001s4D-29Ik
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 08:20:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ve7jh-0005Lt-8Z; Fri, 09 Jan 2026 09:20:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ve7jh-009oYD-0E;
	Fri, 09 Jan 2026 09:20:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ve7jg-00000002W8c-4AGn;
	Fri, 09 Jan 2026 09:20:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
Message-Id: <176794684498.600153.7838824193286742620.b4-ty@pengutronix.de>
Date: Fri, 09 Jan 2026 09:20:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_002047_558636_7FE450F1 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/10] bootm: refactor to prepare multiple initrd
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:03:32 +0100, Ahmad Fatoum wrote:
> Linux can transparently handle concatenated individually compressed CPIOs
> just fine, but so far, the concantenation needed to happen before bootm
> is called.
> 
> This series prepares for supporting initrd concatenation by refactoring
> the bootm code to make it easier to extend in a follow-up series.
> 
> [...]

Applied, thanks!

[01/10] bootm: set image_data::initrd_res at a single place
        https://git.pengutronix.de/cgit/barebox/commit/?id=dca8fcca2830 (link may not be stable)
[02/10] bootm: fit: split support into dedicated file
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b3cf02c037b (link may not be stable)
[03/10] bootm: uimage: split support into dedicated file
        https://git.pengutronix.de/cgit/barebox/commit/?id=e3085717c879 (link may not be stable)
[04/10] filetype: introduce filetype_fit
        https://git.pengutronix.de/cgit/barebox/commit/?id=bc0d99bc40bc (link may not be stable)
[05/10] bootm: refactor for readability and extensibility
        https://git.pengutronix.de/cgit/barebox/commit/?id=b62b21eddf30 (link may not be stable)
[06/10] memory: move release_sdram_region into header
        https://git.pengutronix.de/cgit/barebox/commit/?id=3900e7f40b9f (link may not be stable)
[07/10] resource: make NULL in release_[sdram_]region a no-op
        https://git.pengutronix.de/cgit/barebox/commit/?id=1918ba4da8b8 (link may not be stable)
[08/10] common: elf: use release_region unconditionally
        https://git.pengutronix.de/cgit/barebox/commit/?id=62761aaa41c2 (link may not be stable)
[09/10] memory: always print errors on request_sdram_region failure
        https://git.pengutronix.de/cgit/barebox/commit/?id=e453a1b33322 (link may not be stable)
[10/10] memory: drop now duplicate request_sdram_region error messages
        https://git.pengutronix.de/cgit/barebox/commit/?id=6a47e5b084d0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



