Delivery-date: Tue, 13 Jun 2023 10:45:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zee-004vhA-GK
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:45:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zeb-0005P9-PB
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:45:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JhyBXntzTayoPk4fPpTKE6dk3Re79uo3YVSVBbsgnQc=; b=ItN+OKYv018AO58OMG0yLNtzCI
	k2392VV8nFuF3PyXYWuHk4hltOZw+Lj3/dDKvJzNZ4F7gFqQuo9hD9jbHXbYuBduz/rhNlBRfbLms
	RzWEU3vneZ82YUhNWvvzNp5kcDiFofeJHaTonyt7i0ucQvtOpBDpxvimAf5G1O+bDkKx8FCAYzkC7
	4hMSVvSo42ypdn+YtVM9D7tUKgTgDIgMBgxU/Wn5kEBuxZ6Bd5obcGXwq+YbbF1Nnrfk29pK6qd+q
	JaM8K407Ys5Vg1cMpaBuLxlFPlA9QpRDuf4o+SrPMp6gKwzz/n4ASZFm3vi04Jutc0gcuKQlS8q3t
	XX/THuYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zdV-007Po4-2F;
	Tue, 13 Jun 2023 08:44:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zdS-007PnP-29
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:44:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zdR-000539-6s; Tue, 13 Jun 2023 10:44:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zdQ-0003XD-L8; Tue, 13 Jun 2023 10:44:16 +0200
Date: Tue, 13 Jun 2023 10:44:16 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230613084416.GR18491@pengutronix.de>
References: <20230612065626.387660-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612065626.387660-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_014418_728202_843564BE 
X-CRM114-Status: GOOD (  24.35  )
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
Subject: Re: [PATCH] scripts: add container.sh as simple podman wrapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 08:56:26AM +0200, Ahmad Fatoum wrote:
> We have a Containerfile in tree now that is used for CI, but it's not
> completely self evident, how to use it locally. Add a simple script
> that mounts the current working directory into the container and calls
> its arguments inside.
> 
> Example building MAKEALL (Some configs will expectedly fail due to size
> or firmware constraints):
> 
>   ./scripts/container.sh ./MAKEALL
> 
> Example starting a shell:
> 
>   ./scripts/container.sh /bin/bash
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  scripts/container.sh | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100755 scripts/container.sh

Applied, thanks

Sascha

> 
> diff --git a/scripts/container.sh b/scripts/container.sh
> new file mode 100755
> index 000000000000..4ddee7d0a90c
> --- /dev/null
> +++ b/scripts/container.sh
> @@ -0,0 +1,39 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +CONTAINER=${CONTAINER:-ghcr.io/barebox/barebox/barebox-ci:latest}
> +KCONFIG_ADD="$test/kconfig/disable_target_tools.kconf KCONFIG_ADD"
> +
> +while getopts "c:uh" opt; do
> +	case "$opt" in
> +	h)
> +		echo "usage: $0 [-c CONTAINER] [command...]"
> +		echo "This script mounts the working directory into a container"
> +		echo "and runs the specified command inside or /bin/bash if no"
> +		echo "command was specified."
> +		echo "OPTIONS:"
> +		echo "  -c <container>    container image to use (default: $CONTAINER)"
> +		echo "  -u                pull container image updates"
> +		echo "  -h                This help text"
> +
> +		exit 0
> +		;;
> +	u)
> +		update=1
> +		;;
> +	c)
> +		CONTAINER="$OPTARG"
> +		;;
> +	esac
> +done
> +
> +shift $((OPTIND-1))
> +
> +[ -n "$update" ] && podman pull "$CONTAINER"
> +
> +pwd_real=$(realpath $PWD)
> +
> +exec podman run -it -v "$PWD:$PWD:z" -v "$pwd_real:$pwd_real:z" --rm \
> +	-e TERM -e ARCH -e CONFIG -e JOBS -e LOGDIR -e REGEX \
> +	-e KCONFIG_ADD -w "$PWD" --userns=keep-id \
> +	-- "$CONTAINER" "${@:-/bin/bash}"
> -- 
> 2.40.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


