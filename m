Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUJTR-0004zQ-AG
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 16:20:14 +0000
Received: from mail432.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id ABA97FF918C
 for <barebox@lists.infradead.org>; Mon, 22 Apr 2013 18:20:11 +0200 (CEST)
Date: Mon, 22 Apr 2013 18:15:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130422161540.GC13393@game.jcrosoft.org>
References: <1366439718-31495-1-git-send-email-shc_work@mail.ru>
 <1366622000.671448158@f347.mail.ru>
 <20130422135908.GB13393@game.jcrosoft.org>
 <1366640359.9607106@f239.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366640359.9607106@f239.mail.ru>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] clocksource: Add pointer to clocksource structure in
 read function
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 18:19 Mon 22 Apr     , Alexander Shiyan wrote:
> > On 13:13 Mon 22 Apr     , Alexander Shiyan wrote:
> > > > On 10:35 Sat 20 Apr     , Alexander Shiyan wrote:
> > > > > 
> > > > > This patch adds pointer to clocksource structure in read function.
> > > > > For avoid name collisions, clocksource names for all drivers was
> > > > > changed to be unique.
> > > > why?
> > > > 
> > > > no need the clocksource is hot path don't touch it
> > > > and we do not need the struct pointer as we can have only 1 cs in barebox
> > > 
> > > This change allows to add an additional field in struct clocksource then
> > > we can remove static variables from clocksource drivers.
> > why we have only one clocksource at a time
> > what you propose will require to use container_of
> > 
> > so will slow down a lot barebox
> 
> I hope to see any comments about this patch from Sascha.
> Of course, we have only one instance of clocksource, but generally
> direction of this patch is avoid of usage static variables in clocksource drivers.
> With path we can remove all usage. Is this not good for you?
if this result by increase the instruction to execute it's worth

Best Regards,
J.
> 
> ---

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
