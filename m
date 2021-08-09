Delivery-date: Mon, 09 Aug 2021 20:37:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDA9i-0002EL-Gu
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:37:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDA9e-0000OF-1Z
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:37:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G1gxerdRDrTrQyAfJrtT039vZYlcJNF5FhCJeLLoAkM=; b=mhGotzvCA2wFTXerhnDdYke7d9
	YXkNAUD34RjQiC+TxeX5y8rQ6bUpMjw5L3NK2haUHQoGSQbCE1fK2dS6KvG2VVhYl5JcCdyEsO1Qf
	gSVL7NSBCNdXCLWCyoUMhXfsjH04wOfCiQsNQJkxYO1ADLKZoWiew+oF0PwmLUYNhr/WpfCvqnHDs
	+Xuca8sToBsT1DmyW6nZS2konXOsh4yV7dRYKjM7gNMw26h5g6OGhNh5fLqGnT338SDwycwEGW8TN
	XUl4MLfwjkqaUVQFz9s13Ra2PcZQx6C5tKmq7CUGsvY/6KuZdCMRZq+AmJm7UtT8Y61I4Cx1ntMnH
	hvrd6oRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDA87-001jVI-1p; Mon, 09 Aug 2021 18:36:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDA7z-001jUq-FE
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:36:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDA7x-00008e-JE; Mon, 09 Aug 2021 20:35:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDA7x-0005wM-AC; Mon, 09 Aug 2021 20:35:57 +0200
Date: Mon, 9 Aug 2021 20:35:57 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210809183557.GG11515@pengutronix.de>
References: <20210518091644.2519581-1-u.kleine-koenig@pengutronix.de>
 <20210730070001.1441742-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210730070001.1441742-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:35:36 up 172 days, 21:59, 81 users,  load average: 0.11, 0.09,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_113559_555700_CC71EB5C 
X-CRM114-Status: GOOD (  20.62  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] arm/mvebu: sync barebox-arm-head.h to generic variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 30, 2021 at 09:00:01AM +0200, Uwe Kleine-K=F6nig wrote:
> En passant this adds support for PBL_BREAK. While there is no 64 bit
> support available for mvebu, keeping the difference between
> arch/arm/mach-mvebu/include/mach/barebox-arm-head.h and
> arch/arm/include/asm/barebox-arm-head.h minimal is a good thing.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes in this v2: Only some whitespace changes to reduce the diff
> between the two headers even more.
> ---
>  .../include/mach/barebox-arm-head.h           | 25 ++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

