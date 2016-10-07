Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x242.google.com ([2607:f8b0:400c:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bsTxt-0003jW-EU
 for barebox@lists.infradead.org; Fri, 07 Oct 2016 12:09:26 +0000
Received: by mail-vk0-x242.google.com with SMTP id 192so1839547vkl.2
 for <barebox@lists.infradead.org>; Fri, 07 Oct 2016 05:09:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7945e859-d844-9c44-f776-87e35ffc27e3@pengutronix.de>
References: <20161004101048.12970-1-ejo@pengutronix.de>
 <20161004101048.12970-5-ejo@pengutronix.de>
 <CAGm1_kvFujU0QcCdmREtbRfU7J_vQgMnJvs9k=dpR3PQ=9+_6g@mail.gmail.com>
 <7945e859-d844-9c44-f776-87e35ffc27e3@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 7 Oct 2016 14:08:42 +0200
Message-ID: <CAGm1_kt_-rdCHpigKYBFJNMRoOB-mZENKFiqUwA2Fs7XGf1oMw@mail.gmail.com>
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
Subject: Re: [PATCH 4/5] Add filetype and detection for squashfs images
To: Enrico Joerns <ejo@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi Enrico,

On Thu, Oct 6, 2016 at 4:10 PM, Enrico Joerns <ejo@pengutronix.de> wrote:
> Hi Yegor,
>
> On 10/06/2016 03:55 PM, Yegor Yefremov wrote:
>>
>> On Tue, Oct 4, 2016 at 12:10 PM, Enrico Jorns <ejo@pengutronix.de> wrote:
>>>
>>> This adds `filetype_squashfs` to the list of known filetypes and adds a
>>> detection for squashfs files to file_detect_type(). This currently
>>> matches on the `hsqs` start sequence of an image file.
>>>
>>> Additionally, the newly introduced filetype is registered as the type of
>>> the squashfs_driver which allows, for example, to mount squashfs without
>>> the need to specify a type parameter.
>>>
>>> This changes enable booting a squashfs with the simple `boot` command
>>> pointing to the location (device) that holds the squashfs.
>>>
>>> Note that booting with blspec is limited as the current squashfs driver
>>> is not capable of handling symbolic links.
>>
>>
>> Glad to see SquashFS will be used not only by myself :-)
>
>
> glad to see that, too ;)
>
>> Could you explain how one can write a rootfs.sqaushfs to a ubiblock
>> from Linux and then what steps are needed in barebox?
>>
>> So far I've only found this info about ubiblock:
>> http://www.linux-mtd.infradead.org/doc/ubi.html#L_ubiblock, but it
>> doesn't say much.
>
>
> Yes, the informations provided are a bit sparse..
>
>> My actions were:
>>
>> ubiattach -p /dev/mtd5
>> ubiblock --create /dev/ubi0_0
>> ubiupdatevol /dev/ubi0_0 rootfs.squashfs
>>
>> Can I mount /dev/ubi0_0 via mount? If yes, what parameters I should use?
>
>
> The above commands look pretty similar to what I did. Mounting the ubiblock
> device does work too, with a little pitfall, mount will be confused by
> having a read-only file system but nobody told it before.
> So you must do
>
>   mount -o ro /dev/ubiblock0_0 /mnt/test
>
>> How can I mount this volume in barebox step-by-step?
>
>
> Using it in barebox is pretty easy, as the ubiblock layer is not required
> there:
>
>   ubiattach /dev/nand0.root
>   ubiupdatevol /dev/nand0.root.ubi.ubivolname rootfs.squashfs
>   mkdir /mnt/test
>   mount /dev/nand0.root.ubi.ubivolname /mnt/test
>
>
> To boot via bootspec form a ubi containing a squashfs, you simply need to
>
>   boot /dev/nand0.root.ubi.ubivolname
>
>
> Hope that helps.

Everything is working like a charm. I just had a problem with my
ccache and hence both my kernel and barebox got compiled without
squashfs support :-)

So here is my:

Tested-by: Yegor Yefremov <yegorslists@googlemail.com>

Thanks.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
