Delivery-date: Tue, 13 Apr 2021 11:07:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWF0z-0007CA-SX
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:07:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWF0y-0004Ps-Mz
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:07:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PIqXwGqsvAxY/wRMkA0Ju6XwUxfJHaL/VXiWhqvTMWM=; b=J28wwtsS/q0VAEvQb3WswqsQI
	xctZk30CF/TwdYndfOe9vUGzxFujCtlC23xwg62I2JktAJTMIwWdwl+fbpGlvCcihyt/eoPfsGu+D
	AQm5DBHV9hZu9n6tJztgpwfRD9AdRKtmByiamxXadUmVnVgNk4GX4++DHbDRQkN1SGW0sZhEXQ1mO
	+y5QqGvGUDhAGuoSYGmVSKitMb6ccvQ5tqBs4C+aA9TLKxqxDYXuZnLsGO0FlY603qlfygtDS0rz4
	kKobI7/jhFNyfilUf/wAp5huBFycBYGh08XXZgct5VFsHvNNRpFqrg5LgNyOCGSiNa1l2qqveeThb
	/2n4wzfvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWEzU-008eTO-NG; Tue, 13 Apr 2021 09:05:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEzH-008eS6-Um
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9pll/CIbq4R2AD1IrzhZ0oyQOTQSeefVvJ8IAsVJhXM=; b=3tWRzk/tq6dHZ3vkK40TBF8TGC
 b5f+ILTqmfp+JdLt4lykorqmy1Emfd0QDaKZFlhUDDH52rphCRLTNH6jJs63a2Jw9ILLzLxD2WlfE
 nzkxWmmmrKJhfH3okFzj90NoYNhfcR23hKzjceu0oRLr3irE+V2SEHbj60DxLUYPXNciiPcFtQfPb
 7sF9/6CXHaAsJ+jFmjzfH1VL4+F37NqpWczeIYow7HlJDIBoHaXBNmB/O3gde6bkbsiRJb47wOzGi
 1/DvSerkPqdAlErzZ6AQ6sgWnQyWtDCaTa3oDoUWPOZ1xjEMZJw/kNXb0OYsx38a/70u9aClZeuOg
 9RZLDDvw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEzE-006rIz-Ua
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:05:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWEzD-0003zi-MJ; Tue, 13 Apr 2021 11:05:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWEzD-000591-CR; Tue, 13 Apr 2021 11:05:31 +0200
Date: Tue, 13 Apr 2021 11:05:31 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20210413090531.GM19819@pengutronix.de>
References: <20210409081503.6926-1-bst@pengutronix.de>
 <20210409081503.6926-2-bst@pengutronix.de>
 <20210413051613.GG6950@pengutronix.de>
 <5039de85-c337-6781-eef3-0e8e4ca17fff@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5039de85-c337-6781-eef3-0e8e4ca17fff@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:05:07 up 54 days, 12:29, 101 users,  load average: 0.22, 0.48,
 0.50
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_020533_006403_22B1DD05 
X-CRM114-Status: GOOD (  29.10  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] of: introduce global.linux.bootargs_overwrite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 10:22:07AM +0200, Bastian Krause wrote:
> On 4/13/21 7:16 AM, Sascha Hauer wrote:
> > On Fri, Apr 09, 2021 at 10:15:03AM +0200, Bastian Krause wrote:
> >> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>
> >> By default, barebox overwrites the bootargs in the oftree if it itself
> >> has any. Make this behavior configurable by adding a new global
> >> variable. It allows either overwriting the oftree bootargs
> >> (global.linux.bootargs_overwrite=1) or appending barebox' bootargs to
> >> the oftree bootargs (global.linux.bootargs_overwrite=0).
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> [bst: dropped a new line removal, extend commit message]
> >> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> >> ---
> >>  common/oftree.c | 22 +++++++++++++++++++++-
> >>  1 file changed, 21 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/common/oftree.c b/common/oftree.c
> >> index aaeb199a9e..f3a5d9c5d1 100644
> >> --- a/common/oftree.c
> >> +++ b/common/oftree.c
> >> @@ -16,6 +16,7 @@
> >>  #include <reset_source.h>
> >>  #include <watchdog.h>
> >>  #include <globalvar.h>
> >> +#include <magicvar.h>
> >>  
> >>  #define MAX_LEVEL	32		/* how deeply nested we will go */
> >>  
> >> @@ -161,9 +162,14 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
> >>  	free(buf);
> >>  }
> >>  
> >> +static int bootargs_overwrite = 1;
> >> +BAREBOX_MAGICVAR(global.linux.bootargs_overwrite, "overwrite original oftree bootargs");
> > 
> > How about naming it global.linux.bootargs_append instead? It would make
> > it more clear that we are deviating from the default by setting the
> > variable to true.
> > 
> 
> That's fine with me.
> 
> Can you change that or should I send a v2?

Please send a v2

Thanks
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

