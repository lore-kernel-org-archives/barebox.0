Delivery-date: Tue, 13 Sep 2022 10:11:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY11S-003PB6-Ho
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:11:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY11R-0000dz-76
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:11:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jQ+8e/pQS5f8FNk1hmJEOZ3JXGDsHZzuj8ai5dpjPuY=; b=MWo6AcD9sR4du70Usa2Jqr0uT/
	dsjLtbT6vqASMUy48XeYjYtJOmEz9kZQco8/9uLg4xmVWtdu8BJ8qBjjo47Gd3V98gI7bjT324g1k
	0+hHp9QOSHcPrUEl+d1GlqKdtW+rKgUaPIwTg1PxkD3t7F0oVeVJt8wDBMf5I94Ry3Mnb67To/FzB
	r3r9xShh5942orwb2KDF7zxsSOq/30ZBsL+P/7gVt42zT0OqqbgcLz1MxYIMTiJhNEqjZ+MZBBr2w
	L49RjOKzWvCGNR25JE63IeIRK/Okp7G+p/yvKTnWOaOqsSC5ESjRoj8q0nA1KqSW9Rly+nHekMXGU
	fTdItR2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY102-0047N4-J3; Tue, 13 Sep 2022 08:10:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY0zx-0047Fs-1u
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:10:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY0zv-0008VU-Cu; Tue, 13 Sep 2022 10:10:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY0zv-0003cI-3S; Tue, 13 Sep 2022 10:10:23 +0200
Date: Tue, 13 Sep 2022 10:10:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220913081023.GH6477@pengutronix.de>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_011025_145763_0BAA2712 
X-CRM114-Status: GOOD (  14.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] Documentation misc fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 12, 2022 at 11:44:23AM +0300, Antony Pavlov wrote:
> Antony Pavlov (7):
>   Documentation: OKUD Max9331: fix sphinx warning
>   Documentation: Altera SOCFPGA FPGA Manager: fix sphinx error
>   Documentation: Altera FPGAs in passive-serial mode: fix sphinx issues
>   Documentation: barebox DT aliases: fix sphinx issues
>   Documentation: barebox environment: fix list rendering
>   Documentation: Common leds properties: fix 'panic-indicator' list
>     entry rendering
>   Documentation: Voltage/Current Regulators: fix sphinx error
> 
>  Documentation/boards/mips/max9331.rst                       | 2 +-
>  Documentation/devicetree/bindings/barebox/aliases.rst       | 3 ++-
>  .../devicetree/bindings/barebox/barebox,environment.rst     | 1 +
>  .../devicetree/bindings/firmware/altr,passive-serial.rst    | 1 +
>  .../devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst  | 6 ++++--
>  Documentation/devicetree/bindings/leds/common.rst           | 2 +-
>  Documentation/devicetree/bindings/regulator/regulator.rst   | 1 +
>  7 files changed, 11 insertions(+), 5 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


