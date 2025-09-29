Delivery-date: Mon, 29 Sep 2025 10:29:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v39Ga-002M90-1r
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:29:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v39Ga-0007I4-0v
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:29:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9NGQgUrLL1F+MFVRL958y7IjEphcgzydqKqRHemQts=; b=l9PVFvnzbZs3PN1w/Ywp0mFtuZ
	tiulHUh/66T/Osa3pGyVpYfVlisSS+fYfqAoKSSR2fvgw1eSJ2cv3w/vU+iB9flHo/HZY1NpLnFu9
	lhS9n5jg4xoc8AisYv6HWGFn0O1QBWxBryDon9QcR1N3YprFYOWKKynd+56V95A6n3YCrTW3AS5Mj
	0yB+VL6x8Ec6yfYUmj95ZxnS7g5iM8WxRypilVHzWoWBpzDae8xIUzPXei37+vthvMImmIn4fd9mV
	TFbazg5OdXoKd1omRTW6GjGP27M/9upXhreUgeldR2lLotIcxwX7YmmyF9m1Br578FzVD4l3pLYAc
	bfK1gXaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39GA-00000001my5-1RcK;
	Mon, 29 Sep 2025 08:29:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39G7-00000001mxW-3o7e
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:29:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v39G6-000732-2r; Mon, 29 Sep 2025 10:29:22 +0200
Message-ID: <e4e9bfd8-2600-4435-a375-47fe289f73c8@pengutronix.de>
Date: Mon, 29 Sep 2025 10:29:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX
 <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
 <20250926-tlv-integration-v1-3-45dc68b9b602@pengutronix.de>
 <bd290731-fc60-4ec0-b091-cef811d4e057@pengutronix.de>
 <87cy7a297t.fsf@waldekranz.com>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <87cy7a297t.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_012923_955835_D7C60CFA 
X-CRM114-Status: GOOD (  16.67  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/7] test: move dm-verity testdata generation to fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Tobias,

Thanks for your reply.

On 2025-09-28 11:54, Tobias Waldekranz wrote:
> I'll leave some thoughts that went through my mind as I was doing the dm
> work. This is from the perspective of someone with almost no experience
> of neither pytest in general, nor of labgrid.
> 
> It would be great if much of the logic from the workflow file could be
> moved to a regular Make target or something, so that it is easier to
> answer questions like "Will the CI job run with testfs for this config
> now?"

I agree that there should be a simple way to "make test" and that this
should closely resemble what we run in CI. With all the skip and xfail
logic we have, it can happen quite easily to have pytest succeed when
run manually and then fail on CI.

What I did to replicate the github CI was using "act" with -r (to keep
containers running) and podman. Then after the run I opened a shell in
the container to tinker with the CI failure. This approach is not
something we can present in the docs to explain to contributors how to
get the CI green.

Agreed that we should move the build, kconfig, test invocation logic
from the github workflow to a script. Maybe a Makefile, maybe just
shell, and invoke that from the workflow yaml. Then we document how
contributors can invoke that script in the barebox ci container to
replicate what happens on github.

I didn't get to do it this time unfortunately.

Maybe next time I touch the pytests if the list here agrees on this
direction.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


