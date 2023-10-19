Delivery-date: Thu, 19 Oct 2023 15:46:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtTMO-00EGxZ-US
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 15:46:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtTMN-0006S7-1S
	for lore@pengutronix.de; Thu, 19 Oct 2023 15:46:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jzvJzsJy4woviAMsv4aO9T6ocY7biGS9iAZkBjUuKcw=; b=NHt4GTECa+zFrBGoQaZEInyS3h
	XP5pC0hQvjyE1z6UrJecEXhcQBHl+2bEt5FA36GJXaWG3qsrIpD6ADfyap1oReI4xWWWOxpBUk/hu
	eLd+5QuyDpyXynyk+FFCllEa9eNxj5D7T+tpzCqM3nRpnFO5AUIQYnxZsSfPrNuirAPes+lkU5YSz
	HnxyUcVqRkVfeBDto9yc9+4nQYIa4qedC0KxOXlm+n0veeN1PQKLfX0XG+SRPNi9gZBWCiddk/o3F
	c2MjidcRZjKXcwp2TVIS3xA33h6FPlWb3konm9XjjziR8gX6QauFZb73IubhSpGqg8pOn6+XphQgs
	A9BWqn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTKy-00HYQR-0d;
	Thu, 19 Oct 2023 13:45:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTKu-00HYPd-2f
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 13:45:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <h.assmann@pengutronix.de>)
	id 1qtTKp-0005x4-U8; Thu, 19 Oct 2023 15:45:11 +0200
Message-ID: <03c3b0c8-a286-4262-9085-961308264f18@pengutronix.de>
Date: Thu, 19 Oct 2023 15:45:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-LI
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230929085337.1894936-1-h.assmann@pengutronix.de>
 <20231004081914.GK637806@pengutronix.de>
From: Holger Assmann <h.assmann@pengutronix.de>
In-Reply-To: <20231004081914.GK637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_064516_886475_94520711 
X-CRM114-Status: GOOD (  29.77  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] bootchooser: honour reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

Am 04.10.23 um 10:19 schrieb Sascha Hauer:
> 
> I have a problem with this. When a system is interrupted with a power
> failure or by pushing the reset button during boot then we can't say
> that this boot was "good". We just don't know. All we can do is to
> ignore that last boot for the calculation of the remaining attempts.
> 
> The end result might implement your desired behaviour, but the code
> leading to that result doesn't seem logical.

I can see your point with this valid edge case. However, this leads me
to the question why we already have a variable "last_boot_successful",
as we indeed can never know whether a previous boot really was
successful: Even something like a RAUC mark-good service can set a wrong
"success flag" i.e. when a critical error happens after that service has
already run.

This brings me to the idea of simply "inverting" the logic, changing the
code of my v2 commit from:

   if (!last_boot_successful &&
           test_bit(type, &good_reset_src_type)) {
                   last_boot_successful = true;
   }


to basically:

   if (!test_bit(type, &BAD_reset_src_type)) {
                   bootchooser_target_set_attempts(bc->last_chosen, -1);
   }

In that case, we would only reset the attempts once we have determined
that no "bad reset" has happened. Of course, that requires to gather all
unwanted reset modes and to list them in the barebox env, but the effect
on the result would be the same and we could avoid thinking about
uncertain goodness.
Scenarios like the combination of bad reset and blackout would of course
still slip through, but to me it seems like a more logical approach.

I would then further suggest to rework the concept of the variable
"last_boot_successful", as it is currently not used anyway - other than
to be set to "false" by the original code. Maybe "bad_reset_assumed"?


> 
> Also we have this snippet:
> 
> 	if (test_bit(RESET_ATTEMPTS_POWER_ON, &reset_attempts) &&
> 	    reset_source_get() == RESET_POR && !attempts_resetted) {
> 		pr_info("Power-on Reset, resetting remaining attempts\n");
> 		bootchooser_reset_attempts(bc);
> 		attempts_resetted = 1;
> 	}
> 
> I'm not sure if that already implements your desired behaviour, but it
> at least overlaps with the case you are implementing. Would it be an
> option to extend the global.bootchooser.reset_attempts variable with a
> "reset" bit and adjust the above accordingly?

I thoroughly thought about this alternative. This might in general work
for my case, but I am not sure if the necessary changes to the code are
justified by the outcome:

We currently have the array "reset_attempts_names", which only holds the
entries "power-on" and "all-zero". As we want to be able to work with
any reset reason, we would have the respective array "reset_src_names"
(from include/reset_source.c/h) to be merged into that. As of my
understanding, this would either mean to

   - manually mirror all entries from "reset_src_names" into
     "reset_attempts_names" directly within the source code, or

   - memcpy "reset_src_names" into "reset_attempts_names" during
     bootchooser_init(), which would require to make
     the original "reset_attempts_names" not to be a const anymore.

The behaviour might also become inconsistent: As of now, "power-on" and
"all-zero" lead to ALL boot slots being reset to their default attempts
values.
In contrast to that, the evaluation good/bad reset is meant to only
affect the current active slot.
While it is possible to implement that, I don't think it is a good idea
to have the behaviour of which slots(s) will be reset depend on your
bitmask in such an intransparent way.


Any thoughts on your side?

Regards,
Holger

-- 
Pengutronix e.K.                         | Holger Assmann              |
Steuerwalder Str. 21                     | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


