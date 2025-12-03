Delivery-date: Wed, 03 Dec 2025 17:08:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQpP7-007ZOY-01
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 17:08:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQpP6-0002Wm-Ey
	for lore@pengutronix.de; Wed, 03 Dec 2025 17:08:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BVq/1yAIop+53BvyBZgwFjad/pWtjrWuVQBmNu95ePA=; b=rmHDY1LdBO9EjAmlPwyB35jd0Z
	oWpGeg0tC0cfoeM/2GJgaN4XRhJ1emtp6+CUIBHGXldd5rpZUHd/+qSurAxTYI8kgIEc6UAFiAIIr
	jg4GUtuln6aRFkamVm+8SiI4BMiQCtGNZMGpPAGjTy2kJ6B6kfM0WyKztqR/+KnbmTQII0DpzGKOv
	B+EOiqyd8hpNX/+ZciX0aNkgpAbkcQz+g9+aqD/yrGLDzGN16g9BXR08pdcy2o+J97/qrHz2ypCzu
	4qjAOamXOGXp5emxX3ephNTtK/9WhHea8DJdDJ2lDHvVlUa0nTr5OOEvfThRX+4xzzz3P8t8Wo8c5
	hNYTC/3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpOW-00000006mPl-1LS4;
	Wed, 03 Dec 2025 16:07:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpOV-00000006mPa-17uD
	for barebox@bombadil.infradead.org;
	Wed, 03 Dec 2025 16:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=BVq/1yAIop+53BvyBZgwFjad/pWtjrWuVQBmNu95ePA=; b=bjU2efNEgxLxZBmY51gKC1mOr8
	nkc1IHVmwpHU7LWWHp0T+wvyFGG+qwtHXVKeCF7HDQatwlobDAtxwwjt8MjJrM9GFO3+baB73hgaM
	twx8CgfoxIJSr3O3+ND7hNZ0eA8c+TLho2ukH3hrf2nelpS8EkRgKfeGiPQJxKbAmeWVgVz/yYtgv
	ibHSIubHE3bDZFQBjmhJ5xIacLcO3PAjtOH/PBdSK79Cd4/fnMhkCdciqFGkBiz71+zd8XME0z6Bi
	tNQsaV1tkVibz263QeM1vgxNWGr0VwbqUGf1vI3aWfQSBE4EGnL4TZmXYImTKQJEi1eBnCsOtBig9
	GNZ0zDSA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoWu-00000002Ulp-1Mzc
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:12:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vQpOQ-0002Qb-Rt; Wed, 03 Dec 2025 17:07:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQpOQ-003o3F-2B;
	Wed, 03 Dec 2025 17:07:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQpOQ-003dZ6-1m;
	Wed, 03 Dec 2025 17:07:50 +0100
Date: Wed, 3 Dec 2025 17:07:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aTBgVglt6dqmPuIz@pengutronix.de>
References: <20251128150434.3842713-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-3-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201072452.1829564-3-f.pflug@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_151232_466784_356AE692 
X-CRM114-Status: GOOD (  16.05  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 2/4] fs: split rootargs into root and options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On Mon, Dec 01, 2025 at 08:20:58AM +0100, Fabian Pflug wrote:
> +void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts)
> +{
> +	if (fsdev) {
> +		*root = dev_get_param(&fsdev->dev, "linux.bootargs.root");
> +		*rootopts = dev_get_param(&fsdev->dev, "linux.bootargs.rootopts");
> +	}
> +}

dev_get_param() returns a const char *, so arguments should be const
char **. The compiler should have warned you about this. Unfortunately
YOCTO hides these warnings when the build succeeds, so in case you build
with YOCTO it's worth building barebox standalone once before sending.

When fixing this several other warnings pop up with similar issues...

> +
> +char *format_root_bootarg(const char *root_arg, char *root, char *rootopts) {

...when fixing these you end up with making these arguments const char *

> +	char *bootarg;
> +	if (rootopts)
> +		bootarg = xasprintf("%s=%s %s", root_arg, root, rootopts);
> +	else
> +		bootarg = xasprintf("%s=%s", root_arg, root);
> +	free(root);
> +	free(rootopts);

... which then gives you a warning that you pass a const char * to
free(). Here the strings are really not allocated and the free() should
be dropped.

I fixed this up this time, but please look for compiler warnings next
time.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


