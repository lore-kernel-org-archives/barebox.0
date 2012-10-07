Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TKqx5-0001xh-91
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 13:31:29 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 73943FF9425
 for <barebox@lists.infradead.org>; Sun,  7 Oct 2012 15:37:49 +0200 (CEST)
Date: Sun, 7 Oct 2012 15:29:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121007132903.GV26553@game.jcrosoft.org>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-11-git-send-email-vicencb@gmail.com>
 <20121007103027.GE1322@pengutronix.de>
 <CAAMcf8CjJHfkLDBGzA4-Uny-9KJEv3nR3ozC0g+V65B28xLD6A@mail.gmail.com>
 <20121007121600.GI1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121007121600.GI1322@pengutronix.de>
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
Subject: Re: [PATCH 10/11] mach-types: add ID for Archos G9 tablet
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, vj <vicencb@gmail.com>

On 14:16 Sun 07 Oct     , Sascha Hauer wrote:
> On Sun, Oct 07, 2012 at 02:07:28PM +0200, vj wrote:
> > On Sun, Oct 7, 2012 at 12:30 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote:
> > 
> > > Please no manual updates to this file, they will be overwritten once the
> > > next update from:
> > >
> > > http://www.arm.linux.org.uk/developer/machines/download.php
> > >
> > > comes in. I see that the Archos G9 does not have a machine id
> > > registered. You can register one yourself at:
> > >
> > > http://www.arm.linux.org.uk/developer/machines/
> > >
> > > btw is 5032 the id Archos uses or did you think it up yourself?
> > >
> > > Sascha
> > >
> > > --
> > > Pengutronix e.K.                           |                             |
> > > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> > >
> > 
> > 5032 is chosen by Archos in it's Android kernel:
> > http://gitorious.org/archos/archos-gpl-gen9-kernel-ics/blobs/master/arch/arm/tools/mach-types
> 
> Appearently the Archos guys can't read :(
> 
> In this case I suggest that you just hardcode this number in your board
> file and add a big fat warning comment that you only did that to make
> the Archos kernel bootable.
> Another, maybe better solution would be to:
> 
> - register a proper id for the G9
> - use it as default in barebox
> - Add some template in the environment to overwrite it to make the
>   Archos provided Kernel boot.
in the past I use devio to add the 2 asm intruction to change the machine
before the zImage

with machine id 1509 05e5

(
 devio 'wl 0xe3a01c05,4' 'wl 0xe38110e5,4'
 cat zImage
) zImage.1509

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
