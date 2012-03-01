Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S2xy1-000140-HY
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 04:50:14 +0000
Received: from mail604.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 74AB9FF9094
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2012 05:53:03 +0100 (CET)
Date: Thu, 1 Mar 2012 05:40:47 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120301044047.GR12248@game.jcrosoft.org>
References: <1330419401-11994-1-git-send-email-s.hauer@pengutronix.de>
 <1330419401-11994-4-git-send-email-s.hauer@pengutronix.de>
 <20120229182123.GM12248@game.jcrosoft.org>
 <20120229192337.GX3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120229192337.GX3852@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: Allow to compile in thumb-2 mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:23 Wed 29 Feb     , Sascha Hauer wrote:
> On Wed, Feb 29, 2012 at 07:21:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:56 Tue 28 Feb     , Sascha Hauer wrote:
> > > This shrinks the resulting binary size by ~25%. Exceptions
> > > are still handled in arm mode, so we have to explicitely
> > > put .arm directives into the exception code. Thumb-2 mode
> > > has been tested on i.MX51 Babbage board.
> > > 
> > > +#define STOP	\
> > > +	"1: bne 1b\n" \
> > > +	"nop\n"
> > > +#else
> > > +#define STOP	\
> > > +	"1: bne 1b\n"
> > > +#endif
> > here is my issue can not use bne
> > can only use ldr or b
> 
> Missed this one. bne is wrong anyway, so replaced with '1: b 1b'
> Also, removed the Thumb2 special handling here since the exception
> vectors are explicitely compiled in Arm mode.
> 
do you have push this somewhere

I need to test it


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
