Delivery-date: Wed, 06 Sep 2023 16:14:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtIV-006350-R8
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 16:14:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtIT-0000Q0-Rg
	for lore@pengutronix.de; Wed, 06 Sep 2023 16:14:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dT/OorXwxH0iuQJI3QIKJ35fw43cQRDgGnIIRFsc/Fs=; b=J92iEK8RAJPU/gaTDZUaN3PAvF
	tQevg8JCTSAovd9t6dQs+cVYjdvlaz+QsBkaSQ2AyQkDKQuzpI0DpXyzhSxuIfGryq/1uK9VgAa8k
	aewE3m51bLwJi1Ge4LHW5Aj6DqN731/mrHjpLUgUsiwPGiOszOfe1OxHsEaFD1/A8GjiUXBmUhK/p
	FTWeMwjl4wNtZskwvQXHsXRNFiJYQJaRoH9741Ot+T4sTH2PU/e2jgD/TVIltABAkRhb0SZZN1YXy
	R0VC55gEuOU+s9O9nQi3KWqg74Qh7TWlGmrNi0l1T1o0pyvGcx7wNyC1OZX2aEf5g+vMQOwJ+f0rJ
	YqyUWhYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtHQ-00ACDh-2q;
	Wed, 06 Sep 2023 14:13:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtHM-00ACCM-36
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 14:13:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtHL-0008Tx-Op; Wed, 06 Sep 2023 16:13:11 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtHL-004Rl9-Ce; Wed, 06 Sep 2023 16:13:11 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtHL-002GFa-0f; Wed, 06 Sep 2023 16:13:11 +0200
Date: Wed, 6 Sep 2023 16:13:11 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, afa@pengutronix.de
Message-ID: <20230906141311.GE492117@pengutronix.de>
References: <20230906132623.1608529-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906132623.1608529-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_071313_019219_C84ABB91 
X-CRM114-Status: GOOD (  25.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: pwm: add option to list registered PWMs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 06, 2023 at 03:26:23PM +0200, Bastian Krause wrote:
> It's useful to be able to list all registered PWMs, especially
> considering these might be aliased. So add such an option to the pwm
> command.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  commands/pwm.c     | 8 ++++++--
>  drivers/pwm/core.c | 9 +++++++++
>  include/pwm.h      | 2 ++
>  3 files changed, 17 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/pwm.c b/commands/pwm.c
> index 68d7988886e..5d41fa8ff42 100644
> --- a/commands/pwm.c
> +++ b/commands/pwm.c
> @@ -34,8 +34,11 @@ static int do_pwm_cmd(int argc, char *argv[])
>  	bool verbose = false;
>  	int opt;
>  
> -	while ((opt = getopt(argc, argv, "d:D:P:f:w:F:isv")) > 0) {
> +	while ((opt = getopt(argc, argv, "ld:D:P:f:w:F:isv")) > 0) {
>  		switch (opt) {
> +		case 'l':
> +			pwm_print();
> +			return 0;
>  		case 'd':
>  			devname = optarg;
>  			break;
> @@ -189,6 +192,7 @@ BAREBOX_CMD_HELP_TEXT("  (although note this will not by itself stop the pwm run
>  BAREBOX_CMD_HELP_TEXT(" Stopping the pwm device does not necessarily set the output to inactive,")
>  BAREBOX_CMD_HELP_TEXT("  but stop is handled last, so can be done in addition to other changes.")
>  BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-l\t", "list registered PWMs")
>  BAREBOX_CMD_HELP_OPT("-d <name>", "device name (eg 'pwm0')")
>  BAREBOX_CMD_HELP_OPT("-D <duty_ns>", "duty cycle (ns)")
>  BAREBOX_CMD_HELP_OPT("-P <period_ns>", "period (ns)")
> @@ -202,7 +206,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(pwm)
>  	.cmd		= do_pwm_cmd,
>  	BAREBOX_CMD_DESC("pwm")
> -	BAREBOX_CMD_OPTS("[-dDPfwisv]")
> +	BAREBOX_CMD_OPTS("[-ldDPfwisv]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_pwm_help)
>  BAREBOX_CMD_END
> diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
> index 2237dad4537..a3f27708e6e 100644
> --- a/drivers/pwm/core.c
> +++ b/drivers/pwm/core.c
> @@ -44,6 +44,15 @@ struct pwm_device {
>  
>  static LIST_HEAD(pwm_list);
>  
> +void pwm_print(void)
> +{
> +	struct pwm_device *pwm;
> +
> +	list_for_each_entry(pwm, &pwm_list, node)
> +		printf("%s\n", pwm->chip->devname);
> +}
> +EXPORT_SYMBOL(pwm_print);
> +
>  static struct pwm_device *_find_pwm(const char *devname)
>  {
>  	struct pwm_device *pwm;
> diff --git a/include/pwm.h b/include/pwm.h
> index 02af7d0a5f3..4d403fe1746 100644
> --- a/include/pwm.h
> +++ b/include/pwm.h
> @@ -24,6 +24,8 @@ struct pwm_state {
>  	unsigned int p_enable;
>  };
>  
> +void pwm_print(void);
> +
>  /*
>   * pwm_request - request a PWM device
>   */
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


