Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9EJ7-0006GC-6W
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:02:11 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1424AFF9AAA
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:09:43 +0200 (CEST)
Date: Wed, 5 Sep 2012 14:02:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120905120224.GD32603@game.jcrosoft.org>
References: <20120904143553.GA32603@game.jcrosoft.org>
 <1346833350-9396-1-git-send-email-j.weitzel@phytec.de>
 <20120905103400.GC32603@game.jcrosoft.org>
 <1346845030.3625.16.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346845030.3625.16.camel@lws-weitzel>
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
Subject: Re: Suspected ##SPAM## -:Re: [PATCH v4] xload: get barebox size
 from barebox_arm_head
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On 13:37 Wed 05 Sep     , Jan Weitzel wrote:
> Am Mittwoch, den 05.09.2012, 12:34 +0200 schrieb Jean-Christophe
> PLAGNIOL-VILLARD:
> > On 10:22 Wed 05 Sep     , Jan Weitzel wrote:
> > > Add functions to read the barebox_arm_head, check barebox magicword
> > > and read out the barebox image size.
> > > Create a inital partion of 1Mb to access the barebox image on nand.
> > > 
> > > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > > ---
> > > v2: remove fall back if header read fail 
> > > v3: fix header check, rebase master 
> > > v4: factorize barebox detection
> > > 
> > >  arch/arm/include/asm/barebox-arm-head.h |    9 +++++
> > >  arch/arm/mach-omap/include/mach/xload.h |    2 +-
> > >  arch/arm/mach-omap/xload.c              |   57 ++++++++++++++++++++++++++++--
> > >  common/filetype.c                       |    3 +-
> > this con not work
> > 
> > common/filetype is use accross ARCH
> > 
> > is_barebox_arm_head need to be a inline returning false if not arm
> this is why I use the ugly #include
> "../arch/arm/include/asm/barebox-arm-head.h". By now we can detect
> filetype_arm_barebox even on non arm architectures. Is breaking this OK?
no it's not

> Jan
> > 
> > Best Regards,
> > J.
> > >  4 files changed, 65 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> > > index 2c250e9..42bd239 100644
> > > --- a/arch/arm/include/asm/barebox-arm-head.h
> > > +++ b/arch/arm/include/asm/barebox-arm-head.h
> > > @@ -1,6 +1,15 @@
> > >  #ifndef __ASM_ARM_HEAD_H
> > >  #define __ASM_ARM_HEAD_H
> > >  
> > > +#define ARM_HEAD_SIZE		0x30
> > > +#define HEAD_MAGICWORD_OFFSET	0x20
> > > +#define HEAD_SIZE_OFFSET	0x2C
> > > +
> > > +static inline int is_barebox_arm_head(const char *head)
> > > +{
> > > +	return !strcmp(head + HEAD_MAGICWORD_OFFSET, "barebox");
> > > +}
put this in flietype.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
