Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSmUT-0003SG-Uq
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 11:59:30 +0000
Received: by mail-bk0-f49.google.com with SMTP id my13so486798bkb.8
 for <barebox@lists.infradead.org>; Wed, 26 Mar 2014 04:59:06 -0700 (PDT)
Date: Wed, 26 Mar 2014 12:58:57 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140326115854.GA12190@omega.Speedport_W_921V_1_24_000>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
 <20140326062619.GP17250@pengutronix.de>
 <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
 <CA+dawz1a0EVA5OvDGZjpchV13R8J5+hKS8hVOtmmi2HFef5spQ@mail.gmail.com>
 <20140326113103.GA9427@omega.Speedport_W_921V_1_24_000>
 <20140326113300.GB9427@omega.Speedport_W_921V_1_24_000>
 <5332BF9F.8060308@reverze.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5332BF9F.8060308@reverze.net>
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
To: Michel Stam <michel@reverze.net>
Cc: barebox@lists.infradead.org, Ashutosh Singh <embedded.ashu@gmail.com>

On Wed, Mar 26, 2014 at 12:53:03PM +0100, Michel Stam wrote:
> In case anyone is interested; for a barebox x86 project I wrote a library
> that overrides fopen/fclose/open/close/etc a while back, which allows read
> access to the environment sector if properly configured. I managed to get it
> working on arm/mips with mtdblock as well.
> 
> In the near future I'd like to write a kernel driver to read the filesystem
> properly, this was more of an experiment.
> 
How does it work? As a kernel module, as registered filesystem under
/proc/filesystems ?

With fuse as userspace filesystem?

Or like the inotify solution?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
