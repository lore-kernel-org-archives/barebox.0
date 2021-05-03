Delivery-date: Mon, 03 May 2021 13:57:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXCQ-00035k-SG
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:57:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXCQ-0001fL-1T
	for lore@pengutronix.de; Mon, 03 May 2021 13:57:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=04fPfdbGJbBG5r+FanbGVfEp31j60lZ9juZZ0rjfDD4=; b=OQXTEYU6X3uNTTVLPseUFfZLR
	WOixv+aBzqSL4h2qsqj6kceU4ekalgxwRvKOvTcyrjtbNaYBspawQffbm6N+QJh4nyTXcLcxS7iep
	QZH8+JPCvR2bqnqOeqFZBJ4DBmCVoLIp2wjKA4rFb6UEWg0UpH4whRfVSTM1GclL93PuNPk7TrZXu
	rZZWtwky7ZM7ELosoLUUnB57dNn3YNkZ2qwFukUh2wS3SaRVN01haN8a53jq0kA0+Ee5u6CuLOMo9
	bihOwBhjamdKe4dynw6ZHA/PArhnwhl79y1fur0l8bfZZTqFnmAb4g3DQlL2TnpFm1sxrqcLyK7P6
	GcvK1GmwA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXAk-00DoCQ-5T; Mon, 03 May 2021 11:55:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXAJ-00DoAv-64
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZETgXpIYCOUSdUlrM1H/+Qq1E+qG1Y6ZiY4MfQPbL5s=; b=zvVK/jLOgrIOLgcjiAmIOAxnpj
 oV2Nc1cZg4J36CcB1A/yN5gIjLZ687PMkDdLQt/PEozEuKcPvWrRkBzX/dfKnml6/JVu5Lmrgg1T7
 3JVaUYLRhUfJJpuk0cPWSAEo1u6kUyKb//dNHLKL88KCs7fqqpozKUUAYcg9tmUGldCZQNgap6zum
 fUO2gt95l+MvMbyvgLnt0pPeVQG8ehWMtV2l9VGin5PVjZbW8paB+wyfcSv5J8Uc1tiuz7tBZKUYK
 ZO/3LQAOluJU69VJNC575IYXW8Mv2l81uZieCLaQ3g/dM8xR+nmKjvYWa+QZkA1BbtEvSwSlUVF6Y
 dOHylhaQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXAE-0031xk-1L
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:55:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXAC-0001E3-2K; Mon, 03 May 2021 13:55:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXAB-0002Dt-P0; Mon, 03 May 2021 13:54:59 +0200
Date: Mon, 3 May 2021 13:54:59 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503115459.GE19819@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210428102821.2287-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210428102821.2287-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:51:50 up 74 days, 15:15, 100 users,  load average: 0.06, 0.12,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_045502_097268_C4B9A32E 
X-CRM114-Status: GOOD (  22.40  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] fixup! common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 28, 2021 at 12:28:19PM +0200, Marco Felsch wrote:
> ---
> Hi,
> 
> this is just a proposal to change the current linker array approach to
> an initcall approach. Why? Because now we can simply register a
> board-driver without having to list each compatible. 
> 
> I used the pure_initcall without adding a new one, since the
> documentation says that pure_initcalls are used to init variables. In
> our case we init boards_list.
> 
> Regards,
>   Marco
> 
>  
> -extern struct deep_probe_entry __barebox_deep_probe_start;
> -extern struct deep_probe_entry __barebox_deep_probe_end;
> +#define deep_probe_enable_board_driver(drv)			\
> +	_deep_probe_enable_driver(__UNIQUE_ID(deepprobe),drv)
>  
> -#define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_compatible)			\
> -	static const struct deep_probe_entry _entry			\
> -	__attribute__ ((used,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
> -		.compatible = _compatible,				\
> -	}
> +#define _deep_probe_enable_compatible(id,compatible)		\
> +	static int __init id(void)				\
> +	{							\
> +		return deep_probe_enable_board(NULL,compatible);\
> +	}							\
> +	pure_initcall(id)
>  
> -#define BAREBOX_DEEP_PROBE_ENABLE(_compatible)	\
> -	__BAREBOX_DEEP_PROBE_ENABLE(__UNIQUE_ID(deepprobe),_compatible)

I like the version with the linker array as we don't add a whole bunch
of new initcalls. Why not simply replace the _compatible argument with a
pointer to a of_device_id array?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

