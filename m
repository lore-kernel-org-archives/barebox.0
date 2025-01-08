Delivery-date: Wed, 08 Jan 2025 15:38:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXCC-000m7p-1a
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:38:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXCC-0001db-Ar
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:38:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oRiyOKNBw35HbppYg5qDx03V1hdZznSSUKsuRJ8TOaE=; b=WeOWA0Z9i1xId0NgrkGmB+CHwa
	6Dm9EB2xx0e9v0DCFU6yeqKxY8G+kb4YBLngBi9OZ9HTjT9SB4PlTaqy7Co3RV0phCIkKKNTpTr/L
	m2cJWsjvQVDmvzsYnxbqQ2aouusxNWoMnVriDV3kOAqSytX/g4AbZes1SCi8iZEnreFxhI3NNe1b+
	CJ9GY+oU8mhTH9ixgo+OPQ2b7FVXGN8IpnOelQJuqVX4qE2jaott8gsbPVvPSSP5tg7MKeKb5103F
	c6O1DRYf5Q32K3lPgf1j1eE0JLWwcbVAsVwcl93wKbX+FSxoyY2QTsWRp3Ld34ZBSaPizlVkxf04r
	TnLki9yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXBj-00000008oiC-1zLu;
	Wed, 08 Jan 2025 14:37:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVX6N-00000008njw-2BIi
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:32:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tVX6K-0000HP-TE; Wed, 08 Jan 2025 15:32:04 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tVX6J-007XLF-2n;
	Wed, 08 Jan 2025 15:32:04 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tVX6K-00BXIp-1l;
	Wed, 08 Jan 2025 15:32:04 +0100
Date: Wed, 8 Jan 2025 15:32:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z36MZJtzptPAdmsI@pengutronix.de>
References: <Z31B5rxOomVzKR_1@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z31B5rxOomVzKR_1@hephaistos>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_063207_556223_42F23E7A 
X-CRM114-Status: GOOD (  23.94  )
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
Subject: Re: =?iso-8859-15?B?W1BBVENIXaBBUk0=?= =?iso-8859-15?Q?=3A?=
 beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Konsti,

On Tue, Jan 07, 2025 at 04:01:58PM +0100, Konstantin Kletschke wrote:
> Some Beaglebone Black devices are not able to cope with a warm start.
> When system is powered up and booted hitting reset button (S1) or
> issuing "reset" at barebox prompt the new instance of first stage gets
> stuck after PLL init.
> 
> Adding a delay of ~1.8ms in lowlevel.c after PLL init solves this.
> 
> Signed-off-by: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
> ---
>  arch/arm/boards/beaglebone/lowlevel.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
> index 5dc49dfaaf..ccae1d1122 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -97,6 +97,12 @@ extern char __dtb_z_am335x_boneblack_start[];
>  extern char __dtb_z_am335x_bone_common_start[];
>  extern char __dtb_z_am335x_bone_start[];
> 
> +static void __udelay(int us)
> +{
> +        volatile int i;
> +       for (i = 0; i < us * 3; i++);
> +}
> +
>  /**
>   * @brief The basic entry point for board initialization.
>   *
> @@ -135,6 +141,7 @@ static noinline int beaglebone_sram_init(void)
>         am33xx_enable_uart0_pin_mux();
>         omap_debug_ll_init();
>         putc_ll('>');
> +       __udelay(1000); // Adding delay of 1.8ms

Calling udelay(1000) and adding a comment saying it delays 1.8ms looks
inconsistent. Maybe better count up to 2 in __udelay() above which makes
it more accurate and then call __udelay(2000) if necessary.

Drop the comment, because it's obvious what the delay does. Better add a
comment why you are doing so (i.e. copy parts of the commit message as
comment).

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


