Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUPqE-0004ml-T7
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 00:12:43 +0000
Received: by mail-we0-f173.google.com with SMTP id w61so4014381wes.18
 for <barebox@lists.infradead.org>; Sun, 30 Mar 2014 17:12:19 -0700 (PDT)
Date: Mon, 31 Mar 2014 02:12:11 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140331001145.GB28141@omega.Speedport_W_921V_1_24_000>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
 <20140326062619.GP17250@pengutronix.de>
 <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
 <CA+dawz1a0EVA5OvDGZjpchV13R8J5+hKS8hVOtmmi2HFef5spQ@mail.gmail.com>
 <20140326113103.GA9427@omega.Speedport_W_921V_1_24_000>
 <20140326113300.GB9427@omega.Speedport_W_921V_1_24_000>
 <CA+dawz2HSTYcR4Lv_0Q_ECELh2i9kq6vnZTEdnD8e+qu4pyamA@mail.gmail.com>
 <20140328091854.GA20774@omega.Speedport_W_921V_1_24_000>
 <CA+dawz3gfhFv3mtAOjXVoooE5WqJb6sH1qbMmPw--OD-p_N4Qg@mail.gmail.com>
 <20140328095241.GB21559@omega.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140328095241.GB21559@omega.Speedport_W_921V_1_24_000>
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

Hi,

On Fri, Mar 28, 2014 at 10:52:41AM +0100, Alexander Aring wrote:
> On Fri, Mar 28, 2014 at 03:04:40PM +0530, Ashutosh Singh wrote:
> > ya i tried with that too please have a look over barebox log after reboot:
> > 
> > nand: ONFI param page 0 valid
> > nand: ONFI flash detected ...
> > nand: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron MT29F4G08ABADAH4),
> > page size: 2048, OOB size: 64
> > malloc space: 0x83ff4000 -> 0x87ff3fff (size 64 MiB)
> > err -74
> well, 74 is EBADMSG.
> 
> I run a 'grep -nr "EBADMSG" .' into the current barebox directory and it
> seems that the uncompress env functions doesn't return this errno. So
> maybe your enviroment is correct (I can't check it I need a hexdump for
> this).
> 
> 
> What I can see is:
> ./drivers/mtd/nand/nand_base.c:1464:		return -EBADMSG;
> ./drivers/mtd/nand/nand_base.c:1739:		return -EBADMSG;
> ./drivers/mtd/nand/nand_ecc.c:192:	return -EBADMSG;
> 
> 
> and especially "./drivers/mtd/nand/nand_ecc.c", try to enable more debug
> functionality in barebox "make menuconfig" there exist some option to
> enable set some debug level in "Debugging  --->".
> 
> Or maybe try to instrument the code there to see if it's really some ecc
> failure.
> 

today I tested it with nandsim but I can't use a real barebox to read
the environment.

I used nandwrite and nanddump afterwards. Maybe you can run a easy test,
too. Read the image back after you ran nandwrite and extract the image
wit bareboxenv. Then we know the env is successful written and there
exists some other problem between linux<->barebox.

... and please keep the mailinglist in cc.

- Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
