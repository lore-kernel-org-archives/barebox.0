Delivery-date: Mon, 28 Feb 2022 10:32:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcOD-00D5RN-Ij
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 10:32:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcOC-0004xl-7e
	for lore@pengutronix.de; Mon, 28 Feb 2022 10:32:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+06Q8Q48S/4bic2H5poKpi9o0aM2b7+39247vEwucK4=; b=K7vipxNePFNwoEDaNNOc2hdmtQ
	G6MSBKz8Cxkj0BJj4BmB8hShLdpeZlB7VjLzDT1oCANa7aXvU8/nC3mYjA7Dk8uz/OPTfgQzn57bE
	1vIRWz28U7cY2NSYgBglJDpZWfgAOAqlqK+JRpAd/I+zTo+9RWFhTiVv/SAM+v09gim81L1oqJVLO
	Orgv36om+einUrFSvwBe5XGieMOvQLtzudP6oqJGIZMR8EIk78u+Y680qCJr5Ri9NV14AJFw5uLbE
	9HnqhTr38A3J7YrU5RM3epNvm69JAbRjX+8XBOw1Z8sQM1Alvcm0Fcz4lKAdVrXNr8iY+jdfHbha1
	rP45vJDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcMr-00BGEV-O2; Mon, 28 Feb 2022 09:30:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcMn-00BGDZ-Dh
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 09:30:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcMm-0004gw-6x; Mon, 28 Feb 2022 10:30:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcMl-0002iR-TM; Mon, 28 Feb 2022 10:30:51 +0100
Date: Mon, 28 Feb 2022 10:30:51 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220228093051.GG19585@pengutronix.de>
References: <20220224135231.257713-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220224135231.257713-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:30:41 up 79 days, 18:16, 90 users,  load average: 0.32, 0.22, 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_013053_482144_84F5F947 
X-CRM114-Status: GOOD (  24.23  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: tutorial: adjust command description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 24, 2022 at 02:52:31PM +0100, Ahmad Fatoum wrote:
> Current text can be quite confusing for the prev alias:
> 
>   prev - print next tip for barebox tutorial
> 
> Instead, change it to:
> 
>   prev - navigate the barebox tutorial
> 
> Which is correct for both next and prev.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/tutorial.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/tutorial.c b/commands/tutorial.c
> index 81e2f93716cd..444177764311 100644
> --- a/commands/tutorial.c
> +++ b/commands/tutorial.c
> @@ -152,7 +152,7 @@ static __maybe_unused const char *const prev_alias[] = { "prev", NULL};
>  BAREBOX_CMD_START(next)
>  	.cmd		= do_tutorial_next,
>  	.aliases	= prev_alias,
> -	BAREBOX_CMD_DESC("print next tip for barebox tutorial")
> +	BAREBOX_CMD_DESC("navigate the barebox tutorial")
>  	BAREBOX_CMD_OPTS("[-hr] [STEP]")
>  	BAREBOX_CMD_HELP(cmd_next_help)
>  	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
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

