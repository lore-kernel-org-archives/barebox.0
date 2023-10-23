Delivery-date: Mon, 23 Oct 2023 11:49:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qurYe-0015Mj-28
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 11:49:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qurYc-0002wj-Sg
	for lore@pengutronix.de; Mon, 23 Oct 2023 11:49:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uEakUexuArb5F+xRr1nxWaumnIWlSDOaG2/AEsZJfX8=; b=ukbWJX+sZ0MFcSWMGFbOXJLKdo
	hhB25CiuqMbjFFcK44oS7HCwIM6P9EW+RR+3eNm750xNchM6S692Qsd5XGcJmYEoTQQ6yNB6g2G5J
	LIfMin8HxK0OzTsS1a6L3eFABPsQTk28JDUpXChAIm9vbApPABLtEwePnZODRW4qaJlaM5PuwLWzt
	spUhXOTO4vMnDd24f6EIdt2ZDrc9SRoWC/UNIZcpOxiaNI9C+UEhbwH5M7229LPbV9qyWXT79ql1b
	R9StGyH1FH1Nn0SrMrZ4bMn2eyAFZPIQWzyT7eckfD+MDFU5KdVgiOhyi7jwsv1RvNsBvfqWBk7b2
	JLC00kFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qurXY-006vBK-1j;
	Mon, 23 Oct 2023 09:48:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qurXV-006vAp-1C
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 09:48:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qurXU-0002pf-4D; Mon, 23 Oct 2023 11:48:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qurXT-003g2H-OE; Mon, 23 Oct 2023 11:47:59 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qurXT-00FuC6-6Y; Mon, 23 Oct 2023 11:47:59 +0200
Date: Mon, 23 Oct 2023 11:47:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231023094759.GQ3359458@pengutronix.de>
References: <20231020121710.658511-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020121710.658511-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_024801_427709_1B694C14 
X-CRM114-Status: GOOD (  20.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: limit PBL size to 0x3f000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 20, 2023 at 02:17:10PM +0200, Ahmad Fatoum wrote:
> On i.MX8M(Q/M/N/P), barebox PBL is loaded 0x1000 bytes into ITCM
> at address 0x7e00_1000. ITCM is 128K followed by 128K of DTCM.
> 
> Therefore, in total, barebox PBL may not exceed 0x3f000. Now that we
> have a common macro for defining boards, let's add a
> MAX_PBL_MEMORY_SIZE_$(entrypoint) into it, so check that we don't
> exceed this size at runtime.
> 
> Boards that trip over this, should consider using get_builtin_firmware_ext
> to offload binaries into barebox proper.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  images/Makefile.imx | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 50f0a64b3091..ca09853c4b6e 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -26,6 +26,7 @@ $(eval
>  ifeq ($($(strip $(1))), y)
>  	pblb-y += $(strip $(2))
>  	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
> +	MAX_PBL_MEMORY_SIZE_$(strip $(2)) = 0x3f000
>  	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.pimximg
>  	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.psimximg
>  	image-y += barebox-$(strip $(4)).img
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


