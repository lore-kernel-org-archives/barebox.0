Delivery-date: Mon, 07 Feb 2022 10:02:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzuj-0086VH-V0
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:02:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzui-0003uL-Iq
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:02:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QTum5YKsrm/W5MFV9oysTgxS1CzgQIWErzbH2P0M5jc=; b=TT9bZe1iE7aFSdwHoyyXv87XJT
	ISzwvPj41m1Jrzh3CJIrYzSRt7Zh4dSnogGzw6vs7fkmcVw4AJuRo2dU8a3zDWyQ0j5bf8vQ+dnrb
	/iRQBCeJWH8k9TwQmJ5wBZnDT3BwAmnO+M31x47KY4e5GfYFw8ChqrTBrY+PDw1Bhs7R+dN0pjlDh
	U9FbScr2fITc2JQhLVEgxXBmKvQ8yjXPyia1G5EFEeAUHeZ7smmJFRzQy0jRJzzp88WxtimJo7CEI
	8ELg5DMZVWoizuS9usnnlScAfM/wt2V17YVm5l4z9YQOrouGIJvqn3vRYr2IyrAiZJQIdhdgFA8I1
	s2n+Nu6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGztV-009TAQ-Vd; Mon, 07 Feb 2022 09:01:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGztC-009T3t-6S
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:00:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGztA-0003cN-Or; Mon, 07 Feb 2022 10:00:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGztA-0001Lv-Fk; Mon, 07 Feb 2022 10:00:48 +0100
Date: Mon, 7 Feb 2022 10:00:48 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mtr@pengutronix.de
Message-ID: <20220207090048.GG18637@pengutronix.de>
References: <20220202111932.1227416-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202111932.1227416-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:00:31 up 58 days, 17:46, 81 users,  load average: 0.48, 0.46, 0.49
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_010050_287116_13D00E63 
X-CRM114-Status: GOOD (  21.38  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] state: add deep probe aware helpers to get state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 02, 2022 at 12:19:32PM +0100, Ahmad Fatoum wrote:
> state_by_name itself can't be made deep probe aware as it doesn't have
> enough information on what to probe. Board code calling it must instead
> itself ensure that the state has been proved (either via initcall
> ordering or by calling e.g. of_ensure_probed_by_alias). For
> state_by_node we can do it better: We can ensure probe of the supplied
> device node. For most purposes, users just want to probe the default
> state. This can now be done with state_by_alias("state").
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/state/state.c | 20 +++++++++++++++++++-
>  include/state.h      | 12 +++++++++---
>  2 files changed, 28 insertions(+), 4 deletions(-)

Applied, thanks

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

