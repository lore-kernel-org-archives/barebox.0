Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8k4g-0000sJ-PZ
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 12:53:47 +0000
References: <1597062008-184305-1-git-send-email-r.karszniewicz@phytec.de>
 <20200820070554.GV13023@pengutronix.de>
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Message-ID: <9af975d3-5512-6da6-d636-284b1f2764f6@phytec.de>
Date: Thu, 20 Aug 2020 14:53:39 +0200
MIME-Version: 1.0
In-Reply-To: <20200820070554.GV13023@pengutronix.de>
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
Subject: Re: [PATCH v3] bootm: add global.bootm.root_dev env var for booting
 via PARTUUID
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 8/20/20 9:05 AM, Sascha Hauer wrote:
> On Mon, Aug 10, 2020 at 02:20:08PM +0200, Robert Karszniewicz wrote:
>> Introduces a new env var which specifies which device is the rootfs
>> device to be used in Linux, passed to Linux via bootargs, identified by
>> the rootfs partition's PARTUUID.
>>
>> global.bootm.root_dev supplements global.bootm.appendroot, in that it
>> overrides appendroot's na=EFve default, which picks the partition that t=
he
>> kernel resides on (global.bootm.image).
>>
>> Example:
>> detect mmc2
>> global.bootm.image=3D'/mnt/mmc2.0/zImage'
>> global.bootm.appendroot=3D1
>> global.bootm.root_dev=3D/dev/mmc2.1
>> boot mmc
>>
>> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
>> ---
> =

> Applied, thanks
> =

> Sascha
> =


Thanks!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
