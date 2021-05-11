Delivery-date: Tue, 11 May 2021 14:02:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgR6J-0004o9-OW
	for lore@lore.pengutronix.de; Tue, 11 May 2021 14:02:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgR6I-0008Lr-Ql
	for lore@pengutronix.de; Tue, 11 May 2021 14:02:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4zG0PqGVG/LqIHYovg7QVsDapXaMSlhVjqST14CpQkM=; b=KBSRAGAGdzEsgE5pbTkM1b2gK
	rGl2c4GcIAwqAcrd95vOl1/bfcECJMXMVQYwlwzX16trO8S5x4jujoKSb4B56qayKLB3lQXEZUKQ6
	QQQzGVtG8rQ2bjcu9yENx/btXvTBAT/KoEdKt3rKRQUU4Zbm7gU2doY75MaCF1bneIMNJgeYj8oUB
	aqsfHt7R0qn7+IyYnzWqqz+3we92UuVwkMjK6BeFGQqk1cUuap9TKWjDVEkEorjXojLqIjAsTwGuK
	hsljfINnLg3RUT3uAcsQ4UZJMGn9mm2qPb+r2XcCEy0LybSlLgYxjnb9RuMslGdYPqA5mJgUJZ59y
	/YrLkEd+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgR59-00HGnR-C5; Tue, 11 May 2021 12:01:47 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgNJK-00GYNk-12
 for barebox@desiato.infradead.org; Tue, 11 May 2021 08:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MY/raPtJr7YjuIWQeDK/TgnHH2gpXVui85SPW34IHq0=; b=tZqiiUhOJ52XmmDdP4h1t27g8h
 1h5Bx0eUKQjj+Dq8A2TF347PVhPo3KVAHiWMOdwUivvouag5Uj735k367NouU2/UFZqZC/q4sUmAv
 CkHfpzHPGHz1kdDncMSHr02ahzQZBifgY7CX6oSAQxW0eqqQa2AoGnfLBmAcdAZkzs8eC8AzdTQqN
 Wsr+5qckDrd1KJHkcGc4xVg5BUFncpbkt40l4dy/BXEIJG/jAVkQOvZS/PiIAxh5Q13IS5xwpHRRT
 xKmDeznPiTOtwnSZvgw8HVEJZ19FRpNk5g7f/CBSmcYGEkBx2+HnoVl64I6x/Pa0rKPztm0iGwvn4
 GMYI2/eQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgNJH-009NYC-BP
 for barebox@lists.infradead.org; Tue, 11 May 2021 08:00:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgNJE-0000Ov-D7; Tue, 11 May 2021 10:00:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgNJD-0000iJ-Kg; Tue, 11 May 2021 10:00:03 +0200
Date: Tue, 11 May 2021 10:00:03 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Neeraj Pal <neerajpal09@gmail.com>, barebox@lists.infradead.org
Message-ID: <20210511080003.GF19819@pengutronix.de>
References: <CANi4_RU6QrU-ciUTpkLzGxp4fbibn0Dhyo4xP1m0=Mxm5LA74g@mail.gmail.com>
 <20210507105830.GW19819@pengutronix.de>
 <20210510101742.GA20010@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510101742.GA20010@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:58:30 up 82 days, 11:22, 105 users,  load average: 0.09, 0.08,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_010007_416470_44EBDF53 
X-CRM114-Status: GOOD (  27.74  )
/bin/ln: failed to access
 'reaver_cache/texts/20210511_010007_416470_44EBDF53': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_010007_416470_44EBDF53 
X-CRM114-Status: GOOD (  24.75  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [BUG] Out of bound read of size 1 in __d_alloc function which
 further leads to __default_memcpy function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 10, 2021 at 12:18:08PM +0200, Jules Maselbas wrote:
> Hi,
> 
> On Fri, May 07, 2021 at 12:58:30PM +0200, Sascha Hauer wrote:
> > Hi,
> > 
> > On Sun, Apr 18, 2021 at 01:10:10AM +0530, Neeraj Pal wrote:
> > > Hi,
> > > 
> > > I have found the Out of bound read issue of size 1 when argv[2] is "" in
> > > __d_alloc function fs/fs.c:1254 which further goes
> > > and crashes into  __default_memcpy call lib/string.c:562
> > > 
> > > Tested on:
> > > - barebox-2021.04.0
> > > - git commit af0f068a6edad45b033e772056ac0352e1ba3613
> > 
> > I can reproduce this here. Thanks for reporting it. I just sent out a
> > series fixing this issue, you are on Cc:
> I think this should also be fixed by the patch I've sent:
> (74946415a "fs: Fix link_path_walk to return -ENOENT on empty path")
> 
> This patch might not have fixed this exact case when running the nfs
> command. Have you been able to repoduce this issue with this patch
> applied ?
> 
> I've havn't tried to setup a net interface to debug nfs commandi,
> instead I was using simpler command such as `md5sum ""`.

Indeed I can confirm that 74946415a already fixes the issue, also with a
'nfs foo ""' command. This renders my patches unnecessary for this
issue, but still I think they do the right thing, so I tend to keep
them.

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

