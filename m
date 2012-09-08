Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAOvy-0007dy-6r
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 17:35:07 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id AC958FF8B21
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 19:42:47 +0200 (CEST)
Date: Sat, 8 Sep 2012 19:35:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120908173524.GG20330@game.jcrosoft.org>
References: <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
 <20120907182106.GA18243@pengutronix.de>
 <20120908054033.GT20330@game.jcrosoft.org>
 <20120908061730.GV20330@game.jcrosoft.org>
 <20120908134706.GB18243@pengutronix.de>
 <20120908145125.GB20330@game.jcrosoft.org>
 <20120908152712.GI18243@pengutronix.de>
 <20120908171229.GC20330@game.jcrosoft.org>
 <20120908172200.GJ18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908172200.GJ18243@pengutronix.de>
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
Subject: Re: [PATCH 09/11] defaultenv-2: boot/net add bootp support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:22 Sat 08 Sep     , Sascha Hauer wrote:
> On Sat, Sep 08, 2012 at 07:12:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Look, there are so many possible setups.
> > > 
> > > - kernel on tftp, disk, nand
> > > - oftree on tftp, disk, nand, none at all
> > > - root on nfs, disk, nand
> > > 
> > > Even the above makes for 36 combinations, different names/partitions not
> > > counted. The setups are board specific, company specific, project
> > > specific or person specific. There is no way of making all happy with a
> > > single script. Instead the bootscripts are meant as an *example* to get
> > > started, they are *not* meant to fit all your and everyone elses needs.
> > > 
> > > You want to get your oftree path from a dhcp request? Then fine, change
> > > global.bootm.oftree to "${path}/${global.dhcp.oftree_file}". You want
> > > to use the one from /env/oftree? Then change global.bootm.oftree
> > > accordingly. You want to use one as a fallback from another one? Also
> > > fine, do some if/else.
> > > 
> > > But please don't try to force your specific setup to other people.
> > I force nothing I just add the generic bootp support
> 
> Sure you do. For example you leave no option to not use
> $global.dhcp.rootpath even if set. There is no option to not use
> $global.dhcp.bootfile even if set. Yes, you could add an option
> somewhere, but that would make the boot scripts even more complicated.
I do not want to add options ifs omeone want something different modify it
> 
> The boot scripts are not the place to add code. You can add a
> helper script to do whatever magic you need; and if it's sufficiently
> useful we can add it to the tree.
in the case of bootp we need as it's a specifc boot method if you have in mind
a code for the helper please show me because I do not see any right now

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
