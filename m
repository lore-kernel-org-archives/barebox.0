Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAPWG-0002AM-2t
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 18:12:36 +0000
Date: Sat, 8 Sep 2012 20:12:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908181233.GL18243@pengutronix.de>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
 <20120908135656.GD18243@pengutronix.de>
 <20120908143713.GX20330@game.jcrosoft.org>
 <20120908150936.GG18243@pengutronix.de>
 <20120908171440.GE20330@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908171440.GE20330@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 08, 2012 at 07:14:40PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > -nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> > > > > +
> > > > > +if [ -n "${global.dhcp.rootpath}" ]; then
> > > > > +	bootp=1
> > > > > +	nfsroot="${global.dhcp.rootpath}"
> > > > > +else
> > > > > +	nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> > > > > +fi
> > > > > +
> > > > > +if [ -n "${global.dhcp.bootfile}" -o -n "${global.dhcp.oftree_file}" ]; then
> > > > > +	bootp=1
> > > > > +	path="/mnt/dhcp"
> > > > > +
> > > > > +	if [ -d "${path}" ]; then
> > > > > +		umount "${path}"
> > > > > +	else
> > > > > +		mkdir "${path}"
> > > > > +	fi
> > > > > +	mount -t tftp $eth0.serverip "${path}"
> > > > 
> > > > That's exactly the path that's already mounted to /mnt/tftp. Why are you
> > > > doing this?
> > > evenif the ip is changed?
> > 
> > The ip won't change when you drop the ifdown/ifup above.
> the IP may change balance tftp

??

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
