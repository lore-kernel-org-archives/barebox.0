Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TALwW-0003Bp-Ad
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 14:23:29 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1DCF7FF8639
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 16:31:09 +0200 (CEST)
Date: Sat, 8 Sep 2012 16:23:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120908142345.GW20330@game.jcrosoft.org>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-7-git-send-email-plagnioj@jcrosoft.com>
 <20120908140457.GE18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908140457.GE18243@pengutronix.de>
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
Subject: Re: [PATCH 07/11] defaultenv-2/ip: add dhcp-barebox support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:04 Sat 08 Sep     , Sascha Hauer wrote:
> On Fri, Sep 07, 2012 at 02:13:33PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  defaultenv-2/base/bin/bootargs-ip |    2 ++
> >  defaultenv-2/base/bin/ifup        |    2 +-
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv-2/base/bin/bootargs-ip
> > index 2d4486c..caeb5dd 100644
> > --- a/defaultenv-2/base/bin/bootargs-ip
> > +++ b/defaultenv-2/base/bin/bootargs-ip
> > @@ -6,6 +6,8 @@
> >  
> >  if [ $ip = dhcp ]; then
> >  	global.linux.bootargs.dyn.ip="ip=dhcp"
> > +elif [ $ip = dhcp-barebox ]; then
> > +	global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
> >  else
> >  	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
> >  fi
> > diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
> > index 37b986c..554c35e 100644
> > --- a/defaultenv-2/base/bin/ifup
> > +++ b/defaultenv-2/base/bin/ifup
> > @@ -52,7 +52,7 @@ if [ "$ip" = static ]; then
> >  	${interface}.serverip=$serverip
> >  	${interface}.gateway=$gateway
> >  	ret=0
> > -elif [ "$ip" = dhcp ]; then
> > +elif [ "$ip" = dhcp -o "$ip" = dhcp-barebox ]; then
> >  	dhcp
> >  	ret=$?
> >  	if [ $ret = 0 -a -n "$serverip" ]; then
> 
> The ifup script is used to configure networking for barebox. This is not
> the place for configuring kernel behaviour. If you want this add an
> option to the bootargs-ip script or add a bootargs-ip-barebox script.
yes but if you put dhcp-barebox mean 2 stuff you want dhcp in barebox and then
pass then to the kernel

we specify this before I wish to keep this specification

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
