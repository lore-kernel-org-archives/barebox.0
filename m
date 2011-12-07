Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYD0I-0003KJ-8X
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 08:37:29 +0000
Date: Wed, 7 Dec 2011 09:37:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111207083708.GK27267@pengutronix.de>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 <87vcpueoqc.fsf@free.fr>
 <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
 <87r50idnni.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r50idnni.fsf@free.fr>
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
Subject: Re: FAT filesystem write and long names stability
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Tue, Dec 06, 2011 at 11:01:37AM +0100, Robert Jarzmik wrote:
> Franck JULLIEN <franck.jullien@gmail.com> writes:
> 
> > 2011/12/5 Robert Jarzmik <robert.jarzmik@free.fr>:
> >> Franck JULLIEN <franck.jullien@gmail.com> writes:
> >>
> >>> Do you have this patch applied to your working branch ? :
> >>>
> >>> fs/fat: Initialize local variable finfo
> >> Hi Franck,
> >>
> >> I cross-checked, and indeed I do not have this fix in my branch, while it sits
> >> in next branch. I'll rebase and make another try.
> Good guess, with that patch no bug :)
> 
> >> Do you by any chance tried the "write" part of FAT ?
> > Yes I did try it and as far as I can tell it works. I wrote some test
> > files to the SD then read it back on the PC and file were there....
> > I don't think I tried to create folders.
> Ah that's the node of the story.
> I made 2 tries :
>  (1) mount the SD card, create a folder "toto", umount
>      => when checked in my laptop, no new folder is created
>  (2) mount the SD card, create a folder "toto", and copy in it a file "foo.txt",
>  umount
>      => when checked in my laptop, both the directory and the file *are* there
> 
> So I suppose that creating a directory without any file within doesn't trigger
> the write on the device.

I had a look at it and the problem seems to be the fat caching layer I
introduced. It brings the fat on disk and in memory out of sync. This
layer has been necessary since without it the performance of the fat
driver is really poor. You could try the following branch. It reverts
the fat cache layer support and instead reimplements the block caching
layer so that it can handle the access patterns of the fat driver
better.
It would be great if you could give it some testing as obviously my test
patterns didn't reveal the 'create folder' bug you described.

Sascha

The following changes since commit 3bb6ee8dd530d01724ceb7c3d5bb68bd1898726a:

  mci: add the probe parameter if any error happened during the probe (2011-12-05 22:05:09 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git pu/block

Sascha Hauer (3):
      list: add list_last_entry function
      fat: revert fat caching mechanism
      block: reimplement caching

 common/block.c       |  274 ++++++++++++++++++++++++++++++++++++-------------
 fs/fat/ff.c          |   93 ++++-------------
 include/block.h      |   16 ++--
 include/linux/list.h |   11 ++
 4 files changed, 241 insertions(+), 153 deletions(-)
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
