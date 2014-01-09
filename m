Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f52.google.com ([209.85.220.52])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1IUf-0002Gw-6K
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 16:30:05 +0000
Received: by mail-pa0-f52.google.com with SMTP id ld10so3506903pab.25
 for <barebox@lists.infradead.org>; Thu, 09 Jan 2014 08:29:41 -0800 (PST)
Date: Thu, 9 Jan 2014 21:59:33 +0530
From: Santosh Sivaraj <santosh@fossix.org>
Message-ID: <20140109162933.GC7102@san0.fossix.org>
References: <20140108024539.GA13274@san0.fossix.org>
 <20140108140748.GL6750@pengutronix.de>
 <20140109072914.GA21626@ns203013.ovh.net>
 <20140109160641.GA7102@san0.fossix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140109160641.GA7102@san0.fossix.org>
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
Subject: Re: [PATCH] Make number of GPT partitions a configurable option
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

* Santosh Sivaraj <santosh@fossix.org> wrote (on 2014-01-09 21:36:41 +0530):

adding list, missed it.

> * Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote (on 2014-01-09 08:29:14 +0100):
> 
> > On 15:07 Wed 08 Jan     , Sascha Hauer wrote:
> > > Hi Santosh,
> > > 
> > > On Wed, Jan 08, 2014 at 08:15:39AM +0530, Santosh Sivaraj wrote:
> > > > Theoritically there is no limit for the partitions that can be created
> > > > based on EFI/GPT, so make the number of partitions that can be visible
> > > > in barebox a configurable option.
> > > > 
> > > > Signed-off-by: Santosh Sivaraj <santosh@fossix.org>
> > > > ---
> > > >  common/partitions/Kconfig  | 5 +++++
> > > >  common/partitions/parser.h | 2 +-
> > > >  2 files changed, 6 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
> > > > index 90238ad..f3353dd 100644
> > > > --- a/common/partitions/Kconfig
> > > > +++ b/common/partitions/Kconfig
> > > > @@ -31,3 +31,8 @@ config PARTITION_DISK_EFI_GPT_COMPARE
> > > >  	depends on PARTITION_DISK_EFI
> > > >  	default y
> > > >  	bool "EFI: GPT: compare primary and Alternate GPT header for validity"
> > > > +
> > > > +config MAX_PARTITIONS
> > > > +	depends on PARTITION_DISK_EFI
> > > > +	int "Maximum of partitions needed to be supported on a GPT"
> > > > +	default 8
> > > 
> > > Can we instead allocate the partitions dynamically? This limitation to
> > > eight partitions we currently have is not nice, but making it
> > > configurable is not a proper fix.
> > 
> > agreed but a limit will be good too
> > 
> > Best Regards,
> > J.
> > > 
> > > Sascha
> > > 
> 
> We could keep a configurable maximum, with a high default, but do the allocation
> dynamically. I will try to send in a patch, we can discuss how it needs to be
> done over it.
> 
> Thanks,
> Santosh

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
