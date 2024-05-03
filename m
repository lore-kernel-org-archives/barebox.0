Delivery-date: Fri, 03 May 2024 09:22:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2nFu-00GoSK-0K
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 09:22:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2nFt-0000oY-Hd
	for lore@pengutronix.de; Fri, 03 May 2024 09:22:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wlT55jr9VHhDVQbbh/33scDI5A7RIS37NvNugGEZFD8=; b=UlaHoSjlOkku5S5CDGV7FlahFU
	AEBncITRfPxPUEs05OAyEOmjCZqqjVZ46GtN5ker+MTUQmcOaNlw5gst2oGKrjqbbEex+tpHteN0r
	OsG4l5Os3GK695Gl6HLMrFhuCjV3/Blk++WG5m9C+aY4FSoLx1EOLQDQbexgPj2tBoS7SMdEhxmLa
	eyGL/AOZIAdolxJ65cnic1tcBJx56JtLS5UtdgJXGISoYWBVYmh4mmuxvEWT9aca0pYWwf7dVVRan
	X9CHRRST2BGRpRe3aLTylUlZdpiDXJFWJTmjFMbNYx56gk0btaAPRMWU/aMh7Pbb2ITfysbrblZoZ
	tlZdMogA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nFT-0000000FS2H-2SLj;
	Fri, 03 May 2024 07:22:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nFQ-0000000FRzb-01me
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 07:22:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2nFO-0000gY-PK; Fri, 03 May 2024 09:22:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2nFO-00Ff35-Cg; Fri, 03 May 2024 09:22:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2nFO-00069q-13;
	Fri, 03 May 2024 09:22:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240430102357.1357983-1-rhi@pengutronix.de>
References: <20240430102357.1357983-1-rhi@pengutronix.de>
Message-Id: <171472094232.23597.14654978686174115920.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 09:22:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_002224_099503_58A4E984 
X-CRM114-Status: UNSURE (   8.11  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: fix compatible string for
 koenigbauer,alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Apr 2024 12:23:57 +0200, Roland Hieber wrote:
> During the review of the initial board support patch, the SoM compatible
> was changed (and unified) to "congatec,qmx8p" from several different
> incompatible variants. However, the compatible in the alphajet device
> tree contained a different typo and was overlooked, which had the effect
> that the barebox_update handler and the Ethernet fixups were not
> registered on the alphajet board.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MP: fix compatible string for koenigbauer,alphajet board
      https://git.pengutronix.de/cgit/barebox/commit/?id=f18bb339857d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



