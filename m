Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TKr1Y-0002SJ-HQ
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 13:36:05 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8AA73FF92D8
 for <barebox@lists.infradead.org>; Sun,  7 Oct 2012 15:42:26 +0200 (CEST)
Date: Sun, 7 Oct 2012 15:33:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121007133339.GW26553@game.jcrosoft.org>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-11-git-send-email-vicencb@gmail.com>
 <20121007103027.GE1322@pengutronix.de>
 <CAAMcf8CjJHfkLDBGzA4-Uny-9KJEv3nR3ozC0g+V65B28xLD6A@mail.gmail.com>
 <20121007121600.GI1322@pengutronix.de>
 <CAAMcf8Au8ruisajhsy2NbzwBSiR1csDUfsB_JKSnxG3SqfTV=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8Au8ruisajhsy2NbzwBSiR1csDUfsB_JKSnxG3SqfTV=A@mail.gmail.com>
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
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 14:26 Sun 07 Oct     , vj wrote:
> On Sun, Oct 7, 2012 at 2:16 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Sun, Oct 07, 2012 at 02:07:28PM +0200, vj wrote:
> >> On Sun, Oct 7, 2012 at 12:30 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote:
> >>
> >> > Please no manual updates to this file, they will be overwritten once the
> >> > next update from:
> >> >
> >> > http://www.arm.linux.org.uk/developer/machines/download.php
> >> >
> >> > comes in. I see that the Archos G9 does not have a machine id
> >> > registered. You can register one yourself at:
> >> >
> >> > http://www.arm.linux.org.uk/developer/machines/
> >> >
> >> > btw is 5032 the id Archos uses or did you think it up yourself?
> >> >
> >> > Sascha
> >> >
> >> > --
> >> > Pengutronix e.K.                           |                             |
> >> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> >> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> >> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >> >
> >>
> >> 5032 is chosen by Archos in it's Android kernel:
> >> http://gitorious.org/archos/archos-gpl-gen9-kernel-ics/blobs/master/arch/arm/tools/mach-types
> >
> > Appearently the Archos guys can't read :(
> >
> > In this case I suggest that you just hardcode this number in your board
> > file and add a big fat warning comment that you only did that to make
> > the Archos kernel bootable.
> > Another, maybe better solution would be to:
> >
> > - register a proper id for the G9
> > - use it as default in barebox
> > - Add some template in the environment to overwrite it to make the
> >   Archos provided Kernel boot.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> Well, booting the factory provided kernel would be great and that
> would be a reason to preserve the 5032.
> But the fact is that's not possible for now. Archos has added some
> tweaks to their bootloader and kernel so they write board specific
> information in the boot sector and the bootloader passes it to the
> kernel.
> To be able to boot their kernel this "feature_tags" should be
> implemented in barebox.
> For more information see:
> http://gitorious.org/archos/archos-gpl-gen9-kernel-ics/blobs/master/arch/arm/include/asm/feature_list.h
an other example for shit stuff in bootloader

hopefully the DT will fix this

this "feature_tags" need to be used in a way that we do not touch the generic
code

Maybe via a custon bootm

Best Regards,
J.
> 
> Regards,
>   Vicente.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
