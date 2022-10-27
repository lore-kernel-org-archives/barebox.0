Delivery-date: Thu, 27 Oct 2022 09:35:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxPy-003pQU-O2
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 09:35:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxPx-0000fk-LD
	for lore@pengutronix.de; Thu, 27 Oct 2022 09:35:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2RW6moXXOhqm6qf36FFBYjE/NfV79N8F3SmtTZ2ApUg=; b=N/izr5XUYzUmfatK3MW+JpWirO
	ag2sP9qzHWjeyPO+/PCWqSt7FzGyzZSbV84XYbrEy92rY0JeNPZG8w46fjUUFFsr1gBvRyLA47hqx
	/jHWyBcHxjFjVrhjCiQPdzhOMS9nZ1qs4kXn34cGQOPuQurDxfs6lB1DEuBKweGL7IPpmvZRp70GM
	OjbEF8ZAejMtjuvRARwXv7g7YTLqQAwBbOlG2Qy9y4oq2EIzPT4ryJG5v4wX0JAWiCuG4/ytofl71
	/LTIf0mIS3u+FTifcdD5r66iu0TAjqxNjU7mfcSzigsqMOlNK2Xvq/2ggdLMfgg2VAFBXpIsvSs69
	3w77ZT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxOZ-00CBT7-7f; Thu, 27 Oct 2022 07:33:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxOT-00CBRw-VV
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 07:33:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onxOQ-0000SW-FL; Thu, 27 Oct 2022 09:33:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onxOQ-0003or-8j; Thu, 27 Oct 2022 09:33:34 +0200
Date: Thu, 27 Oct 2022 09:33:34 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221027073334.GS6702@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
 <20221026064205.2360041-3-a.fatoum@pengutronix.de>
 <20221027065651.GQ6702@pengutronix.de>
 <dc48c8c4-517c-349f-8582-1a718b4d699f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc48c8c4-517c-349f-8582-1a718b4d699f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_003338_046232_93423ACF 
X-CRM114-Status: GOOD (  25.71  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] string: reduce strjoin runtime, drop trailing
 separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 27, 2022 at 09:24:20AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 27.10.22 08:56, Sascha Hauer wrote:
> > On Wed, Oct 26, 2022 at 08:42:02AM +0200, Ahmad Fatoum wrote:
> >> The implementation of strjoin is a bit suboptimal. The destination
> >> string is traversed from the beginning due to strcat and we have a
> >> left-over separator at the end, while it should only be in-between.
> >>
> >> Fix this.
> > 
> > Rather than fixing a just introduced function I would expect a patch
> > introducing strjoin() and then another one converting the time command
> > over to use it.
> 
> What difference does it make?

You wouldn't have to fixup code you just introduced.

> > 
> > 	for (i = 0; i < arrlen; i++) {
> > 		p = stpcpy(p, arr[i]);
> > 		if (i < arrlen - 1)
> > 			p = stpcpy(p, separator);
> > 	}
> > 
> > That would also allow you to optimize the allocated buffer size above.
> 
> I like my version more. I dislike these once-only checks inside loops.

No problem ;)

	for (i = 0; i < arrlen - 1; i++) {
		p = stpcpy(p, arr[i]);
		p = stpcpy(p, separator);
	}

	stpcpy(p, arr[i]);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


