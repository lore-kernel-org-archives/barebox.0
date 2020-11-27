Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiZQS-0006Jt-Ag
 for barebox@lists.infradead.org; Fri, 27 Nov 2020 08:48:21 +0000
Date: Fri, 27 Nov 2020 09:48:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201127084817.GD11843@pengutronix.de>
References: <6c3e8d1f-025c-73c6-3834-280f0a7e5633@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c3e8d1f-025c-73c6-3834-280f0a7e5633@pengutronix.de>
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
Subject: Re: Infinite Loop when automounting device mounted elsewhere
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Nov 25, 2020 at 10:33:45AM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> I just ran into this issue:
> 
>   $ mkdir /boot
>   $ mount /dev/mmc2.0 /boot
>   $ ls /mnt/mmc2.0/
>   mounted /dev/mmc2.0 on /boot
>   mounted /dev/mmc2.0 on /boot
>   mounted /dev/mmc2.0 on /boot
>   [ Ad infinitum ]
> 
> This is more readily reproducible with barebox platforms where a separate
> boot partition is default-mounted as /boot. In that case, accessing the
> partition's corresponding /mnt entry will hang.
> 
> The hang can be traced back to fs/fs.c:follow_managed():
> 
>   while (managed = path->dentry->d_flags,
>   	managed &= DCACHE_MANAGED_DENTRY,
>   	managed != 0) {
> 	if (managed & DCACHE_MOUNTED) {
>   		struct vfsmount *mounted = lookup_mnt(path);
>   
>   		if (mounted) {
>   			dput(path->dentry);
>   			if (need_mntput)
>   				mntput(path->mnt);
>   			path->mnt = mounted;
>   			path->dentry = dget(mounted->mnt_root);
>   			need_mntput = true;
>   			continue;
>   		}
>   	}
>   
>   	/* Handle an automount point */
>   	if (managed & DCACHE_NEED_AUTOMOUNT) {
>   		ret = follow_automount(path, nd, &need_mntput);
>   		if (ret < 0)
>   			break;
>   		continue;
>   	}
>   
> 	/* We didn't change the current path point */
>   	break;
>   }
> 
> 
> The code attempts the follow_automount, which would succeed here,
> but it doesn't actually mount the current mount point, so we never
> enter the first if clause that would change path->dentry and lead
> us out of the loop.
> 
> I am unsure at what layer this should be fixed. Any suggestions?

This goes down to the command "mount mmc2.0" being executed. The mount
command then does a cdev_mount_default() which does this:

	/*
	 * If this cdev is already mounted somewhere use this path
	 * instead of mounting it again to avoid corruption on the
	 * filesystem. Note this ignores eventual fsoptions though.
	 */
	path = cdev_get_mount_path(cdev);
	if (path)
		return path;

The mount command is happy then and returns successfully. I think the
mount command should return an error when the cdev is mounted already
but the path it's mounted to is not the default path for that cdev.

Another option would be to implement bind mounts and do a bind mount
to the default path.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
