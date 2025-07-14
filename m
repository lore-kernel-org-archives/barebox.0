Delivery-date: Mon, 14 Jul 2025 09:34:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDhX-00HKX8-15
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 09:34:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDhW-0004YG-Op
	for lore@pengutronix.de; Mon, 14 Jul 2025 09:34:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hu3K0h5zfIBR/zceaVsJ3/aWDAYIvPcfAqYhiFoazs=; b=44PfTG5F3epEGS
	m43G5KDcnC2s/IE9B1SoRU3qu6gbTRjKivv6lN9qq0YUN09SHCvXdI+YGUz3ol+aYUfbA2L9HGKB4
	Jx+R7/pLb1JSNDFdSKJNyAybTX4/WQYv0RLr05SVkNI8nn5bmRzuiPauPpsnC2DUH579JgyAa9o6x
	BhwNoLrUvZPuuPQlrdNJXfY5iCJkyrQ02NHC0UnvWiyxAQeYfJ5QuPiKJ0kTyFum6jQONvBrDALlk
	0fHXuh8NFTnxWlvyMZ8iohe2LTjaL6v9I4Zn4XIeDBv3Da5jcMximfN9czXQ8ePfCo8jGjO4Vxdoo
	I3/Ncue0nfDnuP/suoSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDgx-00000001U3J-3yWu;
	Mon, 14 Jul 2025 07:33:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDOn-00000001RaH-3SDr
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 07:14:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ubDOm-0001nR-KP; Mon, 14 Jul 2025 09:14:52 +0200
Message-ID: <652347d4-0f1f-4219-aa0a-3f17d7bcb947@pengutronix.de>
Date: Mon, 14 Jul 2025 09:14:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>, barebox@lists.infradead.org
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
 <20250707055331.2355809-3-gwenj@trabucayre.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250707055331.2355809-3-gwenj@trabucayre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_001453_878561_07BC9707 
X-CRM114-Status: GOOD (  20.95  )
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
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>, Johannes Roith <johannes@gnu-linux.rocks>, Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 3/3]
 arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console: fixed console
 name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.07.25 07:53, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> When trying to boot Linux no output from Linux is printed in the
> console. Linux devicetree only enables one UART (connected to USB<->UART
> interface) and has specified in Linux devicetree this one is called
> ttyPS0 instead of ttyPS1.
> This patch changes console name.
> 
> Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

Thanks for your patch. The modern way is to have the serial driver record the
TTY name used by Linux and removed hardcoded console= settings altogether.

I just Cc'd you on a patch that does that followed by one that removes this
environment file here. The series is untested, so would be nice if you
could give it a test.

Cheers,
Ahmad

> ---
>  arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
> index 6c9f9dabcf..ebb44efc48 100644
> --- a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
> +++ b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
> @@ -1 +1 @@
> -console=ttyPS1,115200
> +console=ttyPS0,115200


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


