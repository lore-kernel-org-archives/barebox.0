Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from v-smtpout3.han.skanova.net ([81.236.60.156])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0PsY-0002jZ-GJ
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 10:29:16 +0000
References: <6f652c2e-d971-052d-8e96-3ae7ad984500@solidxs.nl>
 <20171006041153.xgrjynzwido3mjfj@pengutronix.de>
 <4201a4ed-f5ae-2cae-e07c-1e95dbb538df@solidxs.nl>
 <4cda0e44-6ac4-8186-2453-0d55919727ef@mev.co.uk>
From: Marcel Hamer <marcel@solidxs.nl>
Message-ID: <0ad15ca1-bad1-a631-89fa-53ddc4ba224e@solidxs.nl>
Date: Fri, 6 Oct 2017 12:28:47 +0200
MIME-Version: 1.0
In-Reply-To: <4cda0e44-6ac4-8186-2453-0d55919727ef@mev.co.uk>
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
To: Ian Abbott <abbotti@mev.co.uk>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Ian,

On 10/06/2017 11:55 AM, Ian Abbott wrote:
> On 06/10/17 08:45, Marcel Hamer wrote:
>> It kind of sounds like the boot loader is deciding it is smarter than =

>> the developer and overriding the settings in the dtb before it passes =

>> it to the kernel. I also see it as kind of strange, when you =

>> configure a partition table in your dtb for the kernel and once you =

>> boot the kernel you get the partition table from the boot loader. =

>> Especially since I don't think this is documented anywhere, at least =

>> not in the bootm command documentation as far as I know.
>
> There is a magic variable setting to leave the partition entries alone:
>
> =A0 global.of_partition_binding=3D"donttouch"
>
> (Other meaningful values for this variable are "new" and "legacy", =

> which controls whether the individual partitions are placed within a =

> "partitions" node ("new") or not ("legacy").)
>

Thank you for pointing that option out, I will certainly have a look at =

that.

I took the partitioning as an example, because it gave me the biggest =

burden. But I guess in general I think the principle of fixing up the =

kernel device tree should be optional to my opinion.

Kind regards,

Marcel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
