Delivery-date: Thu, 12 Nov 2026 09:08:35 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRPrG-009xdV-23
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:08:35 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A5D65201AD6
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:08:33 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FVDYiKKu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GxF1NqKm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794470914;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ZUo4u/QaHQ+DNdEej1e1nfO3xuswHRACkTOZm8ZEukM=;
	b=UfzKzXkEvKX6i00oPAr4NdT6LSaeQa2+p54nAxoFFZxhW5FHdClZ8nD/XSEcj/b5IKGqMJ
	Qx1Av6LIkIi8xhj18Ehdkr/WrcWTw38YJeU8XtkyGEvmzpyuKlT0uildwFDIuWr1/eo1Ti
	J90Yz9HJ3B7cR4ZfC7TtqkwbaxkZsMMHRvDOjCn5gOzrJy+vlZvALe8b7/f4TQBEPLAMi2
	ghil6su7jA5ZxGRzzD6KUx28IEaXumB4ByYQyS8YhWhmKGoy/WzKS7uexqg+wYhuh0KgGY
	Jmrm6a5s0jHAZcM/Cq4qpoeLOg00y0/7fxnAIUripeeq4ikBBoJF+A8cDqCHXQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794470914; a=rsa-sha256;
	cv=pass;
	b=PdzoMhQCAlLjxqtCpT6F1BVDEmuNb+FvMRedfZodrY6y22YDZudcF8IbcPQ9Gd67OINegR
	Cwi+abRn1NThnXNa7LPUpGCNwDAh7H3Ctc6/sBa/3q/lCtcDuZSnLI1U27Q4SiYjiLv1wX
	5SYXXjP4egWInwUN6IiuGFv9Dvvw1Fl4AYt/J3QQzhBVqvZp/wJmOsrCZyGEisUNjTSRFp
	rVtmXcHmddoTXQMSZeusdu90LLMyw0AL/K5gQ2Jf/FwS3amSHNFIzPDbgkFQCpAs7lmzqD
	2RoubqpCqESkJYGGArmi4WhQcc1VRFqlNMiaO0gE4N7k/0MS8ktH6AL7VHn5WA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FVDYiKKu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GxF1NqKm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ZUo4u/QaHQ+DNdEej1e1nfO3xuswHRACkTOZm8ZEukM=; b=FVDYiKKu0TBV6s
	w8WWnBO8p41zlrTHHfC4pV2ZTevv3l2YPimABHu+OEa1rNv0iKXsYU1sa+rUYYoV/cu4C6rrYa4rN
	nWTy3Z4zek71llY+gVQrenvtaYd853+yTtwcMoQUxscuJykScNBRS4DGEydthW+aknJC1Iur2nnhp
	7DYEuyp7igFOzCjSPriQO4vosjQ7n/gDmd5MeULlrZJjJDEGSR3ayE+bEPY/Ge71cCgktUIXWKe0T
	NsL6JTezZIUVxfYjt5dZ/UJEC590ZgrI+otvFfSQwXiLFLuiEEWnIwHnqs4bCf6btpfbdxffwJ9tA
	jZTC9D1NvH3wvp5qifOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPXY-00000008xBc-3qq8;
	Thu, 12 Nov 2026 07:48:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPXU-00000008xAS-0Bdq
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 07:48:11 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B9974201A86;
	Thu, 12 Nov 2026 08:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZUo4u/QaHQ+DNdEej1e1nfO3xuswHRACkTOZm8ZEukM=;
	b=GxF1NqKmk0oNvhumibc9MUe6CjIOKnoMnkmASbSFHK7RLNmUEI2baPcoBUNhdNetwbsJKQ
	FDmKAgHAVYPL0bX+iIggnumwEw0eaxkOudAIlqKBD+F1eVTVddibbK9JMBx2ZOuPvP8FSF
	wCe4uahBXBhIyAZBmrbYbd0AsxU6Refv/sS8Dt2fDSxmB0hDa6TISCUFJ9LYGU5sUQ5oFn
	WaWNHr0dzI8YmvCR6h2XkMHBC2z9a5kMhb8BBvCy+/GYMtTGn5Oc/7btHlFuqDntbMH1WB
	U32KiM4QF51xoDFvOBqTDpp+hyanYdivwqv5lbb8IKrUJ51LtrxNcaEbjurCcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZUo4u/QaHQ+DNdEej1e1nfO3xuswHRACkTOZm8ZEukM=;
	b=b08Ng6db6/oOk0Up+ofOa8UaVcrc5NvbRCnngeHZnW+3CSDbjzppnbjugobn8t1zVv47uj
	IexXZJSPWschpMFkb3X1DB+4/uMKEE79yTio/yJinZl10JWQR1G3S8vb2I1k5YAgVNqeIM
	Tdb7FBTfb9N5wLtVRd3QObjv0tJwH7oavdHwHONpt8y7QKIer7tiuuJC9y4vciPn/3zWug
	IKyFe0qKV7OSxAwlw2FwBEMw5Ao7mzgqEEFwV2Zd8fKL4YjgiNvvm/7sAlUAcxe2eFc1Fq
	XAMU99msqWmMahf2zU7UwBHqkP839eJZbwDIv34lxMePS540FJE7/gPTch7Hyg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794469685; a=rsa-sha256;
	cv=none;
	b=bILnW63wXiMkJhifXwFuOoUAj3ulx+4lysC0E/SjJDg1PGogdsscRuiP38Xw/diXYujja7
	nY7df6P/nHTZ3NxUnpOZCuRKJse4Jb6MuHxN7htpbaoj0rMfjl23E4a7lBwY75IQz59vqe
	KZT+vWzh2VQsC31kbbIvFhGrFKPEBzAybcZgk58DgIKzJsjFohRjWq7AmPyW27iVyeaCYa
	NmDtQLdH02fbv3ikrcK3fBwhg2F0D76BJ/QYld8SniuC3kaBe0GdB3II/rWYHmXwRFfOJl
	E//fawGHXzt8w36dsMrKF3yoWUUhXFi/tdXJUfFpMTKKpa6BwnVxxpBqMKudgA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <65d296cb-a301-493b-963c-2c9c6e69dd87@pengutronix.de>
