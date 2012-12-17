Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkV4Q-0007Vz-To
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 07:25:04 +0000
Received: from mail188.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2BCC9108016B
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2012 08:33:39 +0100 (CET)
Date: Mon, 17 Dec 2012 08:23:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121217072318.GD26483@game.jcrosoft.org>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
 <20121214224907.GA26326@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121214224907.GA26326@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/9] kfifo: introduce kfifo_dump_str to dump the fifo
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:49 Fri 14 Dec     , Sascha Hauer wrote:
> On Thu, Dec 13, 2012 at 05:40:02PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to implement a dmesg mecanism in barebox
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  include/kfifo.h |    2 ++
> >  lib/kfifo.c     |   21 +++++++++++++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/include/kfifo.h b/include/kfifo.h
> > index 25880f4..9dbbe0d 100644
> > --- a/include/kfifo.h
> > +++ b/include/kfifo.h
> > @@ -74,5 +74,7 @@ static inline unsigned int kfifo_len(struct kfifo *fifo)
> >  void kfifo_putc(struct kfifo *fifo, unsigned char c);
> >  unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c);
> >  
> > +void kfifo_dump_str(struct kfifo *fifo, void (*dump)(unsigned char c));
> > +
> >  #endif
> >  
> > diff --git a/lib/kfifo.c b/lib/kfifo.c
> > index afd3894..7892aed 100644
> > --- a/lib/kfifo.c
> > +++ b/lib/kfifo.c
> > @@ -154,3 +154,24 @@ unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c)
> >  	return 0;
> >  }
> >  
> > +void kfifo_dump_str(struct kfifo *fifo, void (*dump)(unsigned char c))
> > +{
> > +	int i;
> > +	unsigned char *c;
> > +	unsigned int l;
> > +	unsigned int len;
> > +
> > +	len = fifo->in - fifo->out;
> > +
> > +	/* first get the data from fifo->out until the end of the buffer */
> > +	l = min(len, fifo->size - (fifo->out & (fifo->size - 1)));
> > +	c = fifo->buffer + (fifo->out & (fifo->size - 1));
> > +	for (i = 0; i < l; i++)
> > +		dump(c[i]);
> > +
> > +	/* then get the rest (if any) from the beginning of the buffer */
> > +	c = fifo->buffer;
> > +	l = len - l;
> > +	for (i = 0; i < l; i++)
> > +		dump(c[i]);
> > +}
> 
> This function works in the innards of the fifo implementation and
> replaces these two lines of code:
> 
> 	while (kfifo_getc(console_output_fifo, &ch) == 0)
> 		console_putc(CONSOLE_STDOUT, ch);
> 
> You do not provide a reason why we should do this, so: no.
the current code empty the fifo


this new function just dump it

so you can recall it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
