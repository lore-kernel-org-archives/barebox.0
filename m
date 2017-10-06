Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from v-smtpout1.han.skanova.net ([81.236.60.154])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0NKS-0000MG-Te
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 07:45:55 +0000
References: <6f652c2e-d971-052d-8e96-3ae7ad984500@solidxs.nl>
 <20171006041153.xgrjynzwido3mjfj@pengutronix.de>
From: Marcel Hamer <marcel@solidxs.nl>
Message-ID: <4201a4ed-f5ae-2cae-e07c-1e95dbb538df@solidxs.nl>
Date: Fri, 6 Oct 2017 09:45:24 +0200
MIME-Version: 1.0
In-Reply-To: <20171006041153.xgrjynzwido3mjfj@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Kernel device tree gets modified with bootm command when
 CONFIG_OFDEVICE is enabled
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 10/06/2017 06:11 AM, Sascha Hauer wrote:
> Hi Marcel,
>
> On Tue, Oct 03, 2017 at 11:36:49AM +0200, Marcel Hamer wrote:
>> Hello,
>>
>> When passing a custom device tree to the kernel using the 'bootm' comman=
d I
>> see the device tree gets 'fixed up' when the CONFIG_OFDEVICE option is
>> enabled. Probably this should not be the case when the dtb is passed to =
the
>> kernel?
>>
>> This happens on line common/bootm.c:395:
>>
>>  =A0=A0=A0 oftree =3D of_get_fixed_tree(data->of_root_node);
>>
>> Should this not be changed to:
>>
>>  =A0=A0=A0 oftree =3D of_flatten_db(data->of_root_node);
> No. Getting the fixed up tree is exactly what we want here. There are
> some cases in which it's absolutely mandatory to use the fixed tree
> (memory banks, they are oftem empty in the Linux provided dts files)
> and other in which is convenient (mtd, to make sure the kernel sees the
> same partitions as the bootloader).
> There might be some cases where we want to have more control over which
> fixups run and which don't, but generally we want to have the fixed tree
> here.
>
> Sascha
>
Ok, I kind of get the reasoning behind the fixing up, but I don't think =

it is very welcome in all situations. Not considering the '/chosen' =

node, because I can see that is a requirement to be added to the dtb.

When I specifically specify a custom dtb to be used for the Linux kernel =

I would not prefer the boot loader to modify it. If there should be a =

system to fix it up it should be the kernel in this case, at least in my =

opinion.

It kind of sounds like the boot loader is deciding it is smarter than =

the developer and overriding the settings in the dtb before it passes it =

to the kernel. I also see it as kind of strange, when you configure a =

partition table in your dtb for the kernel and once you boot the kernel =

you get the partition table from the boot loader. Especially since I =

don't think this is documented anywhere, at least not in the bootm =

command documentation as far as I know.

When you want to update your dtb in the future, for whatever reason, =

this also becomes an issue. For instance if you would want to add a =

label to your mtd partition, then you would have to update your boot =

loader to get it into the kernel. Or maybe you want part of the =

partitions configurable depending on the system configuration. In this =

case this would no longer be possible, because the boot loader overrides =

it by default.

Would it be an option to make the fixing up configurable by a =

configuration setting for the bootm command?

Kind regards,

Marcel


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
