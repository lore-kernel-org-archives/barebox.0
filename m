Delivery-date: Wed, 21 Jun 2023 09:53:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsep-00FOYh-0s
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 09:53:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsem-0005g3-Dy
	for lore@pengutronix.de; Wed, 21 Jun 2023 09:53:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=whVfZ+G/gmEDJoCpsonWoddNpVP2wwAH/W3uHwIV5Ac=; b=2NS0GSYb2Y76JIjZvG+dS5oomH
	YWEHu4JFjj2p5M7/jTQjjaa/V90I8p2XoQr9+0+KmEgNL5a86bIqFBObKHEXpoAo6ziRJjln9pAEf
	xlAoLHGg7MK2cZ4HtH5B84F2rcLq8DH8DDQTxqj5cqHQ5PGvK/8UyvzxEB9umzfip1SlNkH1WHW6b
	bI6my04+CbRa9dgBqNToPhcHm1YEwBkduJW72plM2StDQJ8erFackCj3UKOYE/wmYKcqmYgEXCXvc
	NxjAT1ypXfIUTEdfcoEWEFYzKGq7Xrs/Oxpc/divDmDLZxlF2xdXWsndp/Q7DP1+DZ+Xz/B0BCH4H
	3At1sVuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsdJ-00Db1q-1e;
	Wed, 21 Jun 2023 07:52:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsdF-00Db0w-1X
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 07:52:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsdE-0005Ye-0n; Wed, 21 Jun 2023 09:52:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsdD-0003bB-PU; Wed, 21 Jun 2023 09:51:59 +0200
Date: Wed, 21 Jun 2023 09:51:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621075159.GP18491@pengutronix.de>
References: <20230619104405.652821-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619104405.652821-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_005201_657280_6A2BFC35 
X-CRM114-Status: GOOD (  21.42  )
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
Subject: Re: [PATCH v2] scripts: container.sh: don't add -v twice if unneeded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 19, 2023 at 12:44:05PM +0200, Ahmad Fatoum wrote:
> The script bind mounts the barebox directory as in $PWD as well as the
> realpath into the container to reduce surprises when $PWD contains a
> symlinked path. In cases where the path is not symlinked, some podman
> versions complain about "duplicate mount destination". Fix this by only
> adding the second volume specification, if the path isn't already
> canonical.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - drop single quotes in double quotes. These were passed literally
>     to podman
> ---
>  scripts/container.sh | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/container.sh b/scripts/container.sh
> index eb1e87b59baa..2850f26fc749 100755
> --- a/scripts/container.sh
> +++ b/scripts/container.sh
> @@ -31,9 +31,13 @@ shift $((OPTIND-1))
>  
>  [ -n "$update" ] && podman pull "$CONTAINER"
>  
> +volumes="-v $PWD:$PWD:z"
>  pwd_real=$(realpath $PWD)
> +if [ "$(realpath --no-symlinks $PWD)" != "$pwd_real" ]; then
> +	volumes="$volumes -v $pwd_real:$pwd_real:z"
> +fi
>  
> -exec podman run -it -v "$PWD:$PWD:z" -v "$pwd_real:$pwd_real:z" --rm \
> +exec podman run -it $volumes --rm \
>  	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
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


