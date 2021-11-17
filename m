Delivery-date: Wed, 17 Nov 2021 08:44:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFcQ-0005wo-Rk
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 08:44:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFcQ-0004Ia-2A
	for lore@pengutronix.de; Wed, 17 Nov 2021 08:44:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oQydU9zoPnsPQ+IgjD7tclgC1bj44BPnuTb9ice8zTc=; b=vF9moPWLkMckp7vcDp+Hsh/r5y
	y5Hrp4F/Z13uAVw9YTI9C6uJfAyftRDsxVaQO0dx8m0zDMSPoU8/4hViOuN/WY3g5oiEuy8jC1oZd
	E3KB5wYF1z0xf7zJlNmSfv4EDkT2SgUVyh9bjmaTArIsv9wtZnG91wnDSR8qDcZZDTnZSR2OjNFxb
	AZx4t6EnvhqPBa5UGljql1Ca7ms5+MadcHueAY5bf5hRQ5I+e7kzdgVqpgB9rwRUfJ2AZPv/ZlUsB
	fjG72rfJmHzfj8SQCWdEQomXucBXgNwIsAV7V7T3c5SIYrm/xZY9t5cNx9mECKjdr6C9leJMfW/RQ
	/qImXKbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnFaw-003qRq-Lo; Wed, 17 Nov 2021 07:43:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnFas-003qRT-Bo
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 07:42:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFaq-0004Dl-KK; Wed, 17 Nov 2021 08:42:56 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFap-0006Sg-Hg; Wed, 17 Nov 2021 08:42:55 +0100
Date: Wed, 17 Nov 2021 08:42:55 +0100
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20211117074255.GK6556@pengutronix.de>
References: <20211117034918.1226358-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117034918.1226358-1-masahiroy@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:42:41 up 272 days, 11:06, 118 users,  load average: 0.06, 0.09,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_234258_422838_2A20501A 
X-CRM114-Status: GOOD (  15.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] x86: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 17, 2021 at 12:49:13PM +0900, Masahiro Yamada wrote:
> 
> 
> 
> Masahiro Yamada (5):
>   kbuild: remove unneeded -nostdlib flag
>   x86: remove x86-specific cmd_barebox__
>   x86: stop copying unneeded sections to barebox.efi
>   x86: reuse cmd_objcopy to generate barebox.efi
>   x86_64: do not pass the EFI image handle or system table to relocation

Applied all, thanks

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

