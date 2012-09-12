Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBp0n-0003N7-HJ
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:37:58 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id ACD2EFF9AB7
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 17:39:29 +0200 (CEST)
Date: Wed, 12 Sep 2012 17:31:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120912153117.GB28928@game.jcrosoft.org>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
 <1347461308-24208-3-git-send-email-plagnioj@jcrosoft.com>
 <20120912153134.GY6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120912153134.GY6180@pengutronix.de>
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
Subject: Re: [PATCH 3/7] defaultenv: switch hostname to global.hostname
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:31 Wed 12 Sep     , Sascha Hauer wrote:
> On Wed, Sep 12, 2012 at 04:48:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 
> > diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
> > index b6bf93f..9c70988 100644
> > --- a/arch/arm/boards/eukrea_cpuimx25/env/config
> > +++ b/arch/arm/boards/eukrea_cpuimx25/env/config
> > @@ -24,16 +24,16 @@ rootfs_loc=nand
> >  
> >  # rootfs
> >  rootfs_type=ubifs
> > -rootfsimage=$hostname/rootfs.$rootfs_type
> > +rootfsimage=${global.hostname}/rootfs.$rootfs_type
> 
> This fixes all cases where global.hostname is read, but not where it's
> set, i.e.
> 
> hostname=eukrea-cpuimx25
normally I drop hostname to global.hostname

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
