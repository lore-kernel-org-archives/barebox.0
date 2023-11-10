Delivery-date: Fri, 10 Nov 2023 14:21:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RRU-005tDR-1O
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:21:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RRU-0001p5-Ej
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:21:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JaQw0kfxgvdKONZZpsIG18wLA0V9xq1KnBBCIJQg1aE=; b=lyT6/SNnxnGeQR+Z6gl75EWHKQ
	YIHtMdvBMWeGJf1Vwy/ODLojO3wLgw+SlanBpSxx8ufzvSFGUmuqhQpptba57JeAGf0ldUjRenTYd
	10P5LXa5PEZruJoNitwJyRUjsq3N9wb4Ci2kHbrsoA59agJVsbwotTH4BUwRxwsRpTDq2SQZjPUCw
	jN9SsMqNGNfnp3REatojp3/KXFSOaF0HbbcV/mZqcGPN4OnM/ErZvlYy3IP7fxi6QeAgzvcNR8bQr
	kseq34y2RM3qB1aLvxfuDqo6qprgBzLJYctAermahgq0Vx6wT2YpFrUN8+ZgAvNK4nUEOvvKn1wBY
	J0ztqj1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RQL-008pZj-1l;
	Fri, 10 Nov 2023 13:19:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RQI-008pZN-1X
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:19:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RQH-0001YG-47; Fri, 10 Nov 2023 14:19:45 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RQG-008241-O5; Fri, 10 Nov 2023 14:19:44 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RQG-001LYP-Lp; Fri, 10 Nov 2023 14:19:44 +0100
Date: Fri, 10 Nov 2023 14:19:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110131944.GE3359458@pengutronix.de>
References: <20231109113835.1199875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109113835.1199875-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_051946_535863_545789FD 
X-CRM114-Status: GOOD (  23.54  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] scripts: setlocalversion: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 12:38:35PM +0100, Ahmad Fatoum wrote:
> We are using an older version of setlocalversion that sources the
> config. This is wrong as there's no guarantee that it's ok to source the
> config, e.g.:
> 
>   CONFIG_DEFAULT_ENVIRONMENT_PATH="$(objtree)/.ptxdist-defaultenv"
> 
> when sourced will lead to:
> 
>   scripts/setlocalversion: 15: include/config/auto.conf: objtree: not found
> 
> Fix this by grepping the file instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/setlocalversion | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/setlocalversion b/scripts/setlocalversion
> index 6b54e46a0f12..cbd3883df9ae 100755
> --- a/scripts/setlocalversion
> +++ b/scripts/setlocalversion
> @@ -111,13 +111,14 @@ if $scm_only; then
>  	exit
>  fi
>  
> -if test -e include/config/auto.conf; then
> -	. include/config/auto.conf
> -else
> +if ! test -e include/config/auto.conf; then
>  	echo "Error: kernelrelease not valid - run 'make prepare' to update it" >&2
>  	exit 1
>  fi
>  
> +# version string from CONFIG_LOCALVERSION
> +config_localversion=$(sed -n 's/^CONFIG_LOCALVERSION=\(.*\)$/\1/p' include/config/auto.conf)
> +
>  # localversion* files in the build and source directory
>  res="$(collect_files localversion*)"
>  if test ! "$srctree" -ef .; then
> @@ -125,10 +126,10 @@ if test ! "$srctree" -ef .; then
>  fi
>  
>  # CONFIG_LOCALVERSION and LOCALVERSION (if set)
> -res="${res}${CONFIG_LOCALVERSION}${LOCALVERSION}"
> +res="${res}${config_localversion}${LOCALVERSION}"
>  
>  # scm version string if not at a tagged commit
> -if test "$CONFIG_LOCALVERSION_AUTO" = "y"; then
> +if grep -q "^CONFIG_LOCALVERSION_AUTO=y$" include/config/auto.conf; then
>  	# full scm version string
>  	res="$res$(scm_version)"
>  elif [ "${LOCALVERSION+set}" != "set" ]; then
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


