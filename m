Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFWAQ-00043T-I2
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 20:19:11 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0678B10A40EA
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 22:25:03 +0200 (CEST)
Date: Sat, 22 Sep 2012 22:16:37 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120922201637.GZ26553@game.jcrosoft.org>
References: <1348328517.25235.5.camel@mars>
 <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
 <1348341957.24868.6.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348341957.24868.6.camel@mars>
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
Subject: Re: [PATCH 1/1] net: add multiple nameserver support
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On 21:25 Sat 22 Sep     , Christoph Fritz wrote:
> On Sat, 2012-09-22 at 20:27 +0200, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> 
> > +
> >  static int do_host(int argc, char *argv[])
> >  {
> >  	IPaddr_t ip;
> > diff --git a/net/net.c b/net/net.c
> > index 3ac098f..edadf51 100644
> > --- a/net/net.c
> > +++ b/net/net.c
> > @@ -677,7 +677,8 @@ static int net_init(void)
> >  		NetRxPackets[i] = net_alloc_packet();
> >  
> >  	register_device(&net_device);
> > -	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
> > +	dev_add_param(&net_device, "nameserver0", NULL, NULL, 0);
> > +	dev_add_param(&net_device, "nameserver1", NULL, NULL, 0);
> 
> What do you think about a function that checks if nameserver0/1 is
> really an IP, like this:
why not I've not strong felling about it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
