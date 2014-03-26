Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSmA9-0002wd-PZ
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 11:38:30 +0000
Received: by mail-bk0-f54.google.com with SMTP id 6so490665bkj.13
 for <barebox@lists.infradead.org>; Wed, 26 Mar 2014 04:38:07 -0700 (PDT)
Date: Wed, 26 Mar 2014 12:33:01 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140326113300.GB9427@omega.Speedport_W_921V_1_24_000>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
 <20140326062619.GP17250@pengutronix.de>
 <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
 <CA+dawz1a0EVA5OvDGZjpchV13R8J5+hKS8hVOtmmi2HFef5spQ@mail.gmail.com>
 <20140326113103.GA9427@omega.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140326113103.GA9427@omega.Speedport_W_921V_1_24_000>
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

On Wed, Mar 26, 2014 at 12:31:03PM +0100, Alexander Aring wrote:
> On Wed, Mar 26, 2014 at 04:44:30PM +0530, Ashutosh Singh wrote:
> > Thanks Alex,
> > 
> > The script is quite helpful.
> > But since i am saving my barebox.env in nand and want to mount, modify
> > and write it back to nand.
> > Do you have a safer solution so that complete env data won't corrupted.
> 
> 1. You need to save the bareboxenv as image, the right place would be
>    /tmp which is tmpfs and this uses ram for storing data. You need inotify
>    support in kernel and I am sure tmpfs also supports inotify. You also need
>    the inotify userspace utilities.
> 
> 2. The image should write via nandwrite from mtd-utils [1]. Look for
>    the nandwrite manpage. nandwrite should write the tmp-image from bbenv
>    to your nand mtd device.
> 

3. To read the image from bbenv partition you should also not use
   bareboxenv tool directly. Use nanddump for that and then use
   bareboxenv to extract these files to /tmp/bbenv or whatever.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
