Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22f.google.com ([2a00:1450:4008:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSm3R-0002lu-0G
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 11:31:33 +0000
Received: by mail-bk0-f47.google.com with SMTP id w10so481039bkz.20
 for <barebox@lists.infradead.org>; Wed, 26 Mar 2014 04:31:10 -0700 (PDT)
Date: Wed, 26 Mar 2014 12:31:05 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140326113103.GA9427@omega.Speedport_W_921V_1_24_000>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
 <20140326062619.GP17250@pengutronix.de>
 <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
 <CA+dawz1a0EVA5OvDGZjpchV13R8J5+hKS8hVOtmmi2HFef5spQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+dawz1a0EVA5OvDGZjpchV13R8J5+hKS8hVOtmmi2HFef5spQ@mail.gmail.com>
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
Subject: Re: Can i access the barebox env from linux
To: Ashutosh Singh <embedded.ashu@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 26, 2014 at 04:44:30PM +0530, Ashutosh Singh wrote:
> Thanks Alex,
> 
> The script is quite helpful.
> But since i am saving my barebox.env in nand and want to mount, modify
> and write it back to nand.
> Do you have a safer solution so that complete env data won't corrupted.

1. You need to save the bareboxenv as image, the right place would be
   /tmp which is tmpfs and this uses ram for storing data. You need inotify
   support in kernel and I am sure tmpfs also supports inotify. You also need
   the inotify userspace utilities.

2. The image should write via nandwrite from mtd-utils [1]. Look for
   the nandwrite manpage. nandwrite should write the tmp-image from bbenv
   to your nand mtd device.



I know the nandwrite will make a better badblock handling... but if you
set your bbenv size exactly the eraseblock size so it doesn't matter...
because after badblock marking that eraseblock you don't have any bbenv
partition anymore :/

nandwrite uses the mtd api to write and I suppose they do something more
than only badblock handling, ECC calculation.... Nevertheless you should
ever use nandwrite to write images to your nand /dev/*.nand partition.

I don't have any time now to change the script for nandwrite and extract
to /tmp/bbenv/, etc..., sorry. We should do it right and implement a C
solution for that. :-) I don't have time to do that also, maybe at weekend.

I don't have also no nand device here, I need to use the nandsim module.
This will take some time to setup.


Sorry, but try to change the script yourself and then share it with us. I
will take a look and review it.

- Alex

[1] http://git.infradead.org/mtd-utils.git

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
