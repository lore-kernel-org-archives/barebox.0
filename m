Delivery-date: Mon, 17 Mar 2025 10:22:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6fd-000Ye6-2a
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6fc-00071K-LX
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PASVHNST24IsRzvvD3rNlqlH0pErTFLpcIXR5YjZUAQ=; b=JQ/+pmfbxEZeKvRjt8xAcYbIlf
	T6+UF4PRexbRMGqe52Qgv6lpFuFAhA1G6abjzCMJp9tLK2cx2nDyP12tZkkmfLglx7APHCiZwXQd7
	ARk3Jsu6y4zHf28wtvAPwecICpQKKKcxiVPCPCc1T787B2iCva19EQum2DTIWjB62vSyaGi2kkGWC
	XvxOoOAZkB1puPxX8Z2b0g1LH8vfc6JztfhQn6qyY3zvByzHT4c5/cnECneXA80WLr2lanx7GKide
	Er87NhdYjUqhl+f+LMmtqDcFxbTxw33wKKyWtgMiuww/rSg8AOOJZtjFqK+hb2HNFmIGBpbXJVR4m
	7c6BLadA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6f8-00000001tu7-0Kdq;
	Mon, 17 Mar 2025 09:21:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6f4-00000001tte-3dVe
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:21:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tu6f2-0006p9-RQ; Mon, 17 Mar 2025 10:21:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu6f2-000Dit-0l;
	Mon, 17 Mar 2025 10:21:28 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu6f2-0017wm-1i;
	Mon, 17 Mar 2025 10:21:28 +0100
Date: Mon, 17 Mar 2025 10:21:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z9fpmOzuQh7G4WW_@pengutronix.de>
References: <20250313113604.915474-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313113604.915474-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_022131_049257_B2E3E7EF 
X-CRM114-Status: GOOD (  20.27  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] MAKEALL: support direct options for KCONFIG_ADD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 13, 2025 at 12:36:03PM +0100, Ahmad Fatoum wrote:
> KCONFIG_ADD currently expects a list of files to be merged.
> As MAKEALL is a bash script, let's make use of process substitution
> to create temporary files out of -k CONFIG_foo=bar options.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  MAKEALL | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index 1966eedb4673..b0967b8ae340 100755
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
> +		if [[ $i =~ ^CONFIG_* ]]; then

'_*' matches zero or more underscores which is likely not what you mean
here.

How about ^CONFIG_.*=.* which also tests for the equal sign.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


