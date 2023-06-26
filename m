Delivery-date: Mon, 26 Jun 2023 11:53:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDiuC-004KIe-V6
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 11:53:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDiuA-0005ZT-IO
	for lore@pengutronix.de; Mon, 26 Jun 2023 11:53:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lrQvMZ8xPbGrY5vvb5pHbmd3HoL8EH7e3qv1HU3JwbY=; b=vOsTTr47xwQ94RsYd5H7r4uISY
	1hzmCCRKtD9e1qffM0L0AgbzNnZlAriXCbFP8guHKRC5GwTCq1sfhzPNLPI4hSG+j0TxzLhD3fDDl
	Vh7Ch00jTPDCZuf/1JOrUPI1WdftbcifwSASESu8m+qFw1KpsTgsaHtTtAE6BlmIt97zXjRqoJmMG
	+VJXF4WzMPw3O9JTvZvH3zydEE+dJlCAT96TcXDzKoyf+Xkj118Wb3lwFwg2Gq+dRTkdM4mOds7Uy
	I6Au2syTSgm0aAC+MoMIHtWHSLVLlvdvDH2qYEyaFhKqwHUrCBmdvKCFsEfxJ+N2jcZUDEV3VsWf5
	U4okdPCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDisj-009lnd-2H;
	Mon, 26 Jun 2023 09:51:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDish-009lmJ-0M
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 09:51:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDisf-0005R1-5e; Mon, 26 Jun 2023 11:51:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDise-0003en-V0; Mon, 26 Jun 2023 11:51:32 +0200
Date: Mon, 26 Jun 2023 11:51:32 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230626095132.GT18491@pengutronix.de>
References: <20230612124739.1080762-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612124739.1080762-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_025135_146296_DFBA916C 
X-CRM114-Status: GOOD (  22.56  )
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
Subject: Re: [PATCH] MAKEALL: source defconfig after determining correct
 CROSS_COMPILE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 02:47:39PM +0200, Ahmad Fatoum wrote:
> ARM 32- and 64-bit have different GCC compiler backends, but the same
> architecture in barebox. MAKEALL handles that by sourcing the defconfig
> and then looking for CONFIG_CPU_64 before continuing to build. This is
> problematic, because CROSS_COMPILE can only be set after that, so we may
> end up with more dynamic Kconfig options being wrongly set the first
> time, because CROSS_COMPILE wasn't correctly set. Fix this by always
> sourcing the defconfig again once we determine the correct
> CROSS_COMPILE.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  MAKEALL | 30 ++++++++++++++++--------------
>  1 file changed, 16 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/MAKEALL b/MAKEALL
> index a4e268d54cf8..d3a289fd3839 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -91,21 +91,9 @@ do_build_target() {
>  
>  	rm -rf "${BUILDDIR}"
>  	mkdir -p "${LOGDIR}/${target}"
> -	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
> -
> -	tmp=$(echo "${target}" | tr - _)
>  
>  	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
> -	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
> -	for i in ${KCONFIG_ADD}; do
> -		./scripts/kconfig/merge_config.sh -m -O \
> -			${BUILDDIR} ${BUILDDIR}/.config $i \
> -			2>&1 > "${log_report}" | tee "${log_err}"
> -	done
> -	${MAKE} olddefconfig 2>&1 > "${log_report}" | tee "${log_err}"
> -
> -	check_pipe_status
> -	configure_result="$?"
> +	${MAKE} ${target} &>/dev/null
>  
>  	if [ ${arch} = "arm" ]; then
>  		grep -q "CONFIG_CPU_64=y" ${BUILDDIR}/.config
> @@ -114,6 +102,8 @@ do_build_target() {
>  		fi
>  	fi
>  
> +	tmp=$(echo "${target}" | tr - _)
> +
>  	cross_compile=$(eval echo '$CROSS_COMPILE_'${tmp})
>  	cross_compile_set=$(eval echo '${CROSS_COMPILE_'${tmp}'+set}')
>  	if [ "${cross_compile_set}" = "" ]
> @@ -126,12 +116,24 @@ do_build_target() {
>  		fi
>  	fi
>  
> +	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
> +	MAKE="${MAKE} CROSS_COMPILE=${cross_compile}"
> +	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
> +	for i in ${KCONFIG_ADD}; do
> +		./scripts/kconfig/merge_config.sh -m -O \
> +			${BUILDDIR} ${BUILDDIR}/.config $i \
> +			2>&1 > "${log_report}" | tee "${log_err}"
> +	done
> +	${MAKE} olddefconfig 2>&1 > "${log_report}" | tee "${log_err}"
> +
> +	check_pipe_status
> +	configure_result="$?"
> +
>  	printf "Configure: " | tee -a "${log_report}"
>  
>  	if [ "$configure_result" = "0" ]; then
>  		printf "OK     \n" | tee -a "${log_report}"
>  
> -		MAKE="make -j${JOBS} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
>  		${MAKE} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
>  
>  		check_pipe_status
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


