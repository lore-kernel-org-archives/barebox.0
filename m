Delivery-date: Tue, 07 Dec 2021 10:13:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWXu-0007xD-5D
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:13:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWXs-0002JI-Qf
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:13:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZoffsNLlgrdzhx6LFOiUAJuBvanrvKMtHZu2sv4mzDM=; b=rMhqhqfTS2UZzWqw7PwWdfnLeB
	6L0gChF9GjLq/6EReVAPv0TqG0/SWMWVcr5le3dcujCRVQqepEsM+mSefI5Le1fhBgU8SA7dwf7Tb
	yCiBwpQdEZE0nWfI4C7wIz/XjY2IgfdAQ7EB07yu6SHeFwqaulZDj5KsbbDsifyBOfQ5pSeXZtimF
	FjbU025dM5DM98NtsGN32267S9UjmWmGyQ57n2trOaSSuipHbBf89avFGpm1AQDFxn1nYlL0SEdh+
	I2RiIkXpCfRWrZPAlfF32J4IyUNrQxnOhI4KzhMP2ZljWfNCT4JIPDuRF72oONyM8UmgbNJvawHOz
	oWNETmOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWWL-007jti-Qc; Tue, 07 Dec 2021 09:12:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWTN-007ieu-Q0
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:09:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWTM-000159-Hi; Tue, 07 Dec 2021 10:09:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWTM-0003AR-8a; Tue, 07 Dec 2021 10:09:16 +0100
Date: Tue, 7 Dec 2021 10:09:16 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207090916.GI28260@pengutronix.de>
References: <20211202074231.195206-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211202074231.195206-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:07 up 292 days, 12:32, 143 users,  load average: 0.03, 0.23,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_010917_903395_07507E50 
X-CRM114-Status: GOOD (  22.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip rk3568 EVB: git ignore sdram-init.bin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 02, 2021 at 08:42:31AM +0100, Ahmad Fatoum wrote:
> Build expects this file there, but it shouldn't be checked in.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/rockchip-rk3568-evb/.gitignore | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 arch/arm/boards/rockchip-rk3568-evb/.gitignore

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/.gitignore b/arch/arm/boards/rockchip-rk3568-evb/.gitignore
> new file mode 100644
> index 000000000000..f458f794b54c
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3568-evb/.gitignore
> @@ -0,0 +1 @@
> +sdram-init.bin
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

