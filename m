Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEjFp-0004fq-Iu
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 15:33:14 +0000
Received: by vcbf13 with SMTP id f13so2287582vcb.36
 for <barebox@lists.infradead.org>; Mon, 02 Apr 2012 08:33:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120402142929.GY3852@pengutronix.de>
References: <CAFEF1dF7M15xAgvYLdkVowavpXnvThkzXwtXe0fe4TEEYMFokQ@mail.gmail.com>
 <20120402142929.GY3852@pengutronix.de>
Date: Mon, 2 Apr 2012 17:33:11 +0200
Message-ID: <CAFEF1dGsAF1zYw+3NDW9sq98sTTp=K9VbyOoHA1kLn2Ltx7=Eg@mail.gmail.com>
From: Jakob Malm <jakob.malm@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Boot linux from cramfs on USB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Thanks for your prompt reply!

Den 2 april 2012 16:29 skrev Sascha Hauer <s.hauer@pengutronix.de>:
> On Mon, Apr 02, 2012 at 03:58:49PM +0200, Jakob Malm wrote:
>> Hi,
>>
>> How would I boot a linux system in a cramfs image on USB? I don't seem
>> to be able to mount such an image:
>>
>> ...
>>
>> Is it not possible to mount a cramfs image file?
>
> cramfs currently has the limitation that it can only mount
> files which are memory mappable (that is for example nor flash).
> I never fixed this due to the lack of interest for cramfs.

Ok.

>
> That said, your setup seems a bit crazy. What is inside your cramfs? The
> kernel? You should rather put your kernel into a plain partition on the
> USB disk. Or do you only have your rootfs inside the cramfs? I rather
> recommend ext2 or ext3 for this.

The cramfs would contain the rootfs, including kernel.

I want to be able to have FAT on the disk, preferably with a single
file (possibly two), containing the kernel and rootfs, and then load
up the rootfs into memory and start the kernel with that rootfs. I
suppose I could create a command specific for our case, but it seems
like a common enough scenario to me that someone else should have done
something similar...

/Jakob

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
