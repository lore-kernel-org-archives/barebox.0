Delivery-date: Wed, 27 Apr 2022 11:47:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njeGy-00GsIx-Kj
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 11:47:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njeGw-0006A5-0Z
	for lore@pengutronix.de; Wed, 27 Apr 2022 11:47:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XxZ1bagaA/XPw07LFvX+YF6cPFda8QPbt1Ut9nn8b0=; b=jJeuuT0D7wsAuq
	AJAfIoTYWhqc/mHQ1fjWZFIanZc0vl7ZJCDRQgBRi0PjjPkH2r2NZGOmvHCtPFpf40gJm4kzjx+61
	YaoAIHvux5N5IzsWGQI4kLTo32WlHMRl2RNSX0rgx7Hi3VB3+tRLPe8xiaYgaHZEOYYkpVinmjA5X
	PUyrefic4LuPycahIQOo4/lakWLwiWIny/HLq2KcJM7e2w7U77YOv2dTIeBgv/gv9dD0wvL3pl2V+
	bBRTvt7+HjqP8JXzSA2bGc7M5DDaH5Nvve3VVyBpQYIqrbrHKjDR05W2Wq+bFTqWsFshj2PpCHX0M
	OhbR2PsD/wNY1rPLubog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njeFi-000pwW-Ak; Wed, 27 Apr 2022 09:46:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njeFa-000ptm-A6
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 09:46:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1njeFY-0005wG-OO; Wed, 27 Apr 2022 11:46:20 +0200
Message-ID: <746c795d-852b-d664-ac1e-361dc21bad15@pengutronix.de>
Date: Wed, 27 Apr 2022 11:46:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: rcz@pengutronix.de
References: <20220427093752.1746932-1-o.rempel@pengutronix.de>
 <20220427093752.1746932-4-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220427093752.1746932-4-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_024622_407235_B2489D95 
X-CRM114-Status: GOOD (  11.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 27.04.22 11:37, Oleksij Rempel wrote:
>  
> +	if (IS_ENABLED(CONFIG_MACHINE_FIXUP)) {
> +		const char *compat;
> +
> +		compat = getenv("global.of_machine_compatible");
> +		if (compat)
> +			of_fixup_machine_compatible(root, compat);

That's not what I had in mind. I meant for the variable to affect bootspec
use, i.e. fixup barebox device tree. This here just adds an extra compatible
to the kernel device tree.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

