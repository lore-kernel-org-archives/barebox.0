Delivery-date: Fri, 26 May 2023 10:22:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2SiE-00EoIX-S7
	for lore@lore.pengutronix.de; Fri, 26 May 2023 10:22:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2SiC-0005Sf-A7
	for lore@pengutronix.de; Fri, 26 May 2023 10:22:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NlFunW6a6UOoCYvN7kB41QFQXMpJPOp0D3mDibbJ3rQ=; b=XWhWKCcGRp7trsYATaGKyo0MGW
	tpwda1qqnGoheSyTIZIpOTgvSpCskYQpuuq719WIovR48dQay9OfONKRZZYzCnecs29y/jIlSg5+L
	msyS7QixUGKiJyrXKcwfUS2kpFhGfPsXoMeuzSNaMUQquAXiL4/wPg69SPPM+C+Sqc2twh/XReo2J
	4hI2XregkQr6jT2ZmLNEpZj8RhJVo9aG6L2Pdyt8a0j/UqatiZMEWzBdYrU/Q6AqPW/7sBtx/TQHQ
	eCHdwWqXEJXEv07SBMUduw8otqyc8F8M+a3qCbG5S/0b763WVQiLa7b1Xf7VrupI4/kcWCbiEyvSg
	TeOkaNtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2ShY-001aWB-34;
	Fri, 26 May 2023 08:21:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2ShV-001aVQ-0k
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 08:21:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q2ShT-0005NZ-Ti; Fri, 26 May 2023 10:21:27 +0200
Message-ID: <cb51acec-65fa-2e36-05aa-9d4219adcdc8@pengutronix.de>
Date: Fri, 26 May 2023 10:21:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marc Reilly <marc@cpdesign.com.au>, barebox@lists.infradead.org
References: <20230526081541.29415-1-marc@cpdesign.com.au>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230526081541.29415-1-marc@cpdesign.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_012129_267293_08DCD10F 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] Documentation: boards: nxp-imx8mp-evk; clarify
 firmware folder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.05.23 10:15, Marc Reilly wrote:
> The imx8mp-bp31.bin file is expected to be in the firmware/ folder
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/boards/imx/nxp-imx8mp-evk.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



