Delivery-date: Wed, 18 Mar 2026 11:51:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2oUk-0029pU-08
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 11:51:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2oUj-0001Ve-El
	for lore@pengutronix.de; Wed, 18 Mar 2026 11:51:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SQ9xs1g4ZJRpyBUzCt7ITnsRZWgl6TweS0uY66XlTiQ=; b=eVFxlEdlfhSq4JXI3l3WcHcbTP
	A27xQISjBcfNk9qAJZnVA9jaItTQO4uXKOAc7AMGXK0bosXPmvYqO/YQp7Et6Sz1mbd9OX1LM6oSZ
	iscRRMtNDcI7qkZyzyH4aQ2u3/gd4FVlgJbso35yPOCgwTA5cfDhIdq44IPJEkLgDNK66YjkqK17T
	P9TrasyAnhO7EHwuAHmLtbNPBLGJftivJey50vPPgp5Z8c2dp95aj9E25gAtivedgk0BY7jdBGMxE
	swOThoc//SkALdK1RUyXYQxow+YEjKHD3ElWGNPuPWNJxBXw3uOC9ivLzSCnMwjconGOh/4MriZL6
	n/+9B8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2oUC-00000008EqS-0sno;
	Wed, 18 Mar 2026 10:50:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2oU8-00000008Epw-2LP2
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 10:50:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2oU7-0001Ow-0a; Wed, 18 Mar 2026 11:50:43 +0100
Message-ID: <edd64ade-0956-484f-a79c-a59513de4f96@pengutronix.de>
Date: Wed, 18 Mar 2026 11:50:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
 <20260312144505.2159816-14-a.fatoum@pengutronix.de>
 <abp1Y3WwJTTtxpdk@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <abp1Y3WwJTTtxpdk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_035044_611231_13431927 
X-CRM114-Status: GOOD (  18.12  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/16] defaultenv: base: add new devboot script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/18/26 10:50, Sascha Hauer wrote:
> On Thu, Mar 12, 2026 at 03:44:57PM +0100, Ahmad Fatoum wrote:
>> +The devboot script
>> +------------------
>> +
>> +The ``devboot`` command (``/env/bin/devboot``) automates the override
>> +workflow for network-based development:
>> +
>> +1. Brings up the network (``ifup -a1``).
>> +2. Changes into the fetch directory
>> +   (:ref:`global.net.fetchdir <magicvar_global_net_fetchdir>`, default
>> +   ``/mnt/tftp``).
> 
> Is this default actually set somewhere? I can't find it.

global.net.fetchdir is defined in net/net.c since commit
4f328e47e5c6 ("net: make default netboot artifact directory configurable")

> 
>> +3. Sources a configuration script named
>> +   ``${global.user}-devboot-${global.hostname}``. If that file does not
>> +   exist, it falls back to ``${global.user}-devboot-${global.arch}``.
>> +4. Translates the variables set by the script into ``boot -o`` arguments.
>> +5. Passes any extra arguments through to the ``boot`` command.
>> +
>> +.. note::
>> +
>> +   TFTP is not a real file system, e.g., listing of directories is not
>> +   possible. Keep that in mind if the devboot script does more than
>> +   just fetch files by name from TFTP.
>> +
>> +Usage
>> +^^^^^
>> +
>> +.. code-block:: sh
>> +
>> +  # Boot from MMC with devboot overrides
>> +  devboot mmc
>> +
>> +  # Boot from the default boot entry
>> +  devboot
>> +
>> +  # Make devboot the default for subsequent boots
>> +  nv.boot.default=devel
> 
> So that would be equivalent to a permanent "devboot". Is there also a
> way to specifiy permanent "devboot mmc"?

No, but it's clear to me this is a non-sense boot target as boot would
refer to boot.default... I'd just drop it from v2.

Please let me know when you are done with the review and I can resend.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


