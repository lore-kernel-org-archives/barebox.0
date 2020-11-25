Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khrBR-0003tI-Vw
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 09:33:54 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6c3e8d1f-025c-73c6-3834-280f0a7e5633@pengutronix.de>
Date: Wed, 25 Nov 2020 10:33:45 +0100
MIME-Version: 1.0
Content-Language: en-US
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
Subject: Infinite Loop when automounting device mounted elsewhere
To: Sascha Hauer <s.hauer@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

I just ran into this issue:

  $ mkdir /boot
  $ mount /dev/mmc2.0 /boot
  $ ls /mnt/mmc2.0/
  mounted /dev/mmc2.0 on /boot
  mounted /dev/mmc2.0 on /boot
  mounted /dev/mmc2.0 on /boot
  [ Ad infinitum ]

This is more readily reproducible with barebox platforms where a separate
boot partition is default-mounted as /boot. In that case, accessing the
partition's corresponding /mnt entry will hang.

The hang can be traced back to fs/fs.c:follow_managed():

  while (managed = path->dentry->d_flags,
  	managed &= DCACHE_MANAGED_DENTRY,
  	managed != 0) {
	if (managed & DCACHE_MOUNTED) {
  		struct vfsmount *mounted = lookup_mnt(path);
  
  		if (mounted) {
  			dput(path->dentry);
  			if (need_mntput)
  				mntput(path->mnt);
  			path->mnt = mounted;
  			path->dentry = dget(mounted->mnt_root);
  			need_mntput = true;
  			continue;
  		}
  	}
  
  	/* Handle an automount point */
  	if (managed & DCACHE_NEED_AUTOMOUNT) {
  		ret = follow_automount(path, nd, &need_mntput);
  		if (ret < 0)
  			break;
  		continue;
  	}
  
	/* We didn't change the current path point */
  	break;
  }


The code attempts the follow_automount, which would succeed here,
but it doesn't actually mount the current mount point, so we never
enter the first if clause that would change path->dentry and lead
us out of the loop.

I am unsure at what layer this should be fixed. Any suggestions?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
