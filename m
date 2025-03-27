Delivery-date: Thu, 27 Mar 2025 10:13:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjIS-004ofP-2O
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 10:13:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjIS-0001rX-6C
	for lore@pengutronix.de; Thu, 27 Mar 2025 10:13:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3d9OCaJqJS5YuyBvf9M7AQGo0ngwfDflEp1/8cWMaZ4=; b=OwxJ3Cym5tuWzu1uHxH8uP2nZ7
	B7gN3ase5YTf65aFOHRWG2urrqQnkwz2Cq/VA/oa9tsSDI/iMXLStEFWA+32Yp2KzfZXmsR9lseYa
	jssc1Lpzq6yGAih2JMJFYwVTszAH4FeWWeWdFQ9UKozEeSnd1hVnTnw4b5S2WPqqyfCAfONCQOpRU
	nVs+JfXR5MSeCEb4gWyy+f6oVQNgOcB/rdPFZG9CYcNoWN3BT/rvCcSh3dVFRH/4dcoGqeUKrSGtP
	6CUH9EMM6rV+IpGOhIYDLyXTPEwN2948tH+2sc/mV5ghsK8qrSwgSN2JGxLKC+sn85uAgqiQyLAGn
	RfFB620w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjHm-0000000AXbF-3p0P;
	Thu, 27 Mar 2025 09:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjGr-0000000AXTm-06Al
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 09:11:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1txjGp-0001VA-Lt; Thu, 27 Mar 2025 10:11:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1txjGp-001u69-1a;
	Thu, 27 Mar 2025 10:11:27 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1txjGp-001vzc-1I;
	Thu, 27 Mar 2025 10:11:27 +0100
Date: Thu, 27 Mar 2025 10:11:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z-UWP0f_W_AhKWRG@pengutronix.de>
References: <20250327074814.3714019-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327074814.3714019-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_021129_057685_9A32C696 
X-CRM114-Status: GOOD (  20.41  )
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
Subject: Re: [PATCH] fixup! complete: give device_param_complete a flags
 parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 27, 2025 at 08:48:14AM +0100, Ahmad Fatoum wrote:
> When completing an existing variable, we want a trailing assignment, so
> the use can just start typing the value.
> 
> This was the behavior before the commit being fixed up broke it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/complete.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/complete.c b/common/complete.c
> index 6cb674a0cc9c..5327944ca93b 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -469,7 +469,7 @@ int complete(char *instr, char **outstr)
>  		} else {
>  			command_complete(&sl, instr);
>  			path_command_complete(&sl, instr);
> -			env_param_complete(&sl, instr, 0);
> +			env_param_complete(&sl, instr, DEVPARAM_COMPLETE_ASSIGNMENT);
>  		}
>  		if (*instr == '$')
>  			env_param_complete(&sl, instr + 1, DEVPARAM_COMPLETE_DOLLAR);
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


