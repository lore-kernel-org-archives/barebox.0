Delivery-date: Wed, 21 Jun 2023 09:55:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsgh-00FOgz-1C
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 09:55:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsge-00068N-Iq
	for lore@pengutronix.de; Wed, 21 Jun 2023 09:55:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lwcUcXE24G3MDwyOLCPe5DOhD5RHeRoqNroQEUz/VpI=; b=F3uKSiHOFM6d+GoBII48B07As6
	PTCaXhZVBhRJF39gL6fRYs6wLh5DOmikUcJtEVRJxsizGT7UUGin3nI3X/L10lo+eSURXy6tJwzT/
	a72sKuKLCggCDEdHS7bjHCzZARuZgm8UqaZiN5xjXYkMnDKIuw1kkv7nocbFsHtCEkb105QOjZh8J
	yDz+QZPOuZSJtPGDbxOZkCJDHRzchGIiF1EG1psBLNvFp7O7Gu/jNuUBfLfYvVeH8hq/SPcLQYgTL
	q3Ybfx7oQKr3EUpna3P/S/OCsleCMhy2/WI9PzvdSKks+nZDdohEsOJ4Crwe5IDXGYjp9lbDBsqQC
	J6Xplygg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsfb-00DbPc-29;
	Wed, 21 Jun 2023 07:54:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsfY-00DbOi-0E
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 07:54:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsfW-0005l4-Q7; Wed, 21 Jun 2023 09:54:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsfW-0003cI-J7; Wed, 21 Jun 2023 09:54:22 +0200
Date: Wed, 21 Jun 2023 09:54:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621075422.GR18491@pengutronix.de>
References: <20230619094651.4143187-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619094651.4143187-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_005424_114507_1CD6E09A 
X-CRM114-Status: GOOD (  20.71  )
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
Subject: Re: [PATCH] MAKEALL: add incremental build support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 19, 2023 at 11:46:51AM +0200, Ahmad Fatoum wrote:
> MAKEALL always deletes the build directory, before starting. Add a
> command line option to make this configurable.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  MAKEALL | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/MAKEALL b/MAKEALL
> index a4e268d54cf8..f2e774cf88be 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -53,6 +53,7 @@ usage() {
>  	echo "LOGDIR      -l      log dir"
>  	echo "REGEX       -e      regex"
>  	echo "KCONFIG_ADD -k      kconfig fragment"
> +	echo "INCREMENTAL -i"
>  	echo ""
>  }
>  
> @@ -89,7 +90,7 @@ do_build_target() {
>  	local log_report="${LOGDIR}/${target}/report.log"
>  	local log_err="${LOGDIR}/${target}/errors.log"
>  
> -	rm -rf "${BUILDDIR}"
> +	[ "$INCREMENTAL" != "1" ] && rm -rf "${BUILDDIR}"
>  	mkdir -p "${LOGDIR}/${target}"
>  	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
>  
> @@ -196,7 +197,7 @@ do_build_all() {
>  	return $build_target
>  }
>  
> -while getopts "hc:j:O:l:a:e:k:" Option
> +while getopts "hc:j:O:l:a:e:k:i" Option
>  do
>  case $Option in
>  	a )
> @@ -220,6 +221,9 @@ case $Option in
>  	k )
>  		KCONFIG_ADD="${KCONFIG_ADD} ${OPTARG}"
>  		;;
> +	i )
> +		INCREMENTAL=1
> +		;;
>  	h )
>  		usage
>  		exit 0
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


