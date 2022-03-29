Delivery-date: Tue, 29 Mar 2022 10:57:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ7fQ-00A13I-4x
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 10:57:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ7fS-0003yk-Jk
	for lore@pengutronix.de; Tue, 29 Mar 2022 10:57:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rKU385sCJEPfZl2us/cIudAdRY7S6XivHlXamBDRJQw=; b=oFxnRshhLGte2gIZh2aT2ZC+oW
	k9hDpHi3XrHNaDj3PFkLNsY6WyjBrSijzLnQ95HwO3P82nuVVf6K6qgt4fdYB+xbzBa2Lw9ZKuUF2
	GyQkoqAROaeaaNGE4nYqkiNwssNPXzdQz9JfAX2KdKE+hriftFYdd8477wRjRyqV4e5ifpM0CHQOi
	kWnD64kkbE9aBeXNLxlWne697M66g6tGleCBw8O4MuUgQtII+CesYn+PlOMDqDH18mFT3scR3YYub
	Q/5ANQMiQe4jW+tF/+go7G7IgJrh74MlVtHYtmn+RKYjyXMqxM85SnmyFbdWaaZ9GZq5R7mAeuJTA
	Vur/P+GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ7eA-00BXjq-CJ; Tue, 29 Mar 2022 08:56:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ7e4-00BXhw-03
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 08:56:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZ7e2-0003dA-F0; Tue, 29 Mar 2022 10:56:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZ7e2-0005Mb-1s; Tue, 29 Mar 2022 10:56:06 +0200
Date: Tue, 29 Mar 2022 10:56:06 +0200
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org, upstream@lists.phytec.de
Message-ID: <20220329085606.GV12181@pengutronix.de>
References: <20220329073333.435822-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329073333.435822-1-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:52:34 up 108 days, 17:38, 87 users,  load average: 0.06, 0.19,
 0.40
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_015608_074928_CFD1B2C3 
X-CRM114-Status: GOOD (  23.71  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] of: implement new
 of_device_ensure_probed_by_alias_stem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Andrej,

On Tue, Mar 29, 2022 at 09:33:32AM +0200, Andrej Picej wrote:
> Function first goes through all the aliases which have the given stem.
> It then ensures that all the devices hiding under these aliases are
> probed.
> 
> User can specify one device_node which won't get probed. This is mainly
> for avoiding recursion if the function will be called from device probe
> function, or to specify the device which should get probed last. In the
> later case the user should probe the last device manually.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
> Changes in v2:
>  - add check for deep probe support,
>  - users can now specify one device node, which won't get probed. This
>    ensures that one device can be probed last and we avoid recursion, if
> this device happens to have alias,
>  - fix function name (ensured -> ensure).

Your v2 came before I had a chance to react to your comments on v1, I
was on vacation last week. I looked at the issue from another
perspective and rather than ensuring a certain probe order I think we
should decouple the GPIO numbers (at least the ones from the SoC
internal controllers) from the probe order, see the patch I just sent.

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

