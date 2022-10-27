Delivery-date: Thu, 27 Oct 2022 11:33:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onzG4-003vw9-IW
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 11:33:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onzG3-0000Bh-Dv
	for lore@pengutronix.de; Thu, 27 Oct 2022 11:33:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i7+A3Rrej3Sf9qBeWKNedS65nQxu8loeWvedcakk83o=; b=G9FiZ1A7x2LpMaGT3GqdHEZ/44
	TseLT+tu9vZbsQpOpAGBDPNcqGlL/rt7UU5RhO8KOOCSkri8DiLYtoZAkDR1ZY36soRKa8oPgYUv8
	Ek83A5DB8srHoUPnz8TAzuRsIv8PPOsuzArWK3mh+rtvfg87xsFZr1HJE10U2DbPdA+/YbdxODWw0
	cmqBlOjj/EvZKTeZT2iBLcqbXO5RZL8XNvoZKsRtaKwFsb6jtW6b9/3hFnfSDvYRVSmB+7Vrt+XWU
	mYpu4JD6nVJ7mCHt2oXHowZhD8uX2SvNn5YeX94ptljEGGJPBfXrbAqNflz/Ttz0Xor3wXnyx9YtK
	iFT4/OTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onzEV-00CbRq-RB; Thu, 27 Oct 2022 09:31:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onzEQ-00CbRJ-KV
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 09:31:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onzEO-0008Vg-Bo; Thu, 27 Oct 2022 11:31:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onzEO-00034h-3h; Thu, 27 Oct 2022 11:31:20 +0200
Date: Thu, 27 Oct 2022 11:31:20 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leonard =?iso-8859-15?Q?G=F6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20221027093120.GW6702@pengutronix.de>
References: <20221026093845.304181-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221026093845.304181-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_023122_688102_0607BB01 
X-CRM114-Status: GOOD (  20.12  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX8MP: add TQ mba8mpxl board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 26, 2022 at 11:38:45AM +0200, Holger Assmann wrote:
> This commit adds support for the TQ MBa8MPxL with TQMa8MPxL module with
> i.MX8M Plus Quad/Dual SoC. This very combination results in configuration
> symbol "MACH_TQ_MBA8MPXL". A possible variant based on i.MX8M Plus Dual
> would be supported transparently, once barebox deleted the CPU nodes
> when it detects that they were fused away. It already does so for
> i.MX8MM and i.MX8MN.
> 
> We use the respective Linux upstream device trees and their implications
> regarding hardware support.
> 
> Known to be unsupported for now is the second Ethernet interface around
> the eqos dwmac IP. This has to be resolved by porting over the fitting
> wrapper from Linux.
> 
> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> 
> Changes v1 -> v2:
>  - removed barebox environment partname bindings in device tree
>  - streamlined bbu_flag determination in board.c
>  - removed trailing whitespace
>  - added review acknowledgement

Applied with two little changes. I enabled the board in
imx_v8_defconfig.

>  arch/arm/boards/mba8mpxl/Makefile             |    4 +
>  arch/arm/boards/mba8mpxl/board.c              |   49 +

Also I renamed the board directory to tqma8mpxl as this aligns better
with the other TQ boards. With this we use the SoM name rather than
the baseboard name, but I think that's fine as other baseboards for this
SoM could be handled in that directory as well.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


