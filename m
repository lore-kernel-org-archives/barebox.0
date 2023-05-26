Delivery-date: Fri, 26 May 2023 15:28:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2XUn-00F7da-4S
	for lore@lore.pengutronix.de; Fri, 26 May 2023 15:28:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2XUk-0004dx-Ib
	for lore@pengutronix.de; Fri, 26 May 2023 15:28:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VehpKm1MouB/VG27Kp7LFltZ5C3z0T4cQ3/JqZxPUZk=; b=SXDX3IC1/M+An4Rn5ZBwjH4YKw
	44qwDqiF6otv6qy30V7HsHc/hTeygGIWIqdO+php2RqVq7A4bsxVXU3mGk/pwNnEM0QIYnoERcA4R
	g6j9+QYNeiXHKj+c74erKZp1bc0AbeR2xLppNqI23RYijEtwbiUTTJsTD5IH24xagm0y8jRAR4kCq
	/N+HQ4A2eEpETTIn/azdgDkCxb0x5ZMi/ZNf/+2ownmaDTVrd78oFRkMROer7NwUSr5AqqR4RGH/w
	TP4zZEBKBSJM1IjzkGnQDBRPdoNEeWIY6uIsUEc3UcEN26KiJsNci1WTUq+3LQxja3nDQcLhUVe57
	K5gXMFjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2XTw-002dlX-3A;
	Fri, 26 May 2023 13:27:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2XTt-002dl4-3A
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 13:27:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2XTs-0004SJ-Ia; Fri, 26 May 2023 15:27:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2XTo-0002aY-Bq; Fri, 26 May 2023 15:27:40 +0200
Date: Fri, 26 May 2023 15:27:40 +0200
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <20230526132740.GU17518@pengutronix.de>
References: <20230526081541.29415-1-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526081541.29415-1-marc@cpdesign.com.au>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_062746_043793_FADEEFBD 
X-CRM114-Status: GOOD (  19.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] Documentation: boards: nxp-imx8mp-evk; clarify
 firmware folder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 26, 2023 at 06:15:41PM +1000, Marc Reilly wrote:
> The imx8mp-bp31.bin file is expected to be in the firmware/ folder
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  Documentation/boards/imx/nxp-imx8mp-evk.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
> index cfd1153e15..da26339864 100644
> --- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
> @@ -47,7 +47,7 @@ Get TF-A from https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/ and
>  checkout version v2.7::
>  
>    make PLAT=imx8mp bl31
> -  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/imx8mp-bl31.bin
> +  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/firmware/imx8mp-bl31.bin
>  
>  .. warning:: It is important to use a version >= v2.7 else your system
>     might not boot.
> -- 
> 2.35.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


