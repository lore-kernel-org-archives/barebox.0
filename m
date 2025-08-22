Delivery-date: Fri, 22 Aug 2025 23:48:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upZcU-003SIm-12
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 23:48:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upZcT-0000TZ-2L
	for lore@pengutronix.de; Fri, 22 Aug 2025 23:48:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8dDi79g6xWFoqTBPPV8Nj73LmHJkN9U1ccnDYZ4xrSk=; b=gctGFMKF4hDJXTarpWzUiByfgb
	cyNsAi9NQKYkBH/+qZ/zss9jc+s0ieyezwA8FsVMQuX7fug0v1ssbVvh0XXbKwplkM8aNr2XbbtZC
	0XhBgzrF3h9RhNhRCvaE7VDFykV5hoEfvJMSWVL/QtnoIG6a42wL4aRIft8wdVGB00jAFGnttcyVu
	J3XFaZ6FvcHblpNY7tAXJEGmTlrnhLrlvdFmeXLpURfagrUUiDPnU2CJVnhfHlmoF/oPyYNVQvlYo
	cLPEvfUPEbLg33SU3pfTl/UWX97wxHG3qqi6R7QWYCF46t3YzgtMvSmuEVyJLHxg9wNHlimDnPR5W
	D2MSATsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZc1-00000003YG6-2I3f;
	Fri, 22 Aug 2025 21:47:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upOsb-00000002B3A-3PmR
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 10:20:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1upOsa-0005B2-4b; Fri, 22 Aug 2025 12:20:16 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1upOsZ-001Yro-35;
	Fri, 22 Aug 2025 12:20:15 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1upOsZ-00A6IZ-2h;
	Fri, 22 Aug 2025 12:20:15 +0200
Date: Fri, 22 Aug 2025 12:20:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aKhEXy49rlnKbgbx@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
 <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_032017_848891_682A8520 
X-CRM114-Status: GOOD (  18.04  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Aug 20, 2025 at 03:17:48PM +0200, Sascha Hauer wrote:
> diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
> new file mode 100644
> index 0000000000000000000000000000000000000000..4c71774bbbc98f9de9cf5463e5ef431de60be6ac
> --- /dev/null
> +++ b/scripts/Makefile.policy
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +real-policy-y   := $(addprefix $(obj)/, $(policy-y))
> +
> +targets         += $(addsuffix .tmp, $(real-policy-y))
> +
> +# policy-list
> +# ---------------------------------------------------------------------------
> +
> +subdir-policylist := $(addsuffix /policy-list, $(subdir-ym))
> +real-policy-y   += $(subdir-policylist)

Not sure what this line is good for, but it has the effect that subdirs
are added to real-policy-y...

> +
> +ifneq ($(policy-y)$(policy-),)
> +always-y        += $(obj)/policy-list
> +
> +$(subdir-policylist): $(obj)/%/policy-list: $(obj)/% ;
> +
> +$(obj)/policy-list: $(real-policy-y) FORCE
> +	$(call if_changed,gen_order_src)

...and then this fails because it tries to do a cat on the subdir.

It worked during testing because all policy-y was in leaf
directories, but I just added a policy-y to common/Makefile.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


