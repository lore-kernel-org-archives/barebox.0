Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8XvY-00074Q-0r
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 14:47:01 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2D6A1DC48B0
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 16:52:16 +0200 (CEST)
Date: Mon, 3 Sep 2012 16:47:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120903144715.GC19931@game.jcrosoft.org>
References: <20120903100409.GC24296@game.jcrosoft.org>
 <20120903130444.GK26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120903130444.GK26594@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:04 Mon 03 Sep     , Sascha Hauer wrote:
> On Mon, Sep 03, 2012 at 12:04:09PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	v3:
> > 	 - fix support
> > 	   mkdir mymount
> > 	   mount -t ramfs none mymount/
> > 	   ln /env/boot/net /mymount/link
> > 
> > 	 - addres comments
> > 
> > 	v2:
> > 	 addres comments
> > 
> > please pull
> > The following changes since commit b77300ac6c6bbbc7eac774ff0076c7c05d39735f:
> > 
> >   command/mount: add autodetection support (2012-08-21 18:53:00 +0800)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git tags/fs-symlink
> > 
> > for you to fetch changes up to dbae117ee78df0e4110db3a3acf4f9a8bee658d0:
> > 
> >   defautenv: add support of symlink (2012-09-03 17:57:23 +0800)
> > 
> > ----------------------------------------------------------------
> > fs: add symlink and readlink support
> 
> Now we have:
> 
> > # mkdir ram
> > # mount -t ramfs none /ram/
> > # ln /env/boot/initrd ram/link
> > # ls -l ram/
> > lrwxrwxrwx         16 link -> /ram/env/boot/initrd
> > # cat ram/link
> > could not open ram/link: No such file or directory
> 
> The link should point to /env/boot/initrd instead.
> 
> This is probably related to your comment to nfs link support:
> 
> >> There is something wrong here. I do not understand what you do here, but
> >> symlinks are not supposed to bash on them with dirname/basename until
> >> you get something which fits your needs.
> > here the issue is that on nfs you need to mount the correct path >otherwise you
> > can not get the real file
> >
> > so we need to detect it and mount the correct path
> 
> This is wrong. If you put an absolute link somewhere and mount the
> filesystem a somewhere else as NFS, then yes, the link will be broken if
> the mountpoints do not match.
> 
> A symbolic link is basically just a text file, there is no magic behind
> it that fixes pathes according to mount pathes.
yes a symlink is just a file containing the path

I found why I have this on my linux ( I use a special mount to have this
feature so by default th obsolute symlink should act like this)

# mkdir ram
# mount -t ramfs none /ram/
# ln /env/boot/net ram/link
# ls -l ram/
lrwxrwxrwx         16 link -> /env/boot/net
# cat ram/link
#!/bin/sh

if [ "$1" = menu ]; then
	boot-menu-add-entry "$0" "network (tftp, nfs)"
	exit
fi

path="/mnt/tftp"

# to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
ifup eth0

global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"

if [ -n "${global.dhcp.rootpath}" ]; then
	bootp=1
	nfsroot="${global.dhcp.rootpath}"
else
	nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
fi

if [ -n "${global.dhcp.bootfile}" -o -n "${global.dhcp.oftree_file}" ]; then
	bootp=1
	path="/mnt/dhcp"

	if [ -d "${path}" ]; then
		umount "${path}"
	else
		mkdir "${path}"
	fi
	mount -t tftp $eth0.serverip "${path}"

	[ -n "${global.dhcp.bootfile}" ] && global.bootm.image="${path}/${global.dhcp.bootfile}"
	[ -n "${global.dhcp.oftree_file}" ] && global.bootm.oftree="${path}/${global.dhcp.oftree_file}"
fi

if [ x${bootp} = x1 ]; then
	echo "Boot via bootp/dhcp on server ${eth0.serverip}"
	[ -n "${global.dhcp.bootfile}" ] && echo "bootm.image => ${global.dhcp.bootfile}"
	[ -n "${global.dhcp.oftree_file}" ] && echo "bootm.oftree => ${global.dhcp.oftree_file}"
	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot => ${global.dhcp.rootpath}"
fi

bootargs-ip
bootargs-root-nfs -n "$nfsroot"

I update the patch series with this patch to act as suppsoed

---
diff --git a/fs/fs.c b/fs/fs.c
index 53d8316..7c59126 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1005,12 +1005,6 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
        char *p = normalise_path(pathname);
        char *freep = p;
        int ret;
-       size_t len = 0;
-       char tmp[PATH_MAX];
-
-       memset(tmp, 0, PATH_MAX);
-
-       buf[0] = 0;
 
        ret = path_check_prereq(pathname, S_IFLNK);
        if (ret)
@@ -1023,29 +1017,14 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
        }
        fsdrv = fsdev->driver;
 
-       len = min(bufsiz, (size_t)(PATH_MAX - 1));
        if (fsdrv->readlink)
-               ret = fsdrv->readlink(&fsdev->dev, p, tmp, len);
+               ret = fsdrv->readlink(&fsdev->dev, p, buf, bufsiz);
        else
                ret = -ENOSYS;
 
        if (ret)
                goto out;
 
-       if (tmp[0] == '/') {
-               int l = strlen(fsdev->path);
-
-               if (fsdev->path[l - 1] == '/')
-                       l--;
-
-               if (l) {
-                       len -= l;
-                       strncat(buf, fsdev->path, l);
-               }
-       }
-
-       strncat(buf, tmp, len);
-
 out:
        free(freep);
 

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
