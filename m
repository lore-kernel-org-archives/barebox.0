Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8WKc-0001MW-Jb
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 13:04:48 +0000
Date: Mon, 3 Sep 2012 15:04:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903130444.GK26594@pengutronix.de>
References: <20120903100409.GC24296@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120903100409.GC24296@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/18 v3] fs: add symlink and readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 12:04:09PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v3:
> 	 - fix support
> 	   mkdir mymount
> 	   mount -t ramfs none mymount/
> 	   ln /env/boot/net /mymount/link
> 
> 	 - addres comments
> 
> 	v2:
> 	 addres comments
> 
> please pull
> The following changes since commit b77300ac6c6bbbc7eac774ff0076c7c05d39735f:
> 
>   command/mount: add autodetection support (2012-08-21 18:53:00 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/fs-symlink
> 
> for you to fetch changes up to dbae117ee78df0e4110db3a3acf4f9a8bee658d0:
> 
>   defautenv: add support of symlink (2012-09-03 17:57:23 +0800)
> 
> ----------------------------------------------------------------
> fs: add symlink and readlink support

Now we have:

> # mkdir ram
> # mount -t ramfs none /ram/
> # ln /env/boot/initrd ram/link
> # ls -l ram/
> lrwxrwxrwx         16 link -> /ram/env/boot/initrd
> # cat ram/link
> could not open ram/link: No such file or directory

The link should point to /env/boot/initrd instead.

This is probably related to your comment to nfs link support:

>> There is something wrong here. I do not understand what you do here, but
>> symlinks are not supposed to bash on them with dirname/basename until
>> you get something which fits your needs.
> here the issue is that on nfs you need to mount the correct path >otherwise you
> can not get the real file
>
> so we need to detect it and mount the correct path

This is wrong. If you put an absolute link somewhere and mount the
filesystem a somewhere else as NFS, then yes, the link will be broken if
the mountpoints do not match.

A symbolic link is basically just a text file, there is no magic behind
it that fixes pathes according to mount pathes.

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
