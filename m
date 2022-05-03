Delivery-date: Tue, 03 May 2022 09:08:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlmeV-000KdL-BY
	for lore@lore.pengutronix.de; Tue, 03 May 2022 09:08:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlmeU-0008ER-9K
	for lore@pengutronix.de; Tue, 03 May 2022 09:08:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KUBreItqmVb6epLESWa67wMby6fDByrdXdamaOaKFv4=; b=wvOjM7ohIbRwAyp1YwzPU+5SlQ
	jafLC+7f0b9ZgEDS6E6n0OMNUb8TlNMLNtLYfh8QqPkso6X0z7QTju2K8qr9QbQms6gTPlyZ14dVN
	vVLl2QEPQfeFqDLeJz+mE/9W7qWHDrAVaFrA+aQQvXD6ESc69DgVvuK1ZKKX7N3E3Qw1a9AvRiHWS
	+I/DlowXasIuFQAAYSydxsIwdZJd93YP/gFjOZqwqZ9zDuVOyWLyieHLeCwfK3NoNrCWU6IHTtnO8
	IeBuTjebKSZE0RgkoiXWtTkgPWKY4sCRK0BuFmjR0rLG2e+g8HohS+W5D5NzBrB8nPeZ58zzZMPhz
	vLn0RxOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlmdG-0047c9-MR; Tue, 03 May 2022 07:07:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlmdB-0047bj-OS
 for barebox@lists.infradead.org; Tue, 03 May 2022 07:07:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlmdA-00081w-A4; Tue, 03 May 2022 09:07:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlmd9-00029Y-PH; Tue, 03 May 2022 09:07:31 +0200
Date: Tue, 3 May 2022 09:07:31 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220503070731.GA4012@pengutronix.de>
References: <20220502065346.1804502-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220502065346.1804502-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:07:22 up 33 days, 19:37, 74 users,  load average: 0.16, 0.20, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_000733_827773_622F443F 
X-CRM114-Status: GOOD (  24.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] Documentation: boards: stm32mp: elaborate on how
 to build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 02, 2022 at 08:53:46AM +0200, Ahmad Fatoum wrote:
> The docs only show how to configure, not how to build the configuration.
> Add the missing info to make this more evident.
> 
> Reported-by: https://stackoverflow.com/users/18074165/fila2016
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/boards/stm32mp.rst | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
> index 6f4b14049ad4..0c9615b290a5 100644
> --- a/Documentation/boards/stm32mp.rst
> +++ b/Documentation/boards/stm32mp.rst
> @@ -28,7 +28,9 @@ Building barebox
>  
>  There's a single ``stm32mp_defconfig`` for all STM32MP boards::
>  
> -  make ARCH=arm stm32mp_defconfig
> +  export ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
> +  make stm32mp_defconfig
> +  make
>  
>  The resulting images will be placed under ``images/``::
>  
> -- 
> 2.34.1
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

