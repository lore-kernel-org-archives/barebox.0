Delivery-date: Thu, 27 Mar 2025 11:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txkcl-004q3o-0b
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txkck-0003CJ-Ja
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:38:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3D94mMv1oWlZSE/H8h8UcBJ111WvFyHXX29gQ0vOBrQ=; b=gBltvQaS7H9g9II9IdnNhdON9E
	+o29fIRM19arXP6ep1PlTNYnyrtlUQBU9aV7iRgT+qUTnle4ug1jL7pzh56r+hrOrJV+JHJhPs6kX
	8bTQth6CDI1RRMOrqfDIcjxsunfbF13YbjqxDE64ZOLQhZDDCMHo7BBJucDlHOYl8uOqhPpaMWQOG
	sGOSVI3Cy1EAEDKg9sjganFMQl2Jm2PsDcYf0T6wItUpVyVsYqJEO3O8Y2O168RPIeGahnYCDY7ik
	n+AEHQUv+ro11STwyXHne8N/9uSDlWPtzysL+gnpzV42WDZetiwwV5fSSrfYiGAZl0Zscv4OLR3Rd
	IASsx/Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txkcG-0000000Air2-2v1e;
	Thu, 27 Mar 2025 10:37:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txkcE-0000000AiqY-3RXD
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:37:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txkcD-00032q-A3; Thu, 27 Mar 2025 11:37:37 +0100
Message-ID: <ea7831f3-fe10-4145-8fd1-37c83f67d111@pengutronix.de>
Date: Thu, 27 Mar 2025 11:37:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <sha@pengutronix.de>
References: <20250317113208.1863258-1-a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
In-Reply-To: <20250317113208.1863258-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_033738_864951_0B523CC5 
X-CRM114-Status: GOOD (  14.18  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] MAKEALL: support direct options for KCONFIG_ADD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/17/25 12:32, Ahmad Fatoum wrote:
> KCONFIG_ADD currently expects a list of files to be merged.
> As MAKEALL is a bash script, let's make use of process substitution
> to create temporary files out of -k CONFIG_foo=bar options.

Please pick these two patches to the ci branch to workaround the build
breakage there.

Thanks,
Ahmad

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - fix Regex (Sascha)
> ---
>  MAKEALL | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index 1966eedb4673..bc612b45561f 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -56,7 +56,7 @@ usage() {
>  	echo "BUILDDIR    -O      build dir"
>  	echo "LOGDIR      -l      log dir"
>  	echo "REGEX       -e      regex"
> -	echo "KCONFIG_ADD -k      kconfig fragment"
> +	echo "KCONFIG_ADD -k      kconfig fragment or option"
>  	echo "TARGET      -t      Makefile target"
>  	echo "V           -v      verbosity"
>  	echo "INCREMENTAL -i"
> @@ -116,6 +116,11 @@ report() {
>  	fi
>  }
>  
> +merge_config() {
> +	with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
> +		${BUILDDIR} "$@"
> +}
> +
>  do_build_defconfig() {
>  	local arch=$1
>  	local defconfig=$2
> @@ -156,8 +161,11 @@ do_build_defconfig() {
>  	MAKE="${MAKE} $silent_flag CROSS_COMPILE=${cross_compile}"
>  	with_logs_collected ${MAKE} ${defconfig}
>  	for i in ${KCONFIG_ADD}; do
> -		with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
> -			${BUILDDIR} ${BUILDDIR}/.config $i
> +		if [[ $i =~ ^CONFIG_.*=.* ]]; then
> +			merge_config ${BUILDDIR}/.config <(echo $i)
> +		else
> +			merge_config ${BUILDDIR}/.config $i
> +		fi
>  	done
>  	with_logs_collected ${MAKE} $silent_flag olddefconfig
>  



