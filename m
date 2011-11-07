Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNKZB-00065w-O6
 for barebox@lists.infradead.org; Mon, 07 Nov 2011 08:28:30 +0000
Received: by qyg14 with SMTP id 14so2130505qyg.15
 for <barebox@lists.infradead.org>; Mon, 07 Nov 2011 00:28:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20111107080824.GR16886@pengutronix.de>
References: <1320564048-3908-1-git-send-email-franck.jullien@gmail.com>
 <20111107080824.GR16886@pengutronix.de>
Date: Mon, 7 Nov 2011 09:28:26 +0100
Message-ID: <CAJfOKBwrJNUeqT3NY6RxHwB8hi2XwOcbcb=AyS6yq20kYJjdkA@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] mount: Fix the printing of device name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2011/11/7 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Franck,
>
> On Sun, Nov 06, 2011 at 08:20:48AM +0100, franck.jullien@gmail.com wrote:
>> From: Franck Jullien <franck.jullien@gmail.com>
>>
>> Mount without argument always print a "none" as device name mounted
>> because entry->parent_device is always NULL.
>>
>> The problem is the mount function in fs/fs.c. parent_device is
>> initialized to NULL and never updated. With this patch, parent_device
>> is set with the mounted device name.
>>
>> Moreover, the mount function has been modified to print the device name
>> plus device id using the dev_name function.
>>
>> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
>> ---
>> =A0commands/mount.c | =A0 =A02 +-
>> =A0fs/fs.c =A0 =A0 =A0 =A0 =A0| =A0 11 +++++++++++
>> =A02 files changed, 12 insertions(+), 1 deletions(-)
>>
>> diff --git a/commands/mount.c b/commands/mount.c
>> index 52d1700..7cefdbe 100644
>> --- a/commands/mount.c
>> +++ b/commands/mount.c
>> @@ -40,7 +40,7 @@ static int do_mount(struct command *cmdtp, int argc, c=
har *argv[])
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 entry =3D mtab_next_entry(en=
try);
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (entry) {
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf("%s o=
n %s type %s\n",
>> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 entry->parent_device ? entry->parent_device->name : "none",
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 entry->parent_device ? dev_name(entry->parent_device) : "none",
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 entry->path,
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 entry->dev->name);
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
>> diff --git a/fs/fs.c b/fs/fs.c
>> index 51a7411..529ff53 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -31,6 +31,7 @@
>> =A0#include <init.h>
>> =A0#include <module.h>
>> =A0#include <libbb.h>
>> +#include <libgen.h>
>>
>> =A0void *read_file(const char *filename, size_t *size)
>> =A0{
>> @@ -741,6 +742,7 @@ int mount(const char *device, const char *fsname, co=
nst char *_path)
>> =A0 =A0 =A0 struct device_d *dev, *parent_device =3D NULL;
>> =A0 =A0 =A0 int ret;
>> =A0 =A0 =A0 char *path =3D normalise_path(_path);
>> + =A0 =A0 char *devname, *par;
>>
>> =A0 =A0 =A0 errno =3D 0;
>>
>> @@ -804,6 +806,15 @@ int mount(const char *device, const char *fsname, c=
onst char *_path)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto out2;
>> =A0 =A0 =A0 }
>>
>> + =A0 =A0 devname =3D basename((char *)device);
>> +
>> + =A0 =A0 if (strchr(devname, '.')) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 par =3D strchr(devname, '.');
>> + =A0 =A0 =A0 =A0 =A0 =A0 *par =3D 0;
>> + =A0 =A0 }
>> +
>> + =A0 =A0 parent_device =3D get_device_by_name(devname);
>
> This does not look good. First of all basename returns (a part of) the
> same string which is passed to it, so you modify a const char * here.
> Then you try to find the device name by using the first part before the
> '.', but the name of the file under /dev/ does not necessarily match the
> device name.
>
> I think what you should do here is to see whether the first part of
> *device matches "/dev/" and then use cdev_open on the second part. The
> struct cdev from cdev_open contains the device pointer you are looking
> for.
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

Ok Sasha, thanks for the tips. You are saying I was lucky it worked on
my board :)
I'll rework on this.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
