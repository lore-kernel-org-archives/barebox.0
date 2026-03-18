Delivery-date: Wed, 18 Mar 2026 10:51:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2nYQ-0028de-2V
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:51:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2nYQ-00015X-7T
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:51:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUMG7m3V9iXJ5BuzGwj52ZZL5QDejLcZ2K+odumD5fY=; b=ZTUBRsNOEpDhK1z0qECKMkTUL+
	cvGkOkZY5mXpQgRzUCvzvLzgp2yJ/5h2cphp4LObX/6pAqydJvthwKkf6zQAh84isA1HGFU1hnUvJ
	LoL11rZVWUeAstbyXkPjv36Ogz4KiSt/5QJavtwzSy8qeCp68kaiYZVxn8heAWzLbzlDfjc6o8Bla
	UHM4tJU/HnPCpOEzRnFbB+vB2NlkGvUIeZ6lW0/TL6ZKVDTuA8amJQnN2MaDh3z2Fkk8kAULa0FH/
	rfntkJ0l+36toCLX1I+lu1Qexq88xdVlh3GBvb6ySmkCZwkvDlwCZq2SlozBxVSe+NMMMWdXCrJOQ
	aUrCnSFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nXu-00000008AKV-16nl;
	Wed, 18 Mar 2026 09:50:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nXr-00000008AK8-0b2m
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:50:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2nXn-0000xv-Pr; Wed, 18 Mar 2026 10:50:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2nXn-000t0Q-1x;
	Wed, 18 Mar 2026 10:50:27 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2nXn-000000098Cw-29El;
	Wed, 18 Mar 2026 10:50:27 +0100
Date: Wed, 18 Mar 2026 10:50:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <abp1Y3WwJTTtxpdk@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
 <20260312144505.2159816-14-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312144505.2159816-14-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_025031_182591_C49E2D99 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/16] defaultenv: base: add new devboot script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 12, 2026 at 03:44:57PM +0100, Ahmad Fatoum wrote:
> +The devboot script
> +------------------
> +
> +The ``devboot`` command (``/env/bin/devboot``) automates the override
> +workflow for network-based development:
> +
> +1. Brings up the network (``ifup -a1``).
> +2. Changes into the fetch directory
> +   (:ref:`global.net.fetchdir <magicvar_global_net_fetchdir>`, default
> +   ``/mnt/tftp``).

Is this default actually set somewhere? I can't find it.

> +3. Sources a configuration script named
> +   ``${global.user}-devboot-${global.hostname}``. If that file does not
> +   exist, it falls back to ``${global.user}-devboot-${global.arch}``.
> +4. Translates the variables set by the script into ``boot -o`` arguments.
> +5. Passes any extra arguments through to the ``boot`` command.
> +
> +.. note::
> +
> +   TFTP is not a real file system, e.g., listing of directories is not
> +   possible. Keep that in mind if the devboot script does more than
> +   just fetch files by name from TFTP.
> +
> +Usage
> +^^^^^
> +
> +.. code-block:: sh
> +
> +  # Boot from MMC with devboot overrides
> +  devboot mmc
> +
> +  # Boot from the default boot entry
> +  devboot
> +
> +  # Make devboot the default for subsequent boots
> +  nv.boot.default=devel

So that would be equivalent to a permanent "devboot". Is there also a
way to specifiy permanent "devboot mmc"?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


