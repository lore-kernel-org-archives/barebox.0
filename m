Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f239.mail.ru ([217.69.138.67])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUHaW-0001OG-C8
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 14:19:25 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 22 Apr 2013 18:19:19 +0400
Message-ID: <1366640359.9607106@f239.mail.ru>
In-Reply-To: <20130422135908.GB13393@game.jcrosoft.org>
References: <1366439718-31495-1-git-send-email-shc_work@mail.ru>
 <1366622000.671448158@f347.mail.ru>
 <20130422135908.GB13393@game.jcrosoft.org>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gY2xvY2tzb3VyY2U6IEFkZCBwb2ludGVyIHRvIGNs?=
 =?UTF-8?B?b2Nrc291cmNlIHN0cnVjdHVyZSBpbiByZWFkIGZ1bmN0aW9u?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> On 13:13 Mon 22 Apr     , Alexander Shiyan wrote:
> > > On 10:35 Sat 20 Apr     , Alexander Shiyan wrote:
> > > > 
> > > > This patch adds pointer to clocksource structure in read function.
> > > > For avoid name collisions, clocksource names for all drivers was
> > > > changed to be unique.
> > > why?
> > > 
> > > no need the clocksource is hot path don't touch it
> > > and we do not need the struct pointer as we can have only 1 cs in barebox
> > 
> > This change allows to add an additional field in struct clocksource then
> > we can remove static variables from clocksource drivers.
> why we have only one clocksource at a time
> what you propose will require to use container_of
> 
> so will slow down a lot barebox

I hope to see any comments about this patch from Sascha.
Of course, we have only one instance of clocksource, but generally
direction of this patch is avoid of usage static variables in clocksource drivers.
With path we can remove all usage. Is this not good for you?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
