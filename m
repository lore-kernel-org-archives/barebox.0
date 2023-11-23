Delivery-date: Thu, 23 Nov 2023 08:28:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r648d-005UXE-1k
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 08:28:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r648d-0007Pe-E7
	for lore@pengutronix.de; Thu, 23 Nov 2023 08:28:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2OdlSbTmKFiaEKnulhXnw8WHoryLxcVqBu+QhxtTxo8=; b=RgIJV3gREka4DtyZRqQk0P10oF
	odYMRUDenA4WDBWJuYOriRIqnAiNW3fCxdr+2DFOu87BTA5Tf/fvUUA33pQaEqXvIgnH3kucBvH2s
	s3WIv254JrnJekR6eXgQSteJwZCwO18o9J5705XvcFP7ou+jySG9Fqnw+cR12hDqo9G8Q0D0uhwn7
	8ectPcIntMS6PqDhJSJK/DgV9cAPYgC/lZQYFILp1FXMyrwuCgv6juMbRVTj0LeccT0fg/gq4pQJy
	v8hd84wIUvyjT85NfGNGXQGSS3etPDuEEI2wPZh/lD6MHp+In7bhvwBoD1N/U6AEe9oY2GfLULVS4
	DLwhHWxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r647T-0042IO-1v;
	Thu, 23 Nov 2023 07:27:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r647Q-0042HY-03
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 07:27:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r647O-0007Co-Pt; Thu, 23 Nov 2023 08:27:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r647O-00AzQ5-Dc; Thu, 23 Nov 2023 08:27:22 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r647O-003QHT-BP; Thu, 23 Nov 2023 08:27:22 +0100
Date: Thu, 23 Nov 2023 08:27:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123072722.GI3359458@pengutronix.de>
References: <20231122181535.846936-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122181535.846936-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_232724_057658_2E3108DF 
X-CRM114-Status: GOOD (  35.00  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: document struct clk_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 07:15:35PM +0100, Ahmad Fatoum wrote:
> We already import the API from Linux, so let's import the documentation
> for reference as well and add a note about clk_unprepare/clk_prepare.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/clk.h | 65 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index edcc43d9f1df..7657ab6fc245 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -240,6 +240,71 @@ static inline void clk_put(struct clk *clk)
>  #define CLK_GATE_SET_TO_DISABLE	(1 << 0)
>  #define CLK_GATE_HIWORD_MASK	(1 << 1)
>  
> +/**
> + * struct clk_ops -  Callback operations for hardware clocks; these are to
> + * be provided by the clock implementation, and will be called by drivers
> + * through the clk_* api.
> + *
> + * @init:	Perform platform-specific initialization magic.
> + *		This is not used by any of the basic clock types.
> + *		This callback exist for HW which needs to perform some
> + *		initialisation magic for CCF to get an accurate view of the
> + *		clock. It may also be used dynamic resource allocation is
> + *		required. It shall not used to deal with clock parameters,
> + *		such as rate or parents.
> + *		Returns 0 on success, -EERROR otherwise.
> + *
> + * @enable:	Prepare and enable the clock atomically. This must not return
> + *		until the clock is generating a valid clock signal, usable by
> + *		consumer devices.
> + *
> + * @disable:	Unprepare and disable the clock atomically.
> + *
> + * @is_enabled:	Queries the hardware to determine if the clock is enabled.
> + *		Optional, if this op is not set then the enable count will be
> + *		used.
> + *
> + * @recalc_rate	Recalculate the rate of this clock, by querying hardware. The
> + *		parent rate is an input parameter. If the driver cannot figure
> + *		out a rate for this clock, it must return 0. Returns the
> + *		calculated rate. Optional, but recommended - if this op is not
> + *		set then clock rate will be initialized to 0.
> + *
> + * @round_rate:	Given a target rate as input, returns the closest rate actually
> + *		supported by the clock. The parent rate is an input/output
> + *		parameter.
> + *
> + * @set_parent:	Change the input source of this clock; for clocks with multiple
> + *		possible parents specify a new parent by passing in the index
> + *		as a u8 corresponding to the parent in either the .parent_names
> + *		or .parents arrays.  This function in affect translates an
> + *		array index into the value programmed into the hardware.
> + *		Returns 0 on success, -EERROR otherwise.
> + *
> + * @get_parent:	Queries the hardware to determine the parent of a clock.  The
> + *		return value is a u8 which specifies the index corresponding to
> + *		the parent clock.  This index can be applied to either the
> + *		.parent_names or .parents arrays.  In short, this function
> + *		translates the parent value read from hardware into an array
> + *		index.
> + *
> + * @set_rate:	Change the rate of this clock. The requested rate is specified
> + *		by the second argument, which should typically be the return
> + *		of .round_rate call.  The third argument gives the parent rate
> + *		which is likely helpful for most .set_rate implementation.
> + *		Returns 0 on success, -EERROR otherwise.
> + *
> + * @set_phase:	Shift the phase this clock signal in degrees specified
> + *		by the second argument. Valid values for degrees are
> + *		0-359. Return 0 on success, otherwise -EERROR.
> + *
> + * @get_phase:	Queries the hardware to get the current phase of a clock.
> + *		Returned values are 0-359 degrees on success, negative
> + *		error codes on failure.
> + *
> + * Unlike Linux, there is no differentiation between clk_prepare/clk_enable
> + * and clk_unprepare/clk_disable in barebox as all work is atomic.
> + */
>  struct clk_ops {
>  	int 		(*init)(struct clk_hw *hw);
>  	int		(*enable)(struct clk_hw *hw);
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


