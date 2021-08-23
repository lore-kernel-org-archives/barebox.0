Delivery-date: Mon, 23 Aug 2021 15:50:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAL9-0008Dl-9L
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 15:50:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAL5-0000JU-1y
	for lore@pengutronix.de; Mon, 23 Aug 2021 15:50:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xCaxY4sDeV66rsejMGoBrMYLsh0Ed4xah7CW5N7RxUE=; b=e80kK/7iO6EScaxspyGIkp4/R6
	9J/NcxUAMRWsMjvFNQqiIKyvdIBqAT6G4DAgpPolZA+sC8sV/2LC7PHsQB4/zDP8lIGGh/4RLtzY9
	6CdMlCRotXmv0QcKZxwCAYHU2fngSzcq5LC2UY4MO7VTnyZYReg9A8krniSF/x+CJVyQlMZ+iTI7w
	5mbIOz/bNv7ZLtMpVlr6EcTV1nzIFEzWFCgBtGL/WYJo/D+vf/7FEg1PtiSrsprqTU8KePlzRlO4Z
	nZMDOxTjs7TuluhEL4F9/atBhegYKQ6Ssg6rcd8oaa0aKmZxOgnocnQ/G4sidn3u+F51/sgZQc6KS
	3Kx4oxww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIAJR-00H86J-U0; Mon, 23 Aug 2021 13:48:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIAJJ-00H84n-Ta
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 13:48:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAJI-0008Sl-Lp; Mon, 23 Aug 2021 15:48:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAJI-0005oM-CA; Mon, 23 Aug 2021 15:48:20 +0200
Date: Mon, 23 Aug 2021 15:48:20 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210823134820.GK24834@pengutronix.de>
References: <20210810052928.101783-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810052928.101783-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:47:57 up 186 days, 17:11, 113 users,  load average: 0.18, 0.17,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_064822_001650_42C0C740 
X-CRM114-Status: GOOD (  18.37  )
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
Subject: Re: [PATCH v2 1/2] file_list: add file_list_parse_null()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 10, 2021 at 07:29:27AM +0200, Rouven Czerwinski wrote:
> Move the usbgadget parse() function to file_list and rename it to
> file_list_parse_null() which will return a NULL pointer instead of an
> error. Also adjust the callers in the usbgadget code.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> ---
> v2: rebase on master to fix USB mass storage conflict
> ---
>  common/file-list.c  | 16 ++++++++++++++++
>  common/usbgadget.c  | 24 ++++--------------------
>  include/file-list.h |  1 +
>  3 files changed, 21 insertions(+), 20 deletions(-)

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

