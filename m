Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqLH-0008IG-3W
 for barebox@lists.infradead.org; Tue, 05 May 2020 05:42:08 +0000
Date: Tue, 5 May 2020 07:42:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200505054205.GV5877@pengutronix.de>
References: <20200430044252.762041-1-masahiroy@kernel.org>
 <CAK7LNATNtaynZmZ4bo6AJS4sRvXqmz8KOEiWXDmyxUTFZ+xJPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATNtaynZmZ4bo6AJS4sRvXqmz8KOEiWXDmyxUTFZ+xJPg@mail.gmail.com>
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
Subject: Re: [PATCH] kbuild: add $(always-y) to 'targets'
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 04, 2020 at 08:27:43PM +0900, Masahiro Yamada wrote:
> On Thu, Apr 30, 2020 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > I missed to sync this line in commit 421108c51da4 ("kbuild: rename
> > hostprogs-y/always to hostprogs/always-y").
> >
> > Since then, the files in always(-y) are needlessly rebuilt.
> 
> This line is not precise because the files in $(always) are fine.
> If it is not too late, could you please reword this line as follows ?
> 
> 
> Since then, the files in $(always-y) are needlessly rebuilt.

Sorry, it's too late. I merged this as a fix to master.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
