Delivery-date: Tue, 08 Mar 2022 09:20:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRV57-004RHV-DK
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 09:20:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRV55-0002A6-NU
	for lore@pengutronix.de; Tue, 08 Mar 2022 09:20:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n4E9DnItXyBIrbXFlUJlfigeCeZFD5BiZoYnCVZQBrM=; b=z5Awr+6SGwsFEzh3QJ4qgxcQjn
	/7IBqNEv1wspNjDZ4hxmrf95G8B10kZ0GgWdOjwP9NsIP3go+1Qu7wMVBD8cLSDdjls6hQWdpJA4t
	3aATWqWWb5PRYqh2kX9PxL7C3aXxKrfhSJsC5nGY9hnZekhYIHUkDMzh3oHmUhCAl98wpKiyv3DAx
	52aPiejcWS7YbIF8NS/K4Nl3K/Yf5NLD9xo6fyim3I8ry5oE8MHouRO0uYFVQJcIWFhKlH2NsFvE1
	rUOcme018vJ3b7kXyhPvEJM3OPV4+HrMsW0liKgqM8ap0iqMyU2XMQBy3xH/2xXCioPdiFeR0DLaW
	eCXBTYxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRV3l-003DqS-1I; Tue, 08 Mar 2022 08:19:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRV3f-003Dow-NH
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 08:19:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRV3e-0001oC-5N; Tue, 08 Mar 2022 09:19:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRV3d-0004Eu-T9; Tue, 08 Mar 2022 09:19:01 +0100
Date: Tue, 8 Mar 2022 09:19:01 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220308081901.GF405@pengutronix.de>
References: <20220307170106.3937198-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220307170106.3937198-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:16:27 up 87 days, 17:02, 80 users,  load average: 0.14, 0.15, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_001903_790832_3D2FBF71 
X-CRM114-Status: GOOD (  25.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] clk: harden NULL handling in
 clk_hw_to_clk/clk_to_clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 07, 2022 at 06:01:05PM +0100, Ahmad Fatoum wrote:
> As clk_hw::clk is the first member and there may no be leading padding,
> clk_hw_to_clk(NULL) == clk_to_clk_hw(NULL) == NULL. This would break if
> we moved struct clk around, so make this more robust by using
> IS_ERR_OR_NULL. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/clk.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index c0e998e54ae6..7fd835c35e51 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -433,12 +433,14 @@ struct clk_hw {
>  
>  static inline struct clk *clk_hw_to_clk(const struct clk_hw *hw)
>  {
> -	return IS_ERR(hw) ? ERR_CAST(hw) : (struct clk *)&hw->clk;
> +	return IS_ERR_OR_NULL(hw) ? ERR_CAST(hw)
> +				  : (struct clk *)&hw->clk;
>  }

This one doesn't apply to master, but on next. Applied it there instead.

Sascha

>  
>  static inline struct clk_hw *clk_to_clk_hw(const struct clk *clk)
>  {
> -	return IS_ERR(clk) ? ERR_CAST(clk) : (struct clk_hw *)container_of(clk, struct clk_hw, clk);
> +	return IS_ERR_OR_NULL(clk) ? ERR_CAST(clk)
> +				   : (struct clk_hw *)container_of(clk, struct clk_hw, clk);
>  }
>  
>  struct clk_div_table {
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

