Delivery-date: Tue, 30 May 2023 08:29:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3src-002VYy-1H
	for lore@lore.pengutronix.de; Tue, 30 May 2023 08:29:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3srZ-0008OX-K7
	for lore@pengutronix.de; Tue, 30 May 2023 08:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YyX9OE8g5ClZq1DSN6YHpUzXn688IyFcLQmiQrr/rhQ=; b=koHduk13S/hVbxKqywlKg6tDa3
	ULt40jn5sz8SkvXgZdg8LF6FO03Fjc6uD7QG4IYyZJCzO93tGxzu/QXVy10mRoOODYb/H8wlnRN+l
	vPKgUHga8JJFdgzJ3/vwn9ClqnVRiWmwgPVB3sA9xQp8MBZ1VRR+elTcyQpj00vrSmxwivUE7EOCe
	kshscgtHdjNRaIByMc8QwZN1KCXw1B4OR8lReu0prpNJA+MKl/W6GI0zcUWEI/tCPdH+Rfgs1vUFd
	tmYlQXIH0R3/vPTAq3wQ51tt+KNeM+NuZwXwtlzJOXjrj6VSWV28fmxECwOgxoZfqcyckBb7P019M
	JkrgNpUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3spa-00CZTz-2D;
	Tue, 30 May 2023 06:27:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3spW-00CZSu-2z
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 06:27:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3spO-0008HT-BO; Tue, 30 May 2023 08:27:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3spN-0006H5-P1; Tue, 30 May 2023 08:27:29 +0200
Date: Tue, 30 May 2023 08:27:29 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, ahmad@a3f.at, afa@pengutronix.de,
	kernel@pengutronix.de, patchwork-jzi@pengutronix.de
Message-ID: <20230530062729.GW17518@pengutronix.de>
References: <20230526165947.1079052-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526165947.1079052-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_232739_006975_752C6B56 
X-CRM114-Status: GOOD (  25.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] imx-usb-loader: fixes in displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 26, 2023 at 06:59:46PM +0200, Johannes Zink wrote:
> As Ahmad pointed out in [1], compilation failed if the prepare make
> target was not called before compiling the imx-usb-loader, which caused
> the generated file not to exist when building for the sandbox target and
> broke the build.
> 
> Instead of continuing to pursue the approach discussed in [2], a rather
> straight-foreward approach of adding utsrelease.h as a dependency to
> scripts has been chosen, as now the already-existing infrastucture can
> be used instead of duplicating code in the Makefile.
> 
> Also, the version number was only set for the Host Tool, but not in the
> target tool, which the second patch of this series fixes.
> 
> As the original patch was accidentaly sent out as a fixup, and as this
> series chooses a slightly different approach, I decided to open a new
> series.
> 
> Best regards
> Johannes
> 
> [1] https://lore.barebox.org/barebox/20230525181320.2277320-1-ahmad@a3f.at/
> [2] https://lore.barebox.org/barebox/20230526070847.52738-1-j.zink@pengutronix.de/
> 
> Johannes Zink (2):
>   imx-usb-loader: fix compilation if prepare make target was not called
>     before
>   imx-usb-loader: also add version information on target tool
> 
>  Makefile             | 2 +-
>  scripts/imx/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


