Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5AhF-0007yz-92
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 05:13:14 +0000
Date: Mon, 11 Oct 2010 07:11:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101011051104.GF30252@game.jcrosoft.org>
References: <1286469458-11362-1-git-send-email-plagnioj@jcrosoft.com>
	<1286469458-11362-3-git-send-email-plagnioj@jcrosoft.com>
	<20101008122747.GN28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101008122747.GN28242@pengutronix.de>
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
Subject: Re: [PATCH 3/5] defaultenv: add xmodem support for update
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> >  	exit 1
> >  fi
> >  
> > +if [ x$3 != x ]; then
> > +	mode=$3
> > +fi
> > +
> >  . /env/bin/_update $2
> > diff --git a/defaultenv/bin/update_rootfs b/defaultenv/bin/update_rootfs
> > index 6366315..bac74ca 100644
> > --- a/defaultenv/bin/update_rootfs
> > +++ b/defaultenv/bin/update_rootfs
> > @@ -3,14 +3,19 @@
> >  . /env/config
> >  
> >  image=$rootfsimage
> > +mode=net
> >  
> >  if [ x$1 = xnand ]; then
> >  	part=/dev/nand0.root.bb
> >  elif [ x$1 = xnor ]; then
> >  	part=/dev/nor0.root
> >  else
> > -	echo "usage: $0 nor|nand [imagename]"
> > +	echo "usage: $0 nor|nand [imagename] [net|xmodem]"
> 
> I'm not really happy with this patch. We have 3 positional parameters
> now and with xmodem it makes no sense to supply an image name,
> nontheless we have to supply it because otherwise we do not have three
> arguments.
> I just posted a patch adding a getopt command to hush. Maybe this could
> improve the situation here?
I get exactly the same idea

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
