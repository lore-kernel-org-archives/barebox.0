Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1juwTH-0008DK-C1
 for barebox@lists.infradead.org; Mon, 13 Jul 2020 11:18:08 +0000
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
 <20200709141400.GC15485@pengutronix.de>
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Message-ID: <a112fa10-08b5-dca4-1189-c51766329f79@phytec.de>
Date: Mon, 13 Jul 2020 13:18:04 +0200
MIME-Version: 1.0
In-Reply-To: <20200709141400.GC15485@pengutronix.de>
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
Subject: Re: [RFC PATCH 0/4] Introduce global.bootm.root env var for booting
 via PARTUUID
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 7/9/20 4:14 PM, Sascha Hauer wrote:
> On Tue, Jun 30, 2020 at 03:48:30PM +0200, Robert Karszniewicz wrote:
>> This patch introduces a new env var which specifies which device
>> is the rootfs device to be used in Linux, passed to Linux via bootargs,
>> identified by the rootfs partition's PARTUUID.
>>
>> global.bootm.root supplements global.bootm.appendroot, in that it overri=
des
>> appendroot's na=EFve default, which picks the partition that the kernel =
resides
>> on (global.bootm.image).
>>
>> I don't know if it is the right way, or a good way, but this is the shor=
test
>> and simplest way that I've found.
>>
>> What do you think of this? And is it generally something that would be
>> accepted, or is this out of scope for barebox?
>>
>> Example:
>> detect mmc2
>> global.bootm.image=3D'/mnt/mmc2.0/zImage'
>> global.bootm.appendroot=3D1
>> global.bootm.root=3D'/mnt/mmc2.1/'
> =


Generally, this was just the shortest possible way to make it basically =

work, before I knew if such a feature would be accepted at all.

> Why do you pass the standard mount path here? I would expect /dev/mmc2.1.
> =


Agree.

> In 4/4 you mount the root device. I think this should be avoided as it

Agree.

> only works when barebox has support for the rootfs, i.e. it doesn't work
> for XFS or the like.
> =


I see.

> Ok, fsdev_set_linux_rootarg() is tied to a filesystem, so maybe we need
> something similar for a cdev.
> =

> Generally I think barebox should support this usecase, but I am not
> convinced the approach you took is the right API.
> =


So do I understand it correctly, that doing it via a new 'root_dev' =

variable is fine, just that the implementation needs to be better?

> Sascha
> =


Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
