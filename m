Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKqAu-0000vR-Bh
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 12:09:28 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 80198FF903A
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 14:10:46 +0200 (CEST)
Date: Thu, 19 Apr 2012 13:50:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120419115033.GT16641@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
 <20120419063914.GG3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120419063914.GG3852@pengutronix.de>
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
Subject: Re: [PATCH 00/11 v2] improve complete support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:39 Thu 19 Apr     , Sascha Hauer wrote:
> On Thu, Apr 19, 2012 at 07:38:46AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	the following patch serie improve the complete support
> > 	by adding a complete framework to aalow commands complete support
> > 
> > 	the add also car complete support for eval and setting and executable
> > 	file support
> > 
> > 	this also include an update of the stringlist API to support asprintf
> > 	API
> > 
> > The following changes since commit a7ddbc40865a8ffe716aca686763780febad575c:
> > 
> >   Merge branch 'binfmt' of git://git.jcrosoft.org/barebox into next (2012-04-18 20:42:17 +0200)
> > 
> > are available in the git repository at:
> > 
> > 
> >   git://git.jcrosoft.org/barebox.git complete
> > 
> > for you to fetch changes up to fcbc878be12d1c8d2bf839255b1bb7bd465adb96:
> > 
> >   complete: add executable file support (2012-04-19 13:49:42 +0800)
> 
> Looks interesting, I just gave it a try. I didn't have a close look at
> it yet. The variable completion feels strange. Pressing a<tab><tab>
> expands to
> 
> barebox@Phytec phyCORE-i.MX27:/ a
> addpart                   autoboot_timeout=
> a=                        armlinux_architecture=
> 
> I really don't expect this and it seems quite non standard. Not sure if
> I like it.
Agreed it's not standard but after using it you become quite used to it
> 
> Another thing is, does it make sense to add a CONFIG_AUTO_COMPLETE_ADVANCED
> for the more obscure completions?
yeah was not sure aout it too
but as the auto complete is here to help I choose to don't do so

as exmple devinfo you surch for display the current param of a device
the complete help you to go to it more quick see the param with 2 <tab> with
typing devinfo fb0

And them see that this driver have a probe or not etc...

when you do echo $eth0<tab><tab> you can easly choose and see the available
param

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
