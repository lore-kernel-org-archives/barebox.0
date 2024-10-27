Delivery-date: Sun, 27 Oct 2024 10:36:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4zgz-001O9v-2e
	for lore@lore.pengutronix.de;
	Sun, 27 Oct 2024 10:36:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4zh0-0005vM-EO
	for lore@pengutronix.de; Sun, 27 Oct 2024 10:36:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IypABl1iI//MzqPS4KKlpzKuzHOi+DxMIgeSesyElUo=; b=z28laxV5y4H7VOeab6tKbzqOOe
	ZK1Opg55M49AzU5AVKQI/LUvaDKWD4oNGaJA4OSGE970s8XorDyESPbr/aCQFRO7LvgQ+NT+w3mcJ
	aWwsglWdHExUmG9In68Llkc3fuD8asziJC50Q4UeFCW6ozAyqYOk4YBekAkGvC+vf30wK9ERVLFd/
	rKgHpygQvLpwl/G6Jy9tBRF9IEcBmwgfNwZ91D/Ltv0doTwpMTdOY3HE77+crGvLy1TLESsSjgelD
	wPI9nu4ukrfQ19GOOTtO+xdhbidGduF/mGWDL8DdX0Rf9Wczl+wDEUuS2KCT93oqYwxNxe/WpmFHt
	IXTobx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4zgS-00000007uhG-48rF;
	Sun, 27 Oct 2024 09:35:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4zgO-00000007ugl-2Jxo
	for barebox@lists.infradead.org;
	Sun, 27 Oct 2024 09:35:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t4zgK-0005rj-Gy; Sun, 27 Oct 2024 10:35:32 +0100
Message-ID: <817f80b4-0866-4364-8654-10908fd2a536@pengutronix.de>
Date: Sun, 27 Oct 2024 10:35:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: alaanourali@gmail.com, barebox@lists.infradead.org
Cc: A.fatoum@barebox.org
References: <20241027081753.256921-1-alaanourali@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241027081753.256921-1-alaanourali@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_023536_633206_2095F239 
X-CRM114-Status: GOOD (  20.18  )
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
Subject: Re: [PATCH] Fix unresponsive SDL GUI by handling SDL_QUIT events
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

alternative title suggestion:

sandbox: sdl: fix unresponsive GUI by handling SDL_QUIT events

You can check git log for individual files to see the style of commit
message titles. No need to resend for just that though, I think.

On 27.10.24 09:17, alaanourali@gmail.com wrote:
> From: Alaa Ali <alaanourali@gmail.com>
> 
> The SDL GUI in the scanout function can appear unresponsive to the
> operating system, as it lacks an event handler. This patch adds a
> new function, handle_sdl_events(), which processes SDL events to
> ensure the window can respond to close requests.
> 
> This addresses issues where Linux might think the SDL window is
> unresponsive, allowing it to handle SDL_QUIT events properly and
> initiate shutdown.
> 
> Signed-off-by: Alaa Ali <alaanourali@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  arch/sandbox/os/sdl.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
> index 13178abfc0..0fc281b7b8 100644
> --- a/arch/sandbox/os/sdl.c
> +++ b/arch/sandbox/os/sdl.c
> @@ -13,6 +13,15 @@ static void sdl_perror(const char *what)
>  	printf("SDL: Could not %s: %s.\n", what, SDL_GetError());
>  }
>  
> +static void handle_sdl_events(void)
> +{
> +    SDL_Event event;
> +    while (SDL_PollEvent(&event)) {
> +        if (event.type == SDL_QUIT)
> +        	SDL_AtomicSet(&shutdown, true);
> +    }
> +}
> +
>  static struct sdl_fb_info info;
>  static SDL_atomic_t shutdown;
>  SDL_Window *window;
> @@ -47,6 +56,7 @@ static int scanout(void *ptr)
>  	while (!SDL_AtomicGet(&shutdown)) {
>  		SDL_Delay(100);
>  
> +		handle_sdl_events();  /* Handle events like window close */
>  		SDL_UpdateTexture(texture, NULL, buf, surface->pitch);
>  		SDL_RenderClear(renderer);
>  		SDL_RenderCopy(renderer, texture, NULL, NULL);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


