Delivery-date: Thu, 13 Apr 2023 11:22:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmt9Y-0023nY-8U
	for lore@lore.pengutronix.de; Thu, 13 Apr 2023 11:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmt9Y-0002mY-38
	for lore@pengutronix.de; Thu, 13 Apr 2023 11:22:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=URnl3vZND5+VBAGnf/4aDpFVSoYP3nVbaUPbmSFQ0mQ=; b=yIfhEfoyZcnC0XrXFLtDE31JUa
	JJdXq0igfaDJbbZWCfN/9CMmvOhSdGC+WD+NTDyWRYAabuvQMzYsbmFaPg89QbVvyiCf4lrnf6sxf
	7wNX5c2inpzsCgSR9PgGgNxLpoCVE0mKeleL3g181CiNTrTA7PFtUETsRkHeZr/hAxYml/Rk2ypTq
	90zU/gKXQM30l6mRzaB62Zj5LUkItUk0bfmcDJMuWbRQKE6DccPOQz2Yi24XbwaZP2ySm8z/sCe4p
	thv4norqphUIx/NKo59cgY0PsnaqjnwUWILQIqybvMIO/KAe5VFARqc3tEeSZGDAB05+rukTjfMCM
	JPkawSLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt8K-005aiC-2d;
	Thu, 13 Apr 2023 09:20:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt8H-005ahI-1X
	for barebox@lists.infradead.org;
	Thu, 13 Apr 2023 09:20:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmt8F-0002a6-9L; Thu, 13 Apr 2023 11:20:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmt8F-000077-3A; Thu, 13 Apr 2023 11:20:43 +0200
Date: Thu, 13 Apr 2023 11:20:43 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de, mol@pengutronix.de
Message-ID: <20230413092043.GW19113@pengutronix.de>
References: <20230413084547.1331906-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230413084547.1331906-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_022045_511150_E40C0E85 
X-CRM114-Status: GOOD (  26.75  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] kbuild: use printf instead of echo -e extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

The subject seems outdated, you are not using printf at all here.

On Thu, Apr 13, 2023 at 10:45:47AM +0200, Ahmad Fatoum wrote:
> We are using echo -e, so the \n in the string being echo'd are
> interpreted. As -e is not POSIX and dash doesn't provide it,
> we use a strange /usr/bin/env echo -e construct hoping that
> whatever non-builtin echo is first in the search path supports -e.
> 
> As the new lines are just used to separate CPP directives, we can
> just pass the directives as $(CPP) flags. This has the same result,
> but is potable and avoids NixOS complaining when building barebox.

s/potable/portable/

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - drop echo -e eltogether after Sascha pointed out why it needs
>     /usr/bin/env.
> 
> Tested with two fragments:
>   - dts variable is defined for the DT it references
>   - fragments are included (checked with #warning)
>   - fragment change triggers rebuild
>   - original DT change triggers rebuild
>   - fragmentless case works ok
>     
>  scripts/Makefile.lib | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 4deaa5dfa73c..befd47ed6600 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -372,8 +372,8 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
>  dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc = DTC     $@
>  # For compatibility between make 4.2 and 4.3
> -cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(2),'$(pound)include "$(f)"\n') | \
> -	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
> +cmd_dtc = echo | $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
> +	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') - ; \

Good idea to get rid of the echo -e dependency entirely, I like it :)

You could replace the '-' for stdin with /dev/null and then drop the
echo |. Maybe this makes it a bit easier to read.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


