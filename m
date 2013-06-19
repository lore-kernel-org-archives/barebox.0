Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpBwU-00024M-WF
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 06:32:31 +0000
Message-ID: <1371623568.4168.71.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 19 Jun 2013 08:32:48 +0200
In-Reply-To: <1371621793.699357681@f89.mail.ru>
References: <1371559850-21867-1-git-send-email-jlu@pengutronix.de>
 <20130619053827.GF32299@pengutronix.de> <1371621793.699357681@f89.mail.ru>
Mime-Version: 1.0
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
Subject: Re: Re[2]: [PATCH] devfs-core: introduce devfs_append_partition
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, 2013-06-19 at 10:03 +0400, Alexander Shiyan wrote:
> > On Tue, Jun 18, 2013 at 02:50:50PM +0200, Jan Luebbe wrote:
> > > This simplifies board code for partition setup by keeping track of the
> > > offset.
> > > 
> > > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> > 
> > Good idea. There seem to be some bugs in this area. I'm fine with the
> > patch when some users are converted to this.
> 
> But lets make static variable "offset", setup it in devfs_add_partition and
> just add "size" in the devfs_append_partition.
> Otherwise I do not see any difference between "add" and "append".

I'd prefer to have the state where it's obvious to the caller and not in
a static variable somewhere else. :)

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
