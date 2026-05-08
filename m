Delivery-date: Fri, 08 May 2026 17:34:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLNDJ-002POo-0G
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 17:34:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLNDE-0003xL-33
	for lore@pengutronix.de; Fri, 08 May 2026 17:34:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BlSgWAKqPhy9f6qwJEo3ZogxA37NUuqK0RQ0qURgASg=; b=kDmsZZ4h39D/bN+NmKCu0K/ZAr
	30K7NtGPwZvn4A2nRfOkjm/iiszvn9I7YMNLA1nCC60yRxwhj2BIxLj+Y2fzEapGFpcuBTCaxP0sp
	S/VDhER/vaEaN8boZlE4mMsEQVAHMaGTsUIHHMrpkeHDfggDC6iJC/e/2wFGXB+UVGsBDcm1vrdJr
	HzqMgIaPWwwClYmcTwMUoQQ/rrolEnWRxwkjxdMGmE/9fzWP+hPReNGYJLePfc9JgANJao6EFyJCw
	2IhipZ2D73C021KST5sXdjNH1aUcbLanvRGF9FUdLmeUzVzrRn4N12IA6kHbZo7P836i7mXVfe2v9
	LyL0wksA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMfW-00000006kVw-2q9F;
	Fri, 08 May 2026 14:59:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMfV-00000006kVI-0XIR
	for barebox@bombadil.infradead.org;
	Fri, 08 May 2026 14:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=BlSgWAKqPhy9f6qwJEo3ZogxA37NUuqK0RQ0qURgASg=; b=HYHAqJ8g25r/YQDd98WhCQleA8
	oz/gb/Irx7Tu2eXmTdANRA0Cu9x0sI1uTM9JIFAowTYt2/lu/WU7DeMa9fmuXgv6cocSiDkbkHvh9
	nYlpCDFRQLz0OgWqNOoRgHlu48yP0wiWwdxI6KVQcNPQ7F0Mq2q7rP2ldbrzzbuTaqPSMazVgeFS3
	E3wbGthBd4TCD8x/cNkNVgfrq8whQWsFX0Y1iiBrcJe/qg890KWT1TO6NzM8rFd/WqUT2FI9IsASM
	eDM8xdp103NzlSaQP77xhA4Z45ckxZF3ApV7ZEoKDUsfwavrpiqf4WsI4XjkfzPYKPZrNbx0h4NOY
	I7EI/qEg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMfR-00000006bze-2zYH
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 14:59:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wLMfO-0004Pi-Vo; Fri, 08 May 2026 16:59:03 +0200
Message-ID: <dc06ff49-efe0-49eb-a9b2-47c728c88a00@pengutronix.de>
Date: Fri, 8 May 2026 16:59:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
 <20260508-v2025-11-0-topic-riotboard-v1-1-42e6134c3de6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260508-v2025-11-0-topic-riotboard-v1-1-42e6134c3de6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_155906_132686_E82E4E75 
X-CRM114-Status: GOOD (  14.12  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX: riotboard: add tzasc.h to flashheader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/8/26 4:43 PM, Fabian Pflug wrote:
> Even though the riotboard is a i.MX6S, the flashheader is the same for
> QDLS variants. It allows to integrate OP-TEE and does not hinder in
> normal operation.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
> index 1f27163417..335f5033ce 100644
> --- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
> +++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
> @@ -67,4 +67,5 @@ wm 32 MX6_MMDC_P0_MDPDC 0x00025565
>  wm 32 MX6_MMDC_P0_MAPSR 0x00011006
>  wm 32 MX6_MMDC_P0_MDSCR 0x00000000
>  
> +#include <mach/imx/imx6q-tzasc.h>
>  #include <mach/imx/habv4-imx6-gencsf.h>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



