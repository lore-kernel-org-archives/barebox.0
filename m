Delivery-date: Wed, 23 Jun 2021 08:44:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwd8-0006ke-5s
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 08:44:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwd7-0008Bj-6K
	for lore@pengutronix.de; Wed, 23 Jun 2021 08:44:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06+5gXFBPwD8Y+aorAuYZgCVWDJYc5Ux7CSiKb3tHrU=; b=Rpi5RIEMZNz17v
	gGWBX1V7xlMOiLm03A0SUo9UzDU3qlXOAPiNy0+26v/X3mR4jwoiWTvzGrMaRn42hhPTz7GDwNO/v
	taOGwDiPAw63vmEiBcm3PtT8/4oEb3Rl5+H4Xmq97MUVkPvhVbw/ojQCu9YtEAkmwmnm5qJAy02PV
	XfABbwv9eiDDceOoCcdea3g/pGbaCXta4jQhpsydMOVKgO0IodE84CtF5Zdpc5XBvzG/OBnraGHuY
	U0QSL/fpqEfKLYnwR2F3b+KFYXFyLZ1dOO2+aSDJr7nRz7qjM24tVh9x6p42NXB+FIs4Br5oYb+aZ
	Bc/HvZ2WZpvCLWgR6deQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvwbs-009dGm-B6; Wed, 23 Jun 2021 06:43:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvwbn-009dFt-0m
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 06:43:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvwbl-00081d-Nn; Wed, 23 Jun 2021 08:43:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvwbl-0004UN-4p; Wed, 23 Jun 2021 08:43:33 +0200
Date: Wed, 23 Jun 2021 08:43:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210623064333.GS9782@pengutronix.de>
References: <20210623043359.18391-1-s.hauer@pengutronix.de>
 <20210623043359.18391-3-s.hauer@pengutronix.de>
 <CAMHeXxM61PR2HMzZiDG5SFQ7exLPwhMsQFCtqznsfdiadwaZvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxM61PR2HMzZiDG5SFQ7exLPwhMsQFCtqznsfdiadwaZvQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:43:07 up 125 days, 10:07, 107 users,  load average: 0.02, 0.07,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_234335_103616_A29AAD2E 
X-CRM114-Status: GOOD (  19.80  )
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
Subject: Re: [PATCH 2/3] libfile: Add copy_fd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 22, 2021 at 11:24:57PM -0700, Trent Piepho wrote:
> On Tue, Jun 22, 2021 at 9:34 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > +       while (1) {
> > +               int now, wr;
> > +
> > +               now = read(in, buf, bs);
> > +               if (now < 0) {
> > +                       ret = now;
> > +                       goto err;
> > +               }
> > +
> > +               if (!now)
> > +                       break;
> > +
> > +               wr = write_full(out, buf, now);
> > +               if (wr < 0) {
> > +                       ret = wr;
> > +                       goto err;
> > +               }
> > +       }
> > +
> > +       ret = 0;
> > +err:
> > +        free(buf);
> > +
> > +       return ret;
> 
> This can be quite a bit shorter:
> 
> while (1) {
>        ret = read(in, buf, bs);
>        if (ret <= 0)
>                break;
>        ret = write_full(out, buf, ret);
>        if (ret < 0)
>                break;
> }
> free(buf)
> return ret;

Indeed, thanks. I'll change it like that.

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

