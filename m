Delivery-date: Wed, 21 Jun 2023 09:57:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsig-00FOmt-1M
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 09:57:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsid-0006Om-DD
	for lore@pengutronix.de; Wed, 21 Jun 2023 09:57:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ip0adbpOWLCCDEDMLnY0N8QT/D6W7dd5lLcv+MXDPwg=; b=g4qOVun2vh4MyWPe0Q0Q7MPn4v
	pRdmdn6YZ0UOxPW1ZB9d5vR5qOn31fP+kcojweJ4eGMTyruZvKDfoxR7OGNH9ajk5uWH40FG8Kbi5
	n6dxltLa9TRz07L2A/5eB8WkJ9vMhibPjVfdzneP9wwThOgPbg8+J6Eh2xKgpMvqc7VHcQGLm06+U
	CvAd9xn50bcn0P/yfnvxyrhENp1dfRXimj7yvohDapL0psjhy8fDrtSTJFMxzxm5A+9PDNh8eH+hT
	H5/236yAicFGrAJPQjplPau/Ig8yACYiC5u/V2ddoL6prKh4ot41nPAVPo/NQU+nif1HuqEflEERA
	CXTAbC1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBshY-00Dbo8-26;
	Wed, 21 Jun 2023 07:56:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBshV-00Dbnd-16
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 07:56:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBshU-0006Ik-1t; Wed, 21 Jun 2023 09:56:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBshT-0003jr-Qj; Wed, 21 Jun 2023 09:56:23 +0200
Date: Wed, 21 Jun 2023 09:56:23 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621075623.GS18491@pengutronix.de>
References: <20230619094656.4160042-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619094656.4160042-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_005625_379264_1E4FD211 
X-CRM114-Status: GOOD (  17.57  )
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
Subject: Re: [PATCH] scripts: container.sh: reexport KBUILD_OUTPUT
 LG_BUILDDIR envvars
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 19, 2023 at 11:46:56AM +0200, Ahmad Fatoum wrote:
> These variables are evaluted by pytest to find the location of the
> barebox build directory, so pass them along to the container for easier
> use. Example usage:
> 
>   export LG_BUILDDIR=build-x86
>   scripts/container.sh ./MAKEALL -a x86  -O $LG_BUILDDIR efi_defconfig
>   scripts/container.sh pytest --lg-env test/x86/efi_defconfig.yaml test/py
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/container.sh | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/container.sh b/scripts/container.sh
> index eb1e87b59baa..fa5810fb464e 100755
> --- a/scripts/container.sh
> +++ b/scripts/container.sh
> @@ -35,5 +35,6 @@ pwd_real=$(realpath $PWD)
>  
>  exec podman run -it -v "$PWD:$PWD:z" -v "$pwd_real:$pwd_real:z" --rm \
>  	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
> +	-e KBUILD_OUTPUT -e LG_BUILDDIR \
>  	-e KCONFIG_ADD -w "$PWD" --userns=keep-id \
>  	-- "$CONTAINER" "${@:-/bin/bash}"
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