Date: Thu, 12 Nov 2026 08:48:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] boot: revert globalvar changes after each boot
 entry
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-3-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-3-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_234809_362219_4E43FB5A 
X-CRM114-Status: GOOD (  44.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > Boot entries, especially
    boot scripts, configure the boot by setting > global.bootm.* and global.linux.bootargs.*
    variables. To keep these from > leaking into [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A5D65201AD6
X-Stat-Signature: tzqsxx3sxkupywksjt18t6q61im9pjuz
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> Boot entries, especially boot scripts, configure the boot by setting
> global.bootm.* and global.linux.bootargs.* variables. To keep these from
> leaking into the boot entries tried afterwards, there are currently two
> mechanisms:
> 
>  - bootscript_boot() saves the global.bootm.* variables that are part of
>    struct bootm_data and restores them afterwards. Variables not part of
>    this struct, like global.bootm.tee, are not restored, and empty load
>    addresses come back as the hex values of UIMAGE_SOME_ADDRESS resp.
>    UIMAGE_INVALID_ADDRESS.

global.bootm.tee is a bad example, because support has been remove (in favor
of earlier OP-TEE loading). The variable only exists so an error can be thrown
if it's used. Scoping it would have been unnecessary.

>  - Kernel command line options have to be put into
>    global.linux.bootargs.dyn.*, which boot_entry() clears after each boot
>    entry. Options set by a boot entry in any other variable stay.
> 
> Replace both with a globalvar scope around the boot entry in
> boot_entry(). This reverts all changes to the globalvars covered by
> boot_globalvar_scope_push(), whatever the variable, and also restores
> values that were set before the boot entry instead of clearing them.
> This includes global.boot.watchdog_timeout, which boot_entry() reads
> before running the boot entry, so a value set by a boot entry so far only
> took effect for the following ones.
> 
> global.linux.bootargs.dyn.* still works as before for boot entries, but
> values set in this namespace before calling boot are now kept instead of
> being cleared once the first boot entry returns.

This is worth a short migration guide entry IMO.

> bootm_data_restore_defaults() has no users anymore, so remove it.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


With above point addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/booting-linux.rst | 20 ++++++++++++++------
>  Documentation/user/devboot.rst       |  4 ++--
>  common/boot.c                        | 35 ++++++++---------------------------
>  common/bootm.c                       | 21 ---------------------
>  include/bootm.h                      |  1 -
>  5 files changed, 24 insertions(+), 57 deletions(-)
> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index afc705ac86..0fbdc52c68 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -164,16 +164,24 @@ A simple boot entry in ``/env/boot/mmc`` could look like this:
>    global.bootm.image=/mnt/mmc1/zImage
>    global.bootm.oftree=/env/oftree
>  
> -  global linux.bootargs.dyn.root="root=PARTUUID=deadbeef:01"
> +  global linux.bootargs.root="root=PARTUUID=deadbeef:01"
>  
>  This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
>  :ref:`automount` path registered earlier). The devicetree will be used from
>  ``/env/oftree``. The Kernel gets the command line
> -``root=PARTUUID=deadbeef:01``. Note the ``.dyn`` in the bootargs variable name.
> -boot entries should always add Kernel command line parameters to variables with
> -``.dyn`` in it. These will be cleared before booting different boot entries.
> -This is done so that following boot entries do not leak command line
> -parameters from the previous boot entries.
> +``root=PARTUUID=deadbeef:01``.
> +
> +All changes a boot entry makes to ``global.bootm.*``, ``global.linux.*``,
> +``global.of.*`` and
> +:ref:`global.boot.watchdog_timeout <magicvar_global_boot_watchdog_timeout>`
> +are reverted when the boot entry returns:
> +modified variables get their previous value back, variables created by
> +the boot entry are removed and variables it removed are created again.
> +This way a boot entry that fails to boot doesn't leak its settings into
> +the following boot entries. Older boot entries put their Kernel command
> +line parameters into ``global.linux.bootargs.dyn.*`` for this reason,
> +which still works, but is no longer necessary. Settings meant for all
> +boot entries belong into an init script or an nv variable instead.
>  
>  This entry can be booted with ``boot mmc``. It can also be made the default by
>  setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
> diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
> index e319636994..62cc357c3a 100644
> --- a/Documentation/user/devboot.rst
> +++ b/Documentation/user/devboot.rst
> @@ -191,8 +191,8 @@ when ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled), and appends the
>  contains.
>  
>  Kernel command line fragments set by the script should use the
> -``global.linux.bootargs.devboot.`` namespace. Unlike
> -``global.linux.bootargs.dyn.``, which is cleared whenever a boot entry
> +``global.linux.bootargs.devboot.`` namespace. Unlike variables set
> +by the boot entries themselves, which are reverted whenever a boot entry
>  returns, it survives falling through to the next boot target, e.g. for
>  ``devboot system0 system1``. The ``devboot`` command removes the
>  namespace after the boot command returns, so a subsequent plain
> diff --git a/common/boot.c b/common/boot.c
> index 1d8768b864..eaeff7796e 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -97,7 +97,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  	int bootm_nattempts;
>  	int ret;
>  
> -	struct bootm_data backup = {}, data = {};
> +	struct bootm_data data = {};
>  
>  	if (dryrun == 1) {
>  		printf("Would run %s%s%s\n", bs->entry.path,
> @@ -105,18 +105,6 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  		return 0;
>  	}
>  
> -	bootm_data_init_defaults(&backup);
> -
> -	/*
> -	 * The strings point to the globalvars' current values, which the
> -	 * script frees when it assigns new ones. Keep our own copies.
> -	 */
> -	backup.os_file = xstrdup(backup.os_file);
> -	backup.initrd_file = xstrdup(backup.initrd_file);
> -	backup.oftree_file = xstrdup(backup.oftree_file);
> -	backup.root_dev = xstrdup(backup.root_dev);
> -	backup.root_param = xstrdup(backup.root_param);
> -
>  	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
>  	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
>  
> @@ -129,12 +117,12 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  	ret = execute_binfmt(bs->args ? 2 : 1, argv);
>  	if (ret) {
>  		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
> -		goto out;
> +		return ret;
>  	}
>  
>  	/* No point in repeating bootm if script already called it */
>  	if (bootm_nattempts != bootm_command_attempts())
> -		goto out;
> +		return 0;
>  
>  	bootm_data_init_defaults(&data);
>  
> @@ -143,17 +131,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  	if (dryrun >= 2)
>  		data.dryrun = dryrun - 1;
>  
> -	ret = bootm_entry(entry, &data);
> -out:
> -	bootm_data_restore_defaults(&backup);
> -
> -	free_const(backup.os_file);
> -	free_const(backup.initrd_file);
> -	free_const(backup.oftree_file);
> -	free_const(backup.root_dev);
> -	free_const(backup.root_param);
> -
> -	return ret;
> +	return bootm_entry(entry, &data);
>  }
>  
>  static unsigned int boot_watchdog_timeout;
> @@ -210,6 +188,7 @@ BAREBOX_MAGICVAR(global.user,
>  
>  int boot_entry(struct bootentry *be, int verbose, int dryrun)
>  {
> +	struct globalvar_scope *scope;
>  	int ret;
>  
>  	pr_info("Booting entry '%s'\n", be->title);
> @@ -224,11 +203,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
>  		}
>  	}
>  
> +	scope = boot_globalvar_scope_push();
> +
>  	ret = be->boot(be, verbose, dryrun);
>  	if (ret && ret != -ENOMEDIUM)
>  		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
>  
> -	globalvar_set_match("linux.bootargs.dyn.", "");
> +	globalvar_scope_pop(scope);
>  
>  	return ret;
>  }
> diff --git a/common/bootm.c b/common/bootm.c
> index 22f2ca4081..2ad8c34bb4 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -101,27 +101,6 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  	data->efi_boot = bootm_efi_mode;
>  }
>  
> -void bootm_data_restore_defaults(const struct bootm_data *data)
> -{
> -	globalvar_set("bootm.oftree", data->oftree_file);
> -	globalvar_set("bootm.image", data->os_file);
> -	pr_setenv("global.bootm.image.loadaddr", "0x%lx", data->os_address);
> -	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
> -		pr_setenv("global.bootm.initrd.loadaddr", "0x%lx", data->initrd_address);
> -		globalvar_set("bootm.initrd", data->initrd_file);
> -	}
> -	globalvar_set("bootm.root_dev", data->root_dev);
> -	globalvar_set("bootm.root_param", data->root_param);
> -	bootm_set_verify_mode(data->verify);
> -	bootm_appendroot = data->appendroot;
> -	bootm_provide_machine_id = data->provide_machine_id;
> -	bootm_provide_hostname = data->provide_hostname;
> -	bootm_provide_policy = data->provide_policy;
> -	bootm_verbosity = data->verbose;
> -	bootm_dryrun = data->dryrun;
> -	bootm_efi_mode = data->efi_boot;
> -}
> -
>  static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_AVAILABLE;
>  
>  enum bootm_verify bootm_get_verify_mode(void)
> diff --git a/include/bootm.h b/include/bootm.h
> index bbdbb8e69d..06eb90c5ed 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -196,7 +196,6 @@ static inline int bootm_verbose(struct image_data *data)
>  #endif
>  
>  void bootm_data_init_defaults(struct bootm_data *data);
> -void bootm_data_restore_defaults(const struct bootm_data *data);
>  
>  const struct resource *
>  bootm_load_os(struct image_data *data,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


