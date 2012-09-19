Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEEpz-0006Wh-N9
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 07:36:48 +0000
Date: Wed, 19 Sep 2012 09:36:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120919073645.GY6180@pengutronix.de>
References: <1348005096-3419-1-git-send-email-franck.jullien@gmail.com>
 <20120919071225.GV6180@pengutronix.de>
 <CAJfOKBxCdWAO+WitmFdUwWYzBWoEPiNiy_wV+c0fe57daMSQBA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBxCdWAO+WitmFdUwWYzBWoEPiNiy_wV+c0fe57daMSQBA@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] [v3] filetype: Improve FAT detection
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Sep 19, 2012 at 09:23:19AM +0200, Franck Jullien wrote:
> 2012/9/19 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Tue, Sep 18, 2012 at 11:51:35PM +0200, Franck Jullien wrote:
> >> We may have some disk with MBR as a first sector. In this case, the
> >> current FAT check returns an error. However, the FAT sector exist and
> >> the MBR can tell us where it is.
> >>
> >> This patch add to file_name_detect_type function the ability to find
> >> the FAT boot sector on the first sector of the first partition in case
> >> it is not on sector 0.
> >>
> >> It also introduce is_fat_or_mbr to check if a buffer is a FAT boot
> >> or MBR sector
> >>
> >> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> >> ---
> >>  common/filetype.c  |   63 ++++++++++++++++++++++++++++++++++++++++++----------
> >>  include/filetype.h |    2 +
> >>  2 files changed, 53 insertions(+), 12 deletions(-)
> >>

[...]

> 
> I shouldn't write code late at night. Hopefully you are reading my
> code with attention :)

Don't worry, I think this happens to most of us ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
