Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUr9-0002yZ-46
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 09:35:20 +0000
References: <20210211171139.25987-1-a.fatoum@pengutronix.de>
 <20210212085809.GH19583@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ccfb942b-42a7-88ed-e637-b8a1ed180a22@pengutronix.de>
Date: Fri, 12 Feb 2021 10:35:17 +0100
MIME-Version: 1.0
In-Reply-To: <20210212085809.GH19583@pengutronix.de>
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
Subject: Re: [PATCH] fs: increase reference count for backing store when loop
 mounting
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org



On 12.02.21 09:58, Sascha Hauer wrote:
> On Thu, Feb 11, 2021 at 06:11:39PM +0100, Ahmad Fatoum wrote:
>> The VFS layer already increase the mount reference count for the mount
>> point. This means e.g. following sequence is well-behaving:
>>
>>   mkdir -p /mnt/disk0.0/media
>>   mount -o loop backing.squashfs /mnt/disk0.0/media
>>   umount /mnt/disk0.0
>>
>> barebox will do the right thing and report
>>
>>   umount: Device or resource busy
>>
>> However the reference count of the file where backing.squashfs comes
>> from is not incremented on mount with the effect that following sequence
>> crashes:
>>
>>   mkdir -p /media
>>   mount -o loop /mnt/disk0.0/backing.squashfs /media
>>   umount /mnt/disk0.0 # should've returned EBUSY
>>   umount /media
>>
>> Fix this by touching the backing store's mount reference count when
>> loop mounting and unmounting.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  fs/fs.c | 38 +++++++++++++++++++++++++++++++++-----
>>  1 file changed, 33 insertions(+), 5 deletions(-)
>>
>> diff --git a/fs/fs.c b/fs/fs.c
>> index 00b8645fb0e9..10cc08fc93ab 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -89,7 +89,13 @@ static int init_fs(void)
>>  
>>  postcore_initcall(init_fs);
>>  
>> +struct filename;
>> +
>>  static struct fs_device_d *get_fsdevice_by_path(const char *path);
>> +static int filename_lookup(int dfd, struct filename *name, unsigned flags,
>> +			   struct path *path);;
>> +static struct filename *getname(const char *filename);
>> +static void path_put(const struct path *path);
>>  
>>  LIST_HEAD(fs_device_list);
>>  
>> @@ -683,6 +689,8 @@ static void fs_remove(struct device_d *dev)
>>  	struct fs_device_d *fsdev = dev_to_fs_device(dev);
>>  	struct super_block *sb = &fsdev->sb;
>>  	struct inode *inode, *tmp;
>> +	struct path path;
>> +	int ret;
>>  
>>  	if (fsdev->dev.driver) {
>>  		dev->driver->remove(dev);
>> @@ -695,9 +703,17 @@ static void fs_remove(struct device_d *dev)
>>  	if (fsdev->cdev)
>>  		cdev_close(fsdev->cdev);
>>  
>> -	if (fsdev->loop && fsdev->cdev)
>> +	if (fsdev->loop && fsdev->cdev) {
>>  		cdev_remove_loop(fsdev->cdev);
>>  
>> +		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
>> +				      LOOKUP_FOLLOW, &path);
>> +		if (!ret) {
>> +			mntput(path.mnt);
>> +			path_put(&path);
>> +		}
>> +	}
>> +
>>  	if (fsdev->vfsmount.mountpoint)
>>  		fsdev->vfsmount.mountpoint->d_flags &= ~DCACHE_MOUNTED;
>>  
>> @@ -767,17 +783,29 @@ static const char *detect_fs(const char *filename, const char *fsoptions)
>>  int fsdev_open_cdev(struct fs_device_d *fsdev)
>>  {
>>  	unsigned long long offset = 0;
>> +	struct path path = {};
>> +	int ret;
>>  
>>  	parseopt_b(fsdev->options, "loop", &fsdev->loop);
>>  	parseopt_llu_suffix(fsdev->options, "offset", &offset);
>> -	if (fsdev->loop)
>> -		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR,
>> -					       offset);
>> -	else
>> +	if (fsdev->loop) {
>> +		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
>> +				      LOOKUP_FOLLOW, &path);
>> +		if (ret)
>> +			return ret;
>> +
>> +		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR, offset);
>> +	} else {
>>  		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
>> +	}
>>  	if (!fsdev->cdev)
>>  		return -EINVAL;
> 
> path_put() is missing in this error path.

Thanks for catching. Just sent out v2.

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
