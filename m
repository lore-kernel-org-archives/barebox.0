Delivery-date: Tue, 02 Jul 2024 20:52:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOicd-000vdI-14
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 20:52:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOicc-0000Dw-PG
	for lore@pengutronix.de; Tue, 02 Jul 2024 20:52:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LkhjE0P1sLCW8+6i+u9Fr96G0cK9nxW6w04eZi6nDnU=; b=wKbRWsrenRQGsK79j5GJEvMUzF
	TjFof9EgTW+zw6p97REibIi/6eKtiTsMD8UjeTMtYhdweAyN1AOjlPIE9vH55EaHlpq/+n5cSbre0
	+O8VQt2JJKljM3HzVOvw4iy4IjxKPF4Ly9Dx3Qk0annx5YqULBAHWgq/Gsfb98Nebcc2b1MqrjvWA
	V98ijbNYe/7qqgwvxFT4PanneWxqOZ0JAts62jhr3fZwkcn+jwrvlMASU8W1bfqgNM2jVmOaR47+9
	VqOgz6cBXrY3/1otqO2D1+RjWEcHWsSj7iGwKrEjZkoCKjrO8G1YOoO2gkujG39u7mUsHQ8TOEj1w
	IQnkBvJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOic1-00000007gT6-0dao;
	Tue, 02 Jul 2024 18:52:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOibx-00000007gSZ-2Dv9
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 18:52:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOibt-0000A0-Tg; Tue, 02 Jul 2024 20:52:13 +0200
Message-ID: <24b75530-3333-4a89-8a6d-1b2893e7abc3@pengutronix.de>
Date: Tue, 2 Jul 2024 20:52:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20240702173159.88071-1-antonynpavlov@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240702173159.88071-1-antonynpavlov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_115217_604587_8708A562 
X-CRM114-Status: GOOD (  17.26  )
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
Subject: Re: [PATCH] Documentation: boards: stm32mp: fix DK-1/DK-2 DIP switch
 formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.07.24 19:31, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for fixing,
Ahmad

> ---
>  Documentation/boards/stm32mp.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
> index 2d6e954b79c..79e3edcb503 100644
> --- a/Documentation/boards/stm32mp.rst
> +++ b/Documentation/boards/stm32mp.rst
> @@ -210,7 +210,7 @@ Boot mode on the DK board is set via a dual DIP switch on the backside of the PC
>  
>  If the board is set up, so the HDMI side looks up and the micro-USB side is to
>  the left and the backside with the DIP-Switch is to the user, it can be configured
> -as follows:
> +as follows::
>  
>         +-------+
>   BOOT2 | O O-- |

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



