Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAOXi-0006p5-QZ
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 17:10:03 +0000
Date: Sat, 8 Sep 2012 19:09:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908170957.GQ24458@pengutronix.de>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-11-git-send-email-plagnioj@jcrosoft.com>
 <20120908134937.GC18243@pengutronix.de>
 <20120908144746.GZ20330@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908144746.GZ20330@game.jcrosoft.org>
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
Subject: Re: [PATCH 11/11] defaultenv-2: add symbolic link support to boot/nfs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 08, 2012 at 04:47:46PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +		fi
> > 
> > symbolic links either point to the target or not, but doing magic on
> > them to try to interpret where they *could* point to is no option.
> the issue with nfs is the mount path
> you need to mount `dirname file`
> 
> but if the file is a symlink this is where it's complex you need to resolv it
> and mount the real path
> 
> I'd prefer to avoid it but nfs is like this
> as you may just be allow to see a part of the host tree via nfs and the host
> have different mountpoint

I'm sure we can find a solution to this, but duplicating this for each
nfs access is not really an option.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
