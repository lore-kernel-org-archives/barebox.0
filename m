Delivery-date: Mon, 09 Feb 2026 13:37:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpQVm-00AYNr-0a
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 13:37:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpQVl-0000DA-6G
	for lore@pengutronix.de; Mon, 09 Feb 2026 13:37:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EGkljNmGSo6Bc+hYoS/eDUPqVK7TqYtRYaaWYdo07+Y=; b=p5sKQxXICeIiQVPHybifJCkjGn
	mPqECo711B1ufMU0RRVYJdnAA7TsHjT1/5BoQmxekgX6y9B8MUEXNn7oARbRk2tsenOO0c3UcyqAH
	cuDhdMTfH3gzIES05I1XW72HkB9ZiE24y8bTx4YkxscZ6hK/MNou8FBgrAdI3vEiUOfSrPRnKccPd
	znDAoNlR69i1Scp0UyZBwAxMBvblQurRiiadsH+wa6ZpEzQhfB7GhSOgzCil+Q3aT5iDHqMhpEzjf
	QDSxbbR26eXT+44sR0LCP0UT6vVaJuUNt5JFLOCBJFg8dBf0PUass2dYdfwZPnU+1WTGIAmh1FQsW
	sAJQay9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQV9-0000000FMnB-2kpL;
	Mon, 09 Feb 2026 12:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQV6-0000000FMmj-2MSp
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 12:36:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpQV4-00008j-EI; Mon, 09 Feb 2026 13:36:22 +0100
Message-ID: <3110bd2d-0b62-458f-90df-c8b9e79e721b@barebox.org>
Date: Mon, 9 Feb 2026 13:36:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: BAREBOX <barebox@lists.infradead.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
References: <20260112141746.3068571-1-a.fatoum@barebox.org>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260112141746.3068571-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_043624_607274_D3A83A8A 
X-CRM114-Status: GOOD (  16.55  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 1/2] images: allow suppressing missing firmware stderr
 output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/12/26 3:17 PM, Ahmad Fatoum wrote:
> There is a Kconfig option to turn missing firmware to an error, but
> there is no way to suppress the warning that is printed in any case.
> 
> Suppressing the warning is useful however when reproducing an issue with
> a multi_defconfig, so allow changing it to output to stdout by means of
> an environment variable.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Any thoughts on this?

Cheers,
Ahmad

> ---
>  images/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/images/Makefile b/images/Makefile
> index ebbf57b46355..96f66b0a8e70 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -254,7 +254,8 @@ images: $(image-y-path) $(flash-link) $(flash-list) $(symlink-y-path) FORCE
>  	@echo "images built:"
>  	@for i in $(image-y); do \
>  	  if [ -s $(obj)/$$i ]; then echo $$i; \
> -	  else >&2 echo "** $$i skipped due to missing firmware **"; \
> +	  else $(if $(NO_MISSING_FIRMWARE_WARNING),,>&2) \
> +	  	echo "** $$i skipped due to missing firmware **"; \
>  	  $(if $(CONFIG_MISSING_FIRMWARE_ERROR), >&2 sed 's/^/\t/' <$(obj)/$${i}.missing-firmware; missing=1;) \
>  	  fi; done; if [ -n "$$missing" ]; then \
>  	    echo >&2 "Firmware missing in CONFIG_MISSING_FIRMWARE_ERROR=y build"; exit 1; fi



