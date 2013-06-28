Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsTMX-0005ve-QQ
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 07:44:58 +0000
Received: from mail404.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 41F8BFF98A7
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 09:44:33 +0200 (CEST)
Date: Fri, 28 Jun 2013 09:40:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130628074040.GM27130@game.jcrosoft.org>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
 <1372233657-19455-9-git-send-email-s.hauer@pengutronix.de>
 <20130627070326.GL27130@game.jcrosoft.org>
 <20130627183217.GI516@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130627183217.GI516@pengutronix.de>
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
Subject: Re: [PATCH 08/11] ARM: i.MX6 realq7: prepare multiboard support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:32 Thu 27 Jun     , Sascha Hauer wrote:
> On Thu, Jun 27, 2013 at 09:03:26AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:00 Wed 26 Jun     , Sascha Hauer wrote:
> > >  	return 0;
> > >  }
> > > -core_initcall(realq7_console_init);
> > > +postcore_initcall(realq7_console_init);
> > 
> > I really don't like those if (!of_mac......
> 
> As discussed on IRQ I don't like it either...
IRQ ;)
> 
> > 
> > can we have a struct os is the kernel?
> 
> ...but my experiments with a struct also were not very promising.
> 
> I'm open for patches. For now I think the compatible matching is
> good enough, but it should be worked on before we have hundreds
> of initcalls like this.
as discuss on IRC I do prefer the struct like we have today on ARM Kernel

with something like this

struct machine {
	const char *of_compatible;
	u32 machine_id;
	int (*pure)(void);
	int (*mem)(void);
	int (*console)(void);
	int (*device)(void);
	int (*late)(void);
};

I did it on at91 soc it's clean and speed the boot vs if xxx

I do agree this will requiere some work but this will have the advantage to not be only of related

so arch or board that are not OF can still use it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
