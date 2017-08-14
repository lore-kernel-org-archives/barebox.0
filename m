Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.iad3a.emailsrvr.com ([173.203.187.77])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhJIp-0001HJ-QZ
 for barebox@lists.infradead.org; Mon, 14 Aug 2017 17:37:25 +0000
Received: from smtp26.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp26.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 7B50655DE
 for <barebox@lists.infradead.org>; Mon, 14 Aug 2017 13:37:00 -0400 (EDT)
Received: by smtp26.relay.iad3a.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id 2327756BE
 for <barebox@lists.infradead.org>; Mon, 14 Aug 2017 13:37:00 -0400 (EDT)
References: <874ltanmak.fsf@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <35adf83c-16bb-7c10-e5f3-65eef21ed73c@mev.co.uk>
Date: Mon, 14 Aug 2017 18:36:59 +0100
MIME-Version: 1.0
In-Reply-To: <874ltanmak.fsf@gmail.com>
Content-Language: en-GB
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox and ext4 ? problems
To: barebox@lists.infradead.org

On 14/08/17 17:31, Holger Schurig wrote:
> Hi,
> 
> i just noticed that Barebox 2017.08.0 has trouble with one of my ext4
> partitions. My i.mX6q device has both SD-Card and eMMC. Normally I boot
> from SD-Card, and then from there I use normal "fdisk" / "mkfs.ext4 -F
> -j -L $label /dev/$dev" to create the ext4 partitions. Then I mount this
> and rsync the contents of the SD-Card into the eMMC partition.
> 
> Now, when I boot into Barebox, I can't access the /boot device. Look at
> the weird flags:
> 
> barebox:/ detect mmc3
> barebox:/ mkdir /mnt
> barebox:/ mount /dev/mmc3.0 /mnt/
> barebox:/ ll /mnt
> drwxrwxrwx              0 .
> drwxrwxrwx              0 ..
> ?---------              0 bin
> ?---------              0 boot
> ?---------              0 dev
> drwxr-xr-x           4096 etc
> lrwxrwxrwx              9 home -> /opt/home
> drwxr-xr-x           4096 lib
> drwx------          16384 lost+found
> drwxr-xr-x           4096 media
> ?---------              0 mnt
> ?---------              0 opt
> ?---------              0 proc
> drwxr-xr-x           4096 root
> drwxr-xr-x           4096 run
> drwxr-xr-x           4096 sbin
> ?---------              0 srv
> ?---------              0 sys
> ?---------              0 tmp
> drwxr-xr-x           4096 usr
> drwxr-xr-x           4096 var
> 
> 
> So, some directories like "boot" aren't directories. Moreover, some
> directories that I can access have the wrong contents:
> 
> barebox:/ ll /mnt/media/media
> drwxr-xr-x           4096 .
> drwxrwxrwx              0 ..
> crw-r-----              0 console
> lrwxrwxrwx             11 core -> /proc/kcore
> lrwxrwxrwx             14 fd -> /proc/self/fd/
> crw-rw-rw-              0 full
> crw-r-----              0 kmem
> brw-r-----              0 loop0
> brw-r-----              0 loop1
> brw-r-----              0 loop2
> brw-r-----              0 loop3
> brw-r-----              0 loop4
> brw-r-----              0 loop5
> brw-r-----              0 loop6
> brw-r-----              0 loop7
> ...
> 
> /media should however be empty, not contain files from /dev !!!
> 
> 
> 
> The SD-Card however is correct:
> 
> barebox:/ umount /mnt
> barebox:/ detect mmc1
> barebox:/ mount /dev/mmc1.0 /mnt/
> barebox:/ ll /mnt/
> drwxrwxrwx              0 .
> drwxrwxrwx              0 ..
> drwxr-xr-x           4096 bin
> drwxr-xr-x           1024 boot
> drwxr-xr-x           1024 dev
> drwxr-xr-x           5120 etc
> lrwxrwxrwx              9 home -> /opt/home
> drwxr-xr-x           1024 lib
> drwxr-xr-x           1024 media
> drwxr-xr-x           1024 mnt
> drwxr-xr-x           1024 opt
> drwxr-xr-x           1024 proc
> drwx------           1024 root
> drwxr-xr-x           1024 run
> drwxr-xr-x           3072 sbin
> drwxr-xr-x           1024 srv
> drwxr-xr-x           1024 sys
> drwxrwxrwt           1024 tmp
> drwxr-xr-x           1024 usr
> drwxr-xr-x           1024 var
> 
> (also the /media there is empty). Similarly, when I mount the eMMC from
> Linux, I also get the correct files:
> 
> root@my:~# mount /dev/mmcblk0p1 /mnt/
> root@my:~# ll /mnt/
> total 84
> drwxr-xr-x  2 root root  4096 Aug 14 14:57 bin/
> drwxr-xr-x  2 root root  4096 Aug 14 15:38 boot/
> drwxr-xr-x  3 root root  4096 Aug 14 14:56 dev/
> drwxr-xr-x 58 root root  4096 Aug 14 15:38 etc/
> lrwxrwxrwx  1 root root     9 Aug 14 15:37 home -> /opt/home/
> drwxr-xr-x 11 root root  4096 Aug 14 14:56 lib/
> drwx------  2 root root 16384 Aug 14 16:07 lost+found/
> drwxr-xr-x  3 root root  4096 Sep 30  2016 media/
> drwxr-xr-x  2 root root  4096 Sep 30  2016 mnt/
> drwxr-xr-x  2 root root  4096 Aug 14 14:58 opt/
> drwxr-xr-x  2 root root  4096 Sep 30  2016 proc/
> drwx------  4 root root  4096 Aug 14 15:01 root/
> drwxr-xr-x  3 root root  4096 Aug 14 14:58 run/
> drwxr-xr-x  2 root root  4096 Aug 14 15:02 sbin/
> drwxr-xr-x  2 root root  4096 Sep 30  2016 srv/
> drwxr-xr-x  2 root root  4096 Sep 30  2016 sys/
> drwxrwxrwt  2 root root  4096 Aug 14 15:53 tmp/
> drwxr-xr-x 10 root root  4096 Sep 30  2016 usr/
> drwxr-xr-x 11 root root  4096 Sep 30  2016 var/
> 
> 
> Questions:
> 
> * Did Linux 4.9.x or e2fsprogs 1.42.12-2+b1 from Debian Stretch use some
>    partition flags / format that Barebox 2017.08.0 doesn't support?
> * any ideas on how to debug this further?
> 
> 
> Greetings,
> Holger

You could use tune2fs -l DEV to check for differences in filesystem 
features between the two filesystems.  That might narrow down where the 
problem lies.

mke2fs uses the /etc/mke2fs.conf file to set the default features when 
creating the filesystem, so you might need to modify that to make the 
defaults compatible with barebox.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
