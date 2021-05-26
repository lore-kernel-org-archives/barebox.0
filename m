Delivery-date: Wed, 26 May 2021 07:55:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llmVh-0003uE-8J
	for lore@lore.pengutronix.de; Wed, 26 May 2021 07:55:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llmVg-0000tI-CO
	for lore@pengutronix.de; Wed, 26 May 2021 07:55:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DNknH0gSdaLTYNNHvjIV2srgMos2s3PheIK0S/XWfVg=; b=vd2VaOGWkRrmHF7OqZVZ5biEbJ
	Umg9Fy26nOocYzwsBrpRV1d6QF/MuftDKfpPuWD+pO3S3PDny7JH+ZcJjtVhGo8mxJYXUq4z/AOZN
	pc0M/A7Bi2ZaIZQI17mxzeXmB0WFLujpuNqaVHV6PxKjH60X5wloWpWxp2BehStIH8XFwneFeyYt2
	qBsBtMzhoWvgvEym66GI23w2XHPnaPBnTw7dgOjum1TKu8QtrAyO3enSXkXX5HSfFcM4rrG6fcO//
	djrr7Y5GwPlmAmX4otO/ygG0oSkw3aqfUX0NTdD61gEn/S2LytphKzdBlXwVbo+fmiQ0mn+lTaM9X
	05wMTRLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llmUP-00BLWo-GI; Wed, 26 May 2021 05:53:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llmUK-00BLVQ-Oh
 for barebox@lists.infradead.org; Wed, 26 May 2021 05:53:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llmUJ-0000eG-Bh; Wed, 26 May 2021 07:53:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llmUJ-0000BJ-2M; Wed, 26 May 2021 07:53:51 +0200
Date: Wed, 26 May 2021 07:53:51 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20210526055351.GX19819@pengutronix.de>
References: <20210414130044.6910-1-bst@pengutronix.de>
 <b66b5544-ae32-7711-4920-65e63927a876@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b66b5544-ae32-7711-4920-65e63927a876@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:53:29 up 97 days,  9:17, 95 users,  load average: 0.21, 0.10, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_225352_837820_21D4ED12 
X-CRM114-Status: GOOD (  22.79  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] of: fix up /chosen node even when there are no
 bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 25, 2021 at 10:53:27AM +0200, Bastian Krause wrote:
> On 4/14/21 3:00 PM, Bastian Krause wrote:
> > From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > Currently the /chosen fixups of "reset-source",
> > "reset-source-instance", "reset-source-device" and "bootsource" do not
> > happen if no bootargs are available.
> > 
> > Fix that by moving the actual bootargs fixup to a dedicated function
> > of_write_bootargs() and only return there early on empty bootargs, but
> > still perform the /chosen fixups mentioned above.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > [bst: dropped new line deletions and modified string comparison, moved of_write_bootargs() call to original position, add commit message]
> > Signed-off-by: Bastian Krause <bst@pengutronix.de>
> > ---
> > No changes since (implicit) v1.
> > ---
> >  common/oftree.c | 20 +++++++++++++-------
> >  1 file changed, 13 insertions(+), 7 deletions(-)
> 
> Gentle ping.

Sorry, missed these. Applied now, thanks

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

