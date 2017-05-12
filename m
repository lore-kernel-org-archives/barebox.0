Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d98ci-00047j-DD
 for barebox@lists.infradead.org; Fri, 12 May 2017 11:20:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B6FBCA003C0
 for <barebox@lists.infradead.org>; Fri, 12 May 2017 13:21:10 +0200 (CEST)
References: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
 <20170511091446.evilkhroas4jmck5@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <c8bbdd4c-6300-52d6-1abf-f266ae0d5310@phytec.de>
Date: Fri, 12 May 2017 13:20:19 +0200
MIME-Version: 1.0
In-Reply-To: <20170511091446.evilkhroas4jmck5@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/5] arm: mach-omap: Change mountpoint of boot
 partitions
To: barebox@lists.infradead.org

Hi,

Am 11.05.2017 um 11:14 schrieb Sascha Hauer:
> Hi Daniel,
>
> Your series wasn't forgotten. It's only that it took me some time to try
> and implement links to directories. With this series I just sent and
> "fs: Create automount entries for the default mount pathes" you should
> be able to make this series a bit nicer. What I think of is that /boot
> becomes a link to /mnt/mmcx.y or whatever provided /boot previously.
>
> Could you give it a try?
I added this to the newest patch series. Now, all AM335x boards can =

either boot from /boot or one of the /mnt/ boot partitions. Non Phytec =

Boards won't need an environment change. Thanks!

You can decide if you want the 4th path (delete BBB environment).

Daniel

>
> Sascha
>
>> If using EMMC and SD as bootsources, mounting the boot partition of both
>> devices to /boot makes trouble. Either the correct device is mounted to
>> /boot or a remount of /boot has to be performed.
>>
>> To ensure this problem each MMCn bootsource will be mounted to his own
>> path in /mnt/mmcN.0
>>
>> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
>> ---
>>  arch/arm/mach-omap/omap_generic.c | 31 ++++++++++++++++++++-----------
>>  1 file changed, 20 insertions(+), 11 deletions(-)
>>
>> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap=
_generic.c
>> index 1d03eac..aa7424d 100644
>> --- a/arch/arm/mach-omap/omap_generic.c
>> +++ b/arch/arm/mach-omap/omap_generic.c
>> @@ -113,12 +113,15 @@ const char *omap_get_bootmmc_devname(void)
>>  }
>>
>>  #if defined(CONFIG_ENV_HANDLING)
>> -#define ENV_PATH "/boot/barebox.env"
>> +static char *envpath =3D "/mnt/mmc0.0/barebox.env";
>> +
>>  static int omap_env_init(void)
>>  {
>> -	char *partname;
>> -	const char *diskdev;
>>  	int ret;
>> +	const char *diskdev;
>> +	char *partname;
>> +	struct cdev *cdev;
>> +	const char *rootpath;
>>
>>  	if (bootsource_get() !=3D BOOTSOURCE_MMC)
>>  		return 0;
>> @@ -129,18 +132,24 @@ static int omap_env_init(void)
>>  		diskdev =3D "disk0";
>>
>>  	device_detect_by_name(diskdev);
>> +	partname =3D basprintf("%s.0", diskdev);
>> +	cdev =3D cdev_by_name(partname);
>> +	if (cdev =3D=3D NULL) {
>> +		pr_err("Failed to get device %s\n", partname);
>> +		goto out;
>> +	}
>>
>> -	partname =3D basprintf("/dev/%s.0", diskdev);
>> -
>> -	mkdir("/boot", 0666);
>> -	ret =3D mount(partname, "fat", "/boot", NULL);
>> -	if (ret) {
>> -		pr_err("Failed to load environment: mount %s failed (%d)\n", partname=
, ret);
>> +	rootpath =3D cdev_mount_default(cdev, NULL);
>> +	if (IS_ERR(rootpath)) {
>> +		pr_err("Failed to load environment: mount %s failed (%d)\n",
>> +						cdev->name, IS_ERR(rootpath));
>>  		goto out;
>>  	}
>> +	envpath =3D basprintf("%s/barebox.env", rootpath);
>>
>> -	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, partn=
ame);
>> -	default_environment_path_set(ENV_PATH);
>> +	pr_debug("Loading default env from %s on device %s\n", envpath,
>> +								partname);
>> +	default_environment_path_set(envpath);
>>
>>  out:
>>  	free(partname);
>> --
>> 1.9.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>

-- =

Mit freundlichen Gr=FC=DFen,
With best regards,
   Daniel Schultz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
