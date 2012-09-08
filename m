Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAMKN-0003rA-B9
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 14:48:08 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3A501FF8C56
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 16:44:35 +0200 (CEST)
Date: Sat, 8 Sep 2012 16:37:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120908143713.GX20330@game.jcrosoft.org>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
 <20120908135656.GD18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908135656.GD18243@pengutronix.de>
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

On 15:56 Sat 08 Sep     , Sascha Hauer wrote:
> On Fri, Sep 07, 2012 at 02:13:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  defaultenv-2/base/boot/net |   35 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 34 insertions(+), 1 deletion(-)
> > 
> > diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
> > index 922bef1..ff05077 100644
> > --- a/defaultenv-2/base/boot/net
> > +++ b/defaultenv-2/base/boot/net
> > @@ -7,8 +7,41 @@ fi
> >  
> >  path="/mnt/tftp"
> >  
> > +# to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
> > +ifdown eth0
> > +ifup eth0
> 
> If ifup has been called before the global.dhcp. variables are already
> set. Why do you force to do this again?
param dhcp may have changed I want to be sure we have the right one
> 
> > +
> >  global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> >  #global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
> > -nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> > +
> > +if [ -n "${global.dhcp.rootpath}" ]; then
> > +	bootp=1
> > +	nfsroot="${global.dhcp.rootpath}"
> > +else
> > +	nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> > +fi
> > +
> > +if [ -n "${global.dhcp.bootfile}" -o -n "${global.dhcp.oftree_file}" ]; then
> > +	bootp=1
> > +	path="/mnt/dhcp"
> > +
> > +	if [ -d "${path}" ]; then
> > +		umount "${path}"
> > +	else
> > +		mkdir "${path}"
> > +	fi
> > +	mount -t tftp $eth0.serverip "${path}"
> 
> That's exactly the path that's already mounted to /mnt/tftp. Why are you
> doing this?
evenif the ip is changed?
> 
> 
> > +
> > +	[ -n "${global.dhcp.bootfile}" ] && global.bootm.image="${path}/${global.dhcp.bootfile}"
> > +	[ -n "${global.dhcp.oftree_file}" ] && global.bootm.oftree="${path}/${global.dhcp.oftree_file}"
> > +fi
> > +
> > +if [ x${bootp} = x1 ]; then
> > +	echo "Boot via bootp/dhcp on server ${eth0.serverip}"
> > +	[ -n "${global.dhcp.bootfile}" ] && echo "bootm.image => ${global.dhcp.bootfile}"
> > +	[ -n "${global.dhcp.oftree_file}" ] && echo "bootm.oftree => ${global.dhcp.oftree_file}"
> > +	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot => ${global.dhcp.rootpath}"
> > +fi
> > +
> >  bootargs-ip
> >  bootargs-root-nfs -n "$nfsroot"
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
