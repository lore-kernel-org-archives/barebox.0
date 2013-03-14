Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f2.mail.ru ([217.69.129.64])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG7vz-0008H4-Vg
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 13:11:10 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 14 Mar 2013 17:11:01 +0400
Message-ID: <1363266661.151779822@f2.mail.ru>
In-Reply-To: <1363266160.903406067@f2.mail.ru>
References: <1363263561.4022.37.camel@mars> <1363265461.4022.39.camel@mars>
 <1363266160.903406067@f2.mail.ru>
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
Subject: =?UTF-8?B?UmVbM106IE9tYXA0IERTUyBjbG9ja3M=?=
To: =?UTF-8?B?Q2hyaXN0b3BoIEZyaXR6?= <chf.fritz@googlemail.com>, barebox@lists.infradead.org

> > On Thu, 2013-03-14 at 16:48 +0400, Alexander Shiyan wrote:
> > > >  Barebox crashes while reading a DSS register:
> > > > 
> > > >   $ md 0x48040000
> > > >   unable to handle paging request at address 0x48040000
> > > > 
> > > > I suppose this is due to a turned off clock.
> > > > 
> > > > Any hints?
> > > 
> > > Probably this is a bug. I reproduced it.
> > > 
> > > Try to specify start & end address, like:
> > > md -l 0x48040000-0x48040010
> > 
> > I get the same effect: it crashes.
> 
> OK. It seems rw_buf not initialized.
> 
> So change line:
> static char *rw_buf; 
> to
> static char *rw_buf[RW_BUF_SIZE]; 
Without asterisk, like:
 static char rw_buf[RW_BUF_SIZE]; 
Sorry.

> in commands/mem.c

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
