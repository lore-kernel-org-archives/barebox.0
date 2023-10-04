Delivery-date: Wed, 04 Oct 2023 10:20:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnx7q-004fcB-2i
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 10:20:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnx7n-0003JU-3p
	for lore@pengutronix.de; Wed, 04 Oct 2023 10:20:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SVa05Zho3wTpfYtkq83btGSFNxy2eP/qq5tn+8x4QjQ=; b=ztxg5Y+zFeJG18iC6IZjJYMxyb
	4+COkAY2jq69ZAZpFpLzPGcDzGrLKf1hTuCigDqVST1+OAzJUqIN9NSAHSredw+azDlWUYBEgWt1A
	UgZdbYnwdc8+WZLkCGKZvzbAB4bMpMDHAPbHbh7TPlBT7ggDzXG7nuNpYEIsM4eVUZxIPn9Az+VXZ
	faJC4BavsClFXbhnm30LrougfctleEFcYKDuqyO/yOKQWcLMvXutjbuaNfxRJAe66jXCrk80lnERZ
	n2yJlByEKyHNDFnblxKNEYYeP/7rSvWzYNzMzbZyafAq3u05CvgyLWpaClPbjIrw5jzcRXDSPmSdS
	fuzqEglQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnx6I-00GmfQ-2X;
	Wed, 04 Oct 2023 08:19:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnx6D-00Gmdi-22
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 08:19:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnx6B-00036I-Bu; Wed, 04 Oct 2023 10:19:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnx6A-00AyzM-Vk; Wed, 04 Oct 2023 10:19:14 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnx6A-00Cj5t-TN; Wed, 04 Oct 2023 10:19:14 +0200
Date: Wed, 4 Oct 2023 10:19:14 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231004081914.GK637806@pengutronix.de>
References: <20230929085337.1894936-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929085337.1894936-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_011917_828273_0A70D966 
X-CRM114-Status: GOOD (  55.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] bootchooser: honour reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 29, 2023 at 10:53:37AM +0200, Holger Assmann wrote:
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
> well integrate the functionality in bootchooser directly.
> 
> This patch therefore introduces "$global.bootchooser.good_reset_source"
> as a new variable in which good reset sources can be listed to be
> matched against the actual reset reason.
> 
> Note: In order to allow for proper matching of the reset source with the
> possible good reasons, a bitmask is used. To make this work, we had to
> make the variable "reset_src_names[]" accessible from outside of
> "reset_source.c". It has hence been moved into the respective header
> file where it now fittingly resides alongside "reset_src_type".
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
> 
> Changes v1 -> v2:
> 
> 1. changed matching mechanism of reset sources to an approach that utilizes a
>    bitmask and "globalvar_add_simple_bitmask", instead of
>    "globalvar_add_simple_string" and string comparison
> 2. properly handle "last_boot_successful" as boolean
> 3. removed some trailing whitespaces
> 
> ---
>  Documentation/user/bootchooser.rst | 67 +++++++++++++++++++++++++-----
>  common/bootchooser.c               | 21 ++++++++++
>  common/reset_source.c              | 12 ------
>  include/reset_source.h             | 12 ++++++
>  4 files changed, 90 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index db0a4f8898..4618d7cda0 100644
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
> index eb3dda52ab..b3499332be 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -86,6 +86,7 @@ enum reset_priorities {
>  };
>  
>  static unsigned long reset_priorities;
> +static unsigned long good_reset_src_type;
>  
>  static int bootchooser_target_ok(struct bootchooser_target *target, const char **reason)
>  {
> @@ -348,6 +349,7 @@ struct bootchooser *bootchooser_get(void)
>  {
>  	struct bootchooser *bc;
>  	struct bootchooser_target *target;
> +	enum reset_src_type type = reset_source_get();
>  	char *targets, *str, *freep = NULL, *delim;
>  	int ret = -EINVAL, id = 1;
>  	uint32_t last_chosen;
> @@ -451,6 +453,19 @@ struct bootchooser *bootchooser_get(void)
>  		}
>  	}
>  
> +	if (!last_boot_successful &&
> +		test_bit(type, &good_reset_src_type)) {
> +		/*
> +		 * If there are reset sources defined that are considered good
> +		 * and the reset source detected by the system fits an entry of
> +		 * that list, we do not want to further decrement the
> +		 * remaining_attempts counter.
> +		 */
> +  		pr_info("Good Reset '%s', marking last boot successful\n",
> +  				reset_source_to_string(type));
> +		last_boot_successful = true;
> +  	}

I have a problem with this. When a system is interrupted with a power
failure or by pushing the reset button during boot then we can't say
that this boot was "good". We just don't know. All we can do is to
ignore that last boot for the calculation of the remaining attempts.

The end result might implement your desired behaviour, but the code
leading to that result doesn't seem logical.

Also we have this snippet:

	if (test_bit(RESET_ATTEMPTS_POWER_ON, &reset_attempts) &&
	    reset_source_get() == RESET_POR && !attempts_resetted) {
		pr_info("Power-on Reset, resetting remaining attempts\n");
		bootchooser_reset_attempts(bc);
		attempts_resetted = 1;
	}

I'm not sure if that already implements your desired behaviour, but it
at least overlaps with the case you are implementing. Would it be an
option to extend the global.bootchooser.reset_attempts variable with a
"reset" bit and adjust the above accordingly?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


