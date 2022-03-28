Delivery-date: Mon, 28 Mar 2022 10:58:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlD8-008olW-64
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlDA-0001Ub-GX
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:58:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8zvoZTnkpmEvl57eZ2ZcO5EkmHtqNzOq2EFwo+O0f1A=; b=cgKsUWBXiNo+TsHbAknPxi2EEK
	JBHviTHuoGwqjoa17D6uEysC91E3hU5tUXgcAldPWHdm5SvlIDFnOFU9NtmnnY9fdPNLt1Z2aixWq
	Q3OeuQeAD3lyguip+OnchGX4JGNogl22RR2z8MkJUyrWgXUpsF7GuYe4hSLr0yiGAfznvkuWbHdLF
	zzrGgEB/eqIlg9ltN2i/Ahuf35SqF6/3IPn+qW/OzyxnkMeYPk+7AtlngNKeLFHPMM9SIrnUn+f0N
	xiqIGo41QHAiEmiqmCO5AbRI5td5bCCvkHeIM3raGbPNlLDwmj9LiV72wimV1/V+Yhb5hFYH6J/Iw
	QSijAJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlC2-007x3S-Py; Mon, 28 Mar 2022 08:57:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlBx-007x1z-FM
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:57:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlBw-0001Jc-8V; Mon, 28 Mar 2022 10:57:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlBv-0005vP-Uu; Mon, 28 Mar 2022 10:57:35 +0200
Date: Mon, 28 Mar 2022 10:57:35 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085735.GP12181@pengutronix.de>
References: <20220318153047.733241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220318153047.733241-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:57:26 up 107 days, 17:43, 85 users,  load average: 0.24, 0.28,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015737_541333_26033FDB 
X-CRM114-Status: GOOD (  20.33  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] sandbox: board: add stickypage.bin into .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 18, 2022 at 04:30:47PM +0100, Ahmad Fatoum wrote:
> Otherwise, it shows up in version control for in-tree builds.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/board/.gitignore | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/.gitignore b/arch/sandbox/board/.gitignore
> index 03987a700942..c0acd24b98b5 100644
> --- a/arch/sandbox/board/.gitignore
> +++ b/arch/sandbox/board/.gitignore
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  barebox.lds
> +stickypage.bin
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

