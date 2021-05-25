Delivery-date: Tue, 25 May 2021 10:44:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSg1-0008V9-UT
	for lore@lore.pengutronix.de; Tue, 25 May 2021 10:44:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSg1-0005Aj-0z
	for lore@pengutronix.de; Tue, 25 May 2021 10:44:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okannRl7tVQDweChm5LyxTCVQZyQL2pMJan7HEWHmYA=; b=35aTsGWlike3CE
	TnBSLboEp/ibHiD4fERvGwKUXFAgpuU0yxxzfgd/pD1iRTIz0V//5v7VAbNjdVLuvNQp6b03VgKfe
	eVVO5bgVILV3QaY+yMXnhUntnMkLeDkC0u9tgwtMax/Expxii6o14jOXaBcAjKQmccKLdtrmgjqtc
	EnSQFfvzzzpoUgDCKkbrMMAGEsxHq0qjQY1dXj4W4rJg3ObLuY+SfCaQRY4ckT9cOwMrZwdKhAWfk
	x9oxydPXd/n0wVfa82cUkXBFtMsrBz+YE4wyuOKK8GiBd0+r4r2F7BAqfy1Htp+VrimVd8Qow4ux7
	1f3DAqo2lClxhtwBjsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llSeW-0048Vg-Mo; Tue, 25 May 2021 08:43:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llSeR-0048UP-Rf
 for barebox@lists.infradead.org; Tue, 25 May 2021 08:43:01 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1llSeO-00055j-8c; Tue, 25 May 2021 10:42:56 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1llSeN-000579-W6; Tue, 25 May 2021 10:42:55 +0200
Date: Tue, 25 May 2021 10:42:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210525084255.vhy5vtxrgvmfowt7@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
 <20210521163435.17365-2-m.felsch@pengutronix.de>
 <20210525051519.GK19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210525051519.GK19819@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:40:41 up 173 days, 22:47, 47 users,  load average: 0.22, 0.08,
 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_014259_922294_25BB6C69 
X-CRM114-Status: GOOD (  21.48  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] commands: mount: replace printf by pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-05-25 07:15, Sascha Hauer wrote:
> On Fri, May 21, 2021 at 06:34:32PM +0200, Marco Felsch wrote:
> > This allows us to control the output behaviour e.g. booting silently
> > to improve boot time.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  commands/mount.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/commands/mount.c b/commands/mount.c
> > index ff1d8bc5e5..bb2d1d60f4 100644
> > --- a/commands/mount.c
> > +++ b/commands/mount.c
> > @@ -74,7 +74,7 @@ static int do_mount(int argc, char *argv[])
> >  		if (IS_ERR(path))
> >  			return PTR_ERR(path);
> >  
> > -		printf("mounted /dev/%s on %s\n", devstr, path);
> > +		pr_info("mounted /dev/%s on %s\n", devstr, path);
> 
> Applied all except this one. This is the output from the mount command
> and as such it should be printed with printf.

Okay, just out of curiosity. Why should we avoid pr_*() for commands?

> I have no good idea to quiesce such output as we don't have any output
> redirection. Maybe we need an additional control knob for printf output.

This would be cool :)

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

