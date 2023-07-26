Delivery-date: Wed, 26 Jul 2023 11:28:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOaof-00AbH4-4J
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 11:28:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOaoc-0003im-B0
	for lore@pengutronix.de; Wed, 26 Jul 2023 11:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VYDUvLFS3lfepNo8rYM+RNuXQeaS0I+DzjO/Eb5BMIU=; b=BImQPF0RTUSkwvZutCI4PKn0FL
	8d7ZpFVMgQkAVbabI4CzMDs0AseDc2n+uNmXBejsbYHWxPzqoIUQW2tYGLEn8E94sELms7qmxU7Z0
	TwCN4AFNdXPY50E1fH1dci0bPT9IfTdEY9K40JB5Y8EdWQXLM40cynPuE102hx3PpbPNn/oF3V5ce
	H+KxDmmNMOpnZNrNrND/byRQ+oGFWKom8TmZIgPK2bT27HohCQnw6J1hgfkYyJYL8iusDlkJXYNC8
	pfM90WGR1f4POt3Rnunoiu4E3A6bbfTBjm+68fla0y7tuwHQJuOgC41MNA2qbQTtZUoxwoJ+pgHZA
	5EzaoWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOanM-009iwM-1w;
	Wed, 26 Jul 2023 09:27:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOanI-009iuw-2c
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 09:26:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOanG-0003aD-Pd; Wed, 26 Jul 2023 11:26:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOanG-0005Dm-I9; Wed, 26 Jul 2023 11:26:54 +0200
Date: Wed, 26 Jul 2023 11:26:54 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726092654.GF18491@pengutronix.de>
References: <20230724075817.1842693-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724075817.1842693-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_022657_008388_6F13ACEA 
X-CRM114-Status: GOOD (  43.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] bootchooser: honour reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 24, 2023 at 09:58:17AM +0200, Holger Assmann wrote:
> With some systems it is possible to determine the source that triggered
> the most recent reset (see $global.system.reset).
> 
> This information can be used at the subsequent boot to evaluate whether
> the respective target works as intended by defining reset reasons that
> are to be used exclusively. Any other reset source would therefore be
> considered to be bad, which should lead to a decrease of the counter
> variable "remaining_attempts" for that target.
> Until now, such an investigation and the consecutive decision of marking
> the last boot successful has either to be done by a custom script in
> barebox or by a service that runs on the eventually booted operating
> system.
> 
> Since (if supported by the system) analyzing the reset reason is
> probably the most obvious factor for the marking decision, we might as
> well integrate the functionality into bootchooser directly.
> 
> This patch therefore introduces "$global.bootchooser.good_reset_sources"
> as a new variable in which good reset sources can be listed to be
> matched against the actual reset reason.
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
>  Documentation/user/bootchooser.rst | 67 +++++++++++++++++++++++++-----
>  common/bootchooser.c               | 22 ++++++++++
>  2 files changed, 79 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index db0a4f8898..bce1aed24d 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -108,6 +108,20 @@ While the bootchooser algorithm handles attempts decrementation, retries and
>  selection of the right boot target itself, it cannot decide if the system
>  booted successfully on its own.
>  
> +However, for systems where barebox is able to detect the actual :ref:`reset reason <reset_reason>`
> +(e.g. WDG), bootchooser will look for matches in ``global.bootchooser.good_reset_sources``.
> +This variable may contain a space-separated list of those reset reasons that are
> +considered *good*. If a matching entry is found, bootchooser will mark the last
> +boot successful.
> +
> +This marking can also be performed manually or from within a script by calling
> +the barebox :ref:`bootchoser command <command_bootchooser>`:: 
> +
> +  bootchooser -s
> +
> +Marking the preceding boot successful will result in the ``remaining_attempts`` counter of the
> +*last chosen* slot to be reset to its default value (``reset_attempts``).
> +
>  In case only the booted system itself knows when it is in a good state,
>  it can report this to the bootchooser from Linux userspace using the
>  *barebox-state* tool from the dt-utils_ package.::
> @@ -116,16 +130,6 @@ it can report this to the bootchooser from Linux userspace using the
>    barebox-state -n system_state -s bootstate.system1.remaining_attempts=3
>    barebox-state -s system1.remaining_attempts=3
>  
> -If instead the bootchooser can detect a failed boot itself using the
> -:ref:`reset reason <reset_reason>` (WDG), one can mark the boot successful
> -using the barebox :ref:`bootchoser command <command_bootchooser>`::
> -
> -  bootchooser -s
> -
> -to mark the last boot successful.
> -This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
> -its default value (``reset_attempts``).
> -
>  
>  .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
>  
> @@ -147,6 +151,8 @@ options not specific to any boot target.
>    specific variable of the same name.
>  ``global.bootchooser.reset_attempts``
>    Already described in :ref:`Bootchooser Algorithm <bootchooser,algorithm>`
> +``bootchooser.good_reset_sources``
> +  Already described in :ref:`Bootchooser Algorithm <bootchooser,algorithm>`
>  ``global.bootchooser.reset_priorities``
>    A space-separated list of events that cause *bootchooser* to reset the priorities of
>    all boot targets. Possible values:
> @@ -268,6 +274,7 @@ are reset to their defaults and the first boot target is tried again.
>  Settings
>  ^^^^^^^^
>  - ``global.bootchooser.reset_attempts="all-zero"``
> +- ``global.bootchooser.good_reset_sources=""``
>  - ``global.bootchooser.reset_priorities="all-zero"``
>  - ``global.bootchooser.disable_on_zero_attempts=0``
>  - ``global.bootchooser.retry=1``
> @@ -302,6 +309,7 @@ Settings
>  ^^^^^^^^
>  
>  - ``global.bootchooser.reset_attempts=""``
> +- ``global.bootchooser.good_reset_sources=""``
>  - ``global.bootchooser.reset_priorities=""``
>  - ``global.bootchooser.disable_on_zero_attempts=0``
>  - ``global.bootchooser.retry=1``
> @@ -337,6 +345,7 @@ Settings
>  ^^^^^^^^
>  
>  - ``global.bootchooser.reset_attempts="power-on"``
> +- ``global.bootchooser.good_reset_sources=""``
>  - ``global.bootchooser.reset_priorities=""``
>  - ``global.bootchooser.disable_on_zero_attempts=1``
>  - ``global.bootchooser.retry=1``
> @@ -358,6 +367,44 @@ through due to the lack of bootable targets. This target can be:
>  - a system that will be booted as recovery.
>  - a barebox script that will be started.
>  
> +Scenario 4
> +##########
> +
> +- a system with multiple boot targets
> +- one recovery system
> +- detection of the :ref:`cause of the preceding reset <reset_reason>` is
> +  supported by the hardware
> +
> +  - POR (Power On Reset) and RST (ReSeT) are considered *good* causes
> +
> +Booting a boot target three times without success disables it.
> +
> +Settings
> +^^^^^^^^
> +
> +- ``global.bootchooser.reset_attempts=""``
> +- ``global.bootchooser.good_reset_sources="POR RST"``
> +- ``global.bootchooser.reset_priorities=""``
> +- ``global.bootchooser.disable_on_zero_attempts=1``
> +- ``global.bootchooser.retry=1``
> +- ``global.boot.default="bootchooser recovery"``
> +- bootchooser marks as good.
> +
> +Deployment
> +^^^^^^^^^^
> +
> +#. barebox or flash robot fills all boot targets with valid systems.
> +#. barebox or flash robot marks boot targets as good.
> +
> +Recovery
> +^^^^^^^^
> +
> +Done by 'recovery' boot target which is booted after the *bootchooser* falls
> +through due to the lack of bootable targets. This target can be:
> +
> +- a system that will be booted as recovery.
> +- a barebox script that will be started.
> +
>  .. _bootchooser,state_framework:
>  
>  Using the *State* Framework as Backend for Run-Time Variable Data
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index eb3dda52ab..ecc9c33312 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -35,6 +35,7 @@
>  #define BOOTCHOOSER_PREFIX "global.bootchooser"
>  
>  static char *available_targets;
> +static char *global_good_reset_sources;
>  static char *state_prefix;
>  static int global_default_attempts = 3;
>  static int global_default_priority = 1;
> @@ -348,6 +349,7 @@ struct bootchooser *bootchooser_get(void)
>  {
>  	struct bootchooser *bc;
>  	struct bootchooser_target *target;
> +	enum reset_src_type type = reset_source_get();
>  	char *targets, *str, *freep = NULL, *delim;
>  	int ret = -EINVAL, id = 1;
>  	uint32_t last_chosen;
> @@ -451,6 +453,20 @@ struct bootchooser *bootchooser_get(void)
>  		}
>  	}
>  
> +  	/* no multiple substrings in reset_src_type */

I think we should better not rely on that and do proper matching
instead.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


