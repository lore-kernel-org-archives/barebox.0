Delivery-date: Thu, 24 Apr 2025 18:04:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z3W-004vzJ-30
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 18:04:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z3W-0007wa-5z
	for lore@pengutronix.de; Thu, 24 Apr 2025 18:04:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VQIRtzMCTc826gfTqwMexkqVOIEt59N6vsxCh6r+BFg=; b=Az49/QDbvNhT1VwnmgalXuxv89
	atsPm4SXHXMqqFHYRDt0OAMBzcPMn/eaZwuE3iDVbZ7m4q9BrZm9QdHA8DC4t+LQNhSpcSf0EF4cy
	SDoKRRVQUo2o8zjqlc7bvKPDpdi/wE9WbC1uWEzV+vCVN7yVtzt935q4nMBAReq0OKnz9mtq/wIgy
	L15WtC4cmQsWDacM5ZsoB2TwNBrdkUAivME7MZ0QMGGb6CjFD912mVThRb9NP5DNpa+R2BbvgpVlN
	MVYyvvqH2+AjxevK+2vObHYUQtnIY4vTOaIPTwmWOYIfPcUjetFmLyK8C2UJRllIaSYEKIpkPdjFe
	ITqPSneA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7z3A-0000000EZrU-0JkJ;
	Thu, 24 Apr 2025 16:03:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7v7A-0000000Dv4d-2RbN
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 11:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=VQIRtzMCTc826gfTqwMexkqVOIEt59N6vsxCh6r+BFg=; b=RaGofDoxUN4t99iumcoZg9ZXuo
	k65280WteWs3V5pU/O/sN9EnBxFxWxWqYY3ljX6m4xoKXk+KOu6X5MlsjTVe3Ql+zx6u0fyhOYBdC
	dIzNauy95X5nlEVP5FDB/bLgj8DjSXNJLlGuGmZTod1SrrlZHcF6k3d4Puv8fZ2CsNa9vs6lXkhRK
	ptIbjMetrZnW3xc6VKt7vB6c6vPgmp+nSLp8f52UvPwbQcsLC1WChueQLC60mfQ2jarROpraDuU2L
	gaOYE+U9sNHQXzE1t4ZDt9FNP4JBJsZxkSxPOP+idLVNH6fu/iXLfFI9nVRKR7iW6mTg/K2W6d7Jb
	aUuoRvKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7v77-0000000BmQP-1IMs
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 11:51:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7v75-0000Jx-79; Thu, 24 Apr 2025 13:51:31 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7v75-001sJs-05;
	Thu, 24 Apr 2025 13:51:31 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7v74-001LAC-2x;
	Thu, 24 Apr 2025 13:51:30 +0200
Date: Thu, 24 Apr 2025 13:51:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAolwl3W4ReziQJ2@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423140913.1530237-3-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_125133_521665_4278755A 
X-CRM114-Status: GOOD (  30.48  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] defaultenv-2: add support to automatically create
 an initial GPT table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 23, 2025 at 04:09:12PM +0200, Marco Felsch wrote:
> This adds the support to automatically create a minimal GPT table.
> 
> gpt-add: A script to add a minimal GPT table compatible to i.MX3/5/6/7
> devices. The initial GPT only contains a barebox-environment partition.
> The script checks for the bootsource to decide the GPT location.
> 
> gpt-rm: A script to remove the GPT header and the protective MBR. The
> script checks for the bootsource to decide which GPT should be scrubbed.
> 
> bbenv-gpt: An initscript which checks for a barebox-environment
> partition if booted from MMC. If no parition was found the script
> triggers the gpt-add script.

Can we have a command for this rather than a script?

We might want to extend this functionality and it looks like the shell
gets to its limits quite fast here.

Sascha

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - new
> 
>  defaultenv/defaultenv-2-base/bin/gpt-add    | 40 +++++++++++++++++++++
>  defaultenv/defaultenv-2-base/bin/gpt-rm     | 10 ++++++
>  defaultenv/defaultenv-2-base/init/bbenv-gpt | 16 +++++++++
>  3 files changed, 66 insertions(+)
>  create mode 100644 defaultenv/defaultenv-2-base/bin/gpt-add
>  create mode 100644 defaultenv/defaultenv-2-base/bin/gpt-rm
>  create mode 100644 defaultenv/defaultenv-2-base/init/bbenv-gpt
> 
> diff --git a/defaultenv/defaultenv-2-base/bin/gpt-add b/defaultenv/defaultenv-2-base/bin/gpt-add
> new file mode 100644
> index 000000000000..fa61b1929e20
> --- /dev/null
> +++ b/defaultenv/defaultenv-2-base/bin/gpt-add
> @@ -0,0 +1,40 @@
> +#!/bin/sh
> +
> +bootdev="/dev/${bootsource}${bootsource_instance}"
> +yesno=""
> +
> +if [ ${bootsource} != "mmc" ]; then
> +	exit 0
> +fi
> +
> +# If successful, there is already a GPT or MBR header
> +# TODO: Add hush redirect support to avoid user confusion
> +if parted ${bootdev} print; then
> +	exit 0
> +fi
> +
> +readline "Create an initial GPT for barebox? [y|N]: " yesno
> +
> +# No per default
> +if [ "${yesno}" == "" ]; then
> +	exit 0
> +elif [ "${yesno}" == "n" ]; then
> +	exit 0
> +fi
> +
> +# Check for other user input than 'y'
> +if [ "${yesno}" != "y" ]; then
> +	echo "Unkown value, only 'y' and 'n' are supported"
> +	exit 1
> +fi
> +
> +# Make a default GPT table, with the GPT partition entrie array starting at 2MiB
> +# to have enough space for barebox at the beginning and to overcome legacy
> +# platforms like i.MX3/5/6.
> +parted ${bootdev} mklabel gpt 2MiB || gpt-rm
> +
> +# Add a barebox environment partition with the size of 1MiB which should be
> +# enough for development.
> +parted ${bootdev} mkpart barebox-environment bbenv 3MiB 4MiB || gpt-rm
> +
> +parted ${bootdev} refresh
> diff --git a/defaultenv/defaultenv-2-base/bin/gpt-rm b/defaultenv/defaultenv-2-base/bin/gpt-rm
> new file mode 100644
> index 000000000000..e45c79395504
> --- /dev/null
> +++ b/defaultenv/defaultenv-2-base/bin/gpt-rm
> @@ -0,0 +1,10 @@
> +#!/bin/sh
> +
> +bootdev="/dev/${bootsource}${bootsource_instance}"
> +
> +if [ ${bootsource} != "mmc" ]; then
> +	exit 0
> +fi
> +
> +# Remove protective MBR and GPT from boot device
> +memset -d ${bootdev} 0x100 0x0 0x300
> diff --git a/defaultenv/defaultenv-2-base/init/bbenv-gpt b/defaultenv/defaultenv-2-base/init/bbenv-gpt
> new file mode 100644
> index 000000000000..6756cac9885e
> --- /dev/null
> +++ b/defaultenv/defaultenv-2-base/init/bbenv-gpt
> @@ -0,0 +1,16 @@
> +#!/bin/sh
> +
> +bbenvpart="/dev/${bootsource}${bootsource_instance}.barebox-environment"
> +
> +if [ ${bootsource} != "mmc" ]; then
> +	exit 0
> +fi
> +
> +# TODO:
> +# Add command support to search for a given GPT PartUUID on a block device to
> +# be partition name independent.
> +if [ -e ${bbenvpart} ]; then
> +	exit 0
> +fi
> +
> +gpt-add
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


