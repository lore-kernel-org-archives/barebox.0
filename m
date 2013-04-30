Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f311.mail.ru ([128.140.169.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UX5H9-0004OM-HN
 for barebox@lists.infradead.org; Tue, 30 Apr 2013 07:47:00 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 30 Apr 2013 11:46:33 +0400
Message-ID: <1367307993.386136970@f311.mail.ru>
In-Reply-To: <20130430073942.GL20989@pengutronix.de>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-8-git-send-email-shc_work@mail.ru>
 <20130430073942.GL20989@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCA4LzldIFNlcmlhbDogbXBjNXh4eDogRml4IHNldHVw?=
 =?UTF-8?B?IG1vZGUgYXQgcG9ydCBpbml0aWFsaXphdGlvbg==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Fri, Apr 26, 2013 at 08:41:13PM +0400, Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/serial/serial_mpc5xxx.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
> > index 532eea3..ed77807 100644
> > --- a/drivers/serial/serial_mpc5xxx.c
> > +++ b/drivers/serial/serial_mpc5xxx.c
> > @@ -82,12 +82,10 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
> >  	psc->sicr = 0;
> >  
> >  	/* configure parity, bit length and so on */
> > +	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE | PSC_MODE_ONE_STOP;
> >  #if defined(CONFIG_MGT5100)
> > -	psc->mode = PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE;
> > -#elif defined(CONFIG_MPC5200)
> > -	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE;
> > +	psc->mode |= PSC_MODE_ERR;
> >  #endif
> > -	psc->mode = PSC_MODE_ONE_STOP;
> 
> Without this patch psc->mode gets configured differently on mpc5200 and
> on mgt5100, then afterwards overwritten on both. This surely was not
> intended, but nevertheless the driver works as expected. Was this patch
> tested?
No. I not have such hardware.

> BTW CONFIG_MGT5100 could be removed, we do not have support for this
> SoC.
> 
> Meanwhile I applied most patches of this series.
OK.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
