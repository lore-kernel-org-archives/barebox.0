Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x233.google.com ([2607:f8b0:400d:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZIdb-0006Pr-PY
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 12:04:08 +0000
Received: by mail-qg0-f51.google.com with SMTP id z107so120002qgd.24
 for <barebox@lists.infradead.org>; Wed, 01 Oct 2014 05:03:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACSabZ8wCRJAE2Oc2ZrQGQg5=X=mRJ9OF14tiC981=zWRSaTiw@mail.gmail.com>
References: <CACSabZ_nSs8L6yHn6Pz3quNvYQSDWiB0FWOYow1vyp9akRp0PA@mail.gmail.com>
 <20141001060247.GZ4992@pengutronix.de>
 <CACSabZ8wCRJAE2Oc2ZrQGQg5=X=mRJ9OF14tiC981=zWRSaTiw@mail.gmail.com>
Date: Wed, 1 Oct 2014 14:03:45 +0200
Message-ID: <CACSabZ99bES8dwb=LcxPGJY_bDTJEiQg-rNJihL6pYUxEwAJwQ@mail.gmail.com>
From: luigi origa <luigi.origa@gmail.com>
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
Subject: Re: Little bug
To: barebox@lists.infradead.org

Few days ago i got the files using git but in this moment i'm out so i
downloaded the file "barebox-2014.08.0.tar.bz2".

Looking inside i found the same error.

Open the file "barebox-2014.08.0\arch\arm\boards\friendlyarm-mini2440\mini2440.c"
and goto at line 84.

#ifdef CONFIG_MINI2440_VIDEO_A70
{
.name = "A70",
.refresh = 50,
.xres = 800,
.left_margin = 40,
.right_margin = 40,
.hsync_len = 48,
.yres = 480,
.upper_margin = 29,
.lower_margin = 3,
.vsync_len = 3,
.pixclock = 41848,
.sync = FB_SYNC_USE_PWREN | FB_SYNC_DE_HIGH_ACT,
.vmode = FB_VMODE_NONINTERLACED,
.flag = 0,    // <<<<<<<<<<<<<<<<<<<<<<<< mismatch
},
#endif
#ifdef CONFIG_MINI2440_VIDEO_SVGA
{
.name = "SVGA",
.refresh = 24,
.xres = 1024,
.left_margin = 1,
.right_margin = 2,
.hsync_len = 2,
.yres = 768,
.upper_margin = 200,
.lower_margin = 16,
.vsync_len = 16,
.pixclock = 40492,
.sync = FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT | FB_SYNC_DE_HIGH_ACT
                                  /* | FB_SYNC_SWAP_HW */ /* FIXME maybe */ ,
.vmode = FB_VMODE_NONINTERLACED,
.flag = 0,    // <<<<<<<<<<<<<<<<<<<<<<<< mismatch
},
#endif

Luigi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
