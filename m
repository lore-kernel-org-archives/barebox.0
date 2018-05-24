Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLkdr-0001DB-8S
 for barebox@lists.infradead.org; Thu, 24 May 2018 07:26:35 +0000
Received: by mail-wm0-x22e.google.com with SMTP id a8-v6so2146685wmg.5
 for <barebox@lists.infradead.org>; Thu, 24 May 2018 00:26:20 -0700 (PDT)
MIME-Version: 1.0
From: Franz Forstmayr <f.forstmayr@gmail.com>
Date: Thu, 24 May 2018 09:26:18 +0200
Message-ID: <CAGKTrWLu-r7OOFRW-JsbOz64O0jOz0CvJjVvHWzr-UFtVkcntg@mail.gmail.com>
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
Subject: Re: [BUG] TFTP: No access to subdirectories
To: barebox@lists.infradead.org

Hi,

I just saw this old thread and wanted to ask, if this one has been
fixed already? I just ran into a similar/same problem using
barebox-2018-04 from the  phytec repository
(https://git.phytec.de/barebox/log/?h=v2018.04.0-phy).

When i want to boot net the first time, it fails the second time successes.

barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ boot
booting 'net'
eth0: 100Mbps full duplex link detected
T open: Invalid argument
could not open /mnt/tftp/segin1/Image: Invalid argument
Booting 'net' failed: Invalid argument
booting 'net' failed: Invalid argument
boot: Invalid argument
barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ boot
booting 'net'

This is my /env/boot/net/

#!/bin/sh

[ -e /env/config-expansions ] && /env/config-expansions

path="/mnt/tftp/${global.hostname}"

global.bootm.image="${path}/Image"
global.bootm.oftree="${path}/oftree"

nfsroot="${nv.net.server}:/nfs/${global.hostname}"
global.linux.bootargs.base="ip=$nv.dev.eth0.ipaddr:$nv.net.server:$nv.net.gateway:$nv.dev.eth0.netmask::eth0:off"
global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=${nfsroot},vers=3"

My workaround is, to set up an md5sum global.bootm.oftree and for some
strange reason, the boot command successes.
Any thoughts?

Regards
Franz

Am 03.09.2017 um 14:45 schrieb Antony Pavlov:
> On Sun, 3 Sep 2017 10:49:21 +0200
> Dennis Menschel <menschel-d at posteo.de> wrote:
>
>> Hello,
>>
>> I've noticed that since barebox version 2017.07.0, accessing files via TFTP only works for files that are located in the root directory of the TFTP server.
>> Accessing files that reside in subdirectories doesn't work anymore.
>> The bug affects both access via /mnt/tftp/ and via the tftp shell command.
>>
>> I've tested the following versions of barebox:
>>
>> - 2017.05.0: works
>> - 2017.06.0: works
>> - 2017.07.0: doesn't work anymore
>> - 2017.08.0: doesn't work anymore
>>
>> Below follows the test scenario I've used to reproduce the bug:
>>
>>
>> Scenario
>> ========
>>
>> For the server, I'm using a Raspberry Pi 2 with:
>> - a DHCP server (isc-dhcp-server) and
>> - a TFTP server (tftpd-hpa).
>
> I have seen the same problem, please see this message:
>
> http://lists.infradead.org/pipermail/barebox/2017-July/030587.html
>
> I use tftpd-hpa too.
>
> I want to note again that reverting 944bf0e1 ('fixup! fs: Implement links to directories') and
> a602bebc ('fs: Implement links to directories') fixes the problem.
>
>> [...]

Thanks for the info, Antony!

I must admit that I was only searching the mailing list archive for the
subject concerning "bug" or "tftp", but not the content of the residual
mails before I wrote my bug report.

Good to see that you've already found that commits that cause the
problem. Hopefully it will be fixed in one of the next releases.

Best regards,
Dennis Menschel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
