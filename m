Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFSEE-0004G2-Fe
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 16:06:51 +0000
Received: by wgbdt14 with SMTP id dt14so2483504wgb.18
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 09:06:48 -0700 (PDT)
Date: Sat, 22 Sep 2012 18:06:36 +0200
From: Christoph Fritz <chf.fritz@googlemail.com>
Message-ID: <20120922160635.GA26987@mars>
References: <1348311547.3917.6.camel@mars>
 <20120922114539.GU26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120922114539.GU26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/2] defaultenv-2: add nameserver IPs to kernel-parameter
 ip=
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe

On Sat, Sep 22, 2012 at 01:45:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:59 Sat 22 Sep     , Christoph Fritz wrote:
> > --- a/defaultenv-2/base/bin/bootargs-ip
> > +++ b/defaultenv-2/base/bin/bootargs-ip
> > @@ -7,5 +7,7 @@
> >  if [ $ip = dhcp ]; then
> >  	global.linux.bootargs.dyn.ip="ip=dhcp"
> >  else
> > -	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
> > +	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0::"
> > +	global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.nameserver0:"
> > +	global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.nameserver1"
> keep it on one line for grepping

ok

> > diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
> > index 37b986c..fe5a242 100644
> > --- a/defaultenv-2/base/bin/ifup
> > +++ b/defaultenv-2/base/bin/ifup
> > @@ -26,6 +26,8 @@ netmask=
> >  gateway=
> >  serverip=
> >  ethaddr=
> > +nameserver0=
> > +nameserver1=
> >  
> >  . $cmd
> >  
> > @@ -51,6 +53,8 @@ if [ "$ip" = static ]; then
> >  	${interface}.netmask=$netmask
> >  	${interface}.serverip=$serverip
> >  	${interface}.gateway=$gateway
> > +	${interface}.nameserver0=$nameserver0
> > +	${interface}.nameserver1=$nameserver1
> 
> and this is not interface specific net.nameserver
> 
> and dhcp??

When kernel-parameter "ip=dhcp" you can't set stuff like netmask, ip,
or nameservers.

As stated in the commit message, due to current lack of a
env-2 testing environment, I'm not sure how to implement the
following snippet from env-1 in env-2:

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 4e2056e..61287d5 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -61,7 +61,7 @@ if [ x$ip = xdhcp -o ]; then
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
 else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0::$net.nameserver0:$net.nameserver1"
 fi
 
 
diff --git a/defaultenv/config b/defaultenv/config
index 391ba47..38fab40 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -18,6 +18,8 @@ global.dhcp.vendor_id=barebox
 #eth0.netmask=a.b.c.d
 #eth0.serverip=a.b.c.d
 #eth0.gateway=a.b.c.d
++#net.nameserver0=a.b.c.d
++#net.nameserver1=a.b.c.d
 
 # can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
 kernel_loc=tftp
-- 

Thanks,
 -- Christoph

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
