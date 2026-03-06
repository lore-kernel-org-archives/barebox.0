Delivery-date: Fri, 06 Mar 2026 11:27:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySOn-008e7B-0f
	for lore@lore.pengutronix.de;
	Fri, 06 Mar 2026 11:27:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySOn-0006dI-HQ
	for lore@pengutronix.de; Fri, 06 Mar 2026 11:27:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o5RDa65G3G/lPJnby1oVc5u0j024ABdvpU2OsgwB29U=; b=CRR9xqEpGbkcJU2LagKL3ycF8v
	nFhFw0RjsgE300qS6oN26GIr1Nt3mkHJx0n0GfBcSlvUyl83C+dZe4sLAU6Lrt2bFLZ75s5tFej88
	gYHW0MVfgbl6VdN5AYVCTI2+gbRkHSCetfVHGC3PbAxYIrye5rl9TVnlrSe2XT/9L7xwqkstazu1s
	dza5bihkqDk9F+yg2jX+m21ZGzDsT37k/YyhJoBR7mEVLX/oQPOV7jRHUmOLMBpeFCn+5bc8u09+8
	H1l/i7Z2J/+72tNmCD0Sv3pELgblesJoDWaHErUS5hEgmS5eN8NMTW8FLjDvGioKUzWoBM35J8W8v
	ewRVb70A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySOO-00000003RXu-25ee;
	Fri, 06 Mar 2026 10:26:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySOM-00000003RX9-1ZhD
	for barebox@lists.infradead.org;
	Fri, 06 Mar 2026 10:26:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vySOJ-0006Q6-G8; Fri, 06 Mar 2026 11:26:43 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vySOH-0042At-37;
	Fri, 06 Mar 2026 11:26:43 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vySOJ-00000004AFK-0ulu;
	Fri, 06 Mar 2026 11:26:43 +0100
Date: Fri, 6 Mar 2026 11:26:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <ulfwp773ltirh4dbvcllje5sy7cxd2lolao6m4muqmn7lldcsq@zscclgrl3jso>
References: <20260306102038.4065007-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306102038.4065007-1-f.pflug@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_022646_417406_944F420A 
X-CRM114-Status: GOOD (  20.84  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i.MX: hab: write srk lock with hab command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On 26-03-06, Fabian Pflug wrote:
> The write_srk_hash functions already support the flag to write the SRK
> lock, but it is never used in barebox. To prevent an attacker from
> calculating an SRK hash that has the same bits set as the current SRK
> hash, but with maybe more, we lock the SRK hash to prevent turning bits.
> 
> Writing the lock twice will probably result in unusable garbage and the
> hab command itself already is written in a way to write the complete
> hash and not parts of it.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  commands/hab.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/hab.c b/commands/hab.c
> index 8ae943a4c8..b8ef770066 100644
> --- a/commands/hab.c
> +++ b/commands/hab.c
> @@ -14,7 +14,7 @@ static int do_hab(int argc, char *argv[])
>  {
>  	int opt, ret, i;
>  	char *srkhashfile = NULL, *srkhash = NULL;
> -	unsigned flags = 0;
> +	unsigned flags = IMX_SRK_HASH_WRITE_LOCK;

This would fix only the hab cmd, not the C-API. Instead we should fix
the C-API to write the LOCK after the SRK was burned/fused.

Regards,
  Marco

>  	u8 srk[SRK_HASH_SIZE];
>  	int lockdown = 0, info = 0;
>  
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


