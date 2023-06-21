Delivery-date: Wed, 21 Jun 2023 10:32:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtGg-00FQww-L2
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 10:32:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtGd-0003ZN-U3
	for lore@pengutronix.de; Wed, 21 Jun 2023 10:32:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oPK+Bc6i76SMwrJSiBdbka/7fnb0Mz/+IPgdOOmDXm4=; b=ipwxYhv45fgrYOQG0+fpb25oCn
	BFpXcl9rABi+QE5xOsbU5MR/RiGbqfymepc4fGiAvxl6OaQ3VsgkPLfagn329ivf/YtUE69T+ysrn
	UQ0ioaLcxgNw4MAj1KUha4H6+Wz4O2nszHjROLlwfwBGqCg7Y0DrcO75yHwcAli/0HsuQw/1dl/Fl
	UBmYEKMNezDzp69kZg2QvDbSveqqpBuLITtr7wwaCQwS3/MarwHV6xkFhNicnXgt8KsH7JeJNgJt4
	Guz858LG1dQ3UuREav/pfO+GGivJY3M2uYc2Q9UMQeeCFbhXvedDpz77XvtYFoF2oxQ6Md0xzxA1e
	L2lhV5tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtFb-00DhdQ-1F;
	Wed, 21 Jun 2023 08:31:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtFX-00DhcI-36
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 08:31:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtFW-0003VV-I7; Wed, 21 Jun 2023 10:31:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtFW-0005qn-9J; Wed, 21 Jun 2023 10:31:34 +0200
Date: Wed, 21 Jun 2023 10:31:34 +0200
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20230621083134.GB18491@pengutronix.de>
References: <20230615123020.25927-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230615123020.25927-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_013136_016589_30EDCF6D 
X-CRM114-Status: GOOD (  22.34  )
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
Subject: Re: [PATCH] scripts: socfpga_import_preloader: Use SDK-supplied
 Python
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 15, 2023 at 01:30:20PM +0100, Ian Abbott wrote:
> Change `generate_spl()` to use the `python` bundled with the SDK (SoC
> EDS) instead of using `python2.7`.  In version 20.1 of SoC EDS, the
> `iswgen.py` script was updated to work with Python 3.8 and no longer
> works with Python 2.7, leading to an error similar to this when
> generating the SPL:
> 
> ```
> Generating file: /tmp/tmp.0xSiyYqAU2//sdram//sdram_config.h...
> Traceback (most recent call last):
>   File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/iswgen.py", line 63, in <module>
>     hps = hps.HPSGrokker(inputDir, outputDir)
>   File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/hps.py", line 54, in __init__
>     self.createFilesFromHPS()
>   File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/hps.py", line 546, in createFilesFromHPS
>     self.handleHPSPeripheralsNode(childNode)
>   File "/opt/intelFPGA/20.1/embedded/ip/altera/preloader/scripts/hps.py", line 413, in handleHPSPeripheralsNode
>     self.pinmuxHeaderBuffer.write("#define " + name + ' ' + '(' + str(used) + ')' + '\n')
> TypeError: unicode argument expected, got 'str'
> ```
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  scripts/socfpga_import_preloader | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
> index bd54e1b913..a555c9174b 100755
> --- a/scripts/socfpga_import_preloader
> +++ b/scripts/socfpga_import_preloader
> @@ -112,7 +112,10 @@ copy_source() {
>  }
>  
>  generate_spl() {
> -	python2.7 ${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py -i ${handoff} -o ${splroot}/
> +	USE_SOCEDS_PYTHON=1 SOCEDS_DESTROY_PATH=1 \
> +		${embeddedsw}/embedded/embedded_command_shell.sh python \
> +		${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py \
> +		-i ${handoff} -o ${splroot}/
>  }
>  
>  if [ -z $splroot ] || [ -z $boardroot ] || [ -z $handoff ]; then
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


