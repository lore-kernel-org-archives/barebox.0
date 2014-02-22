Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHHK8-0002Lj-Fv
 for barebox@lists.infradead.org; Sat, 22 Feb 2014 18:29:17 +0000
Date: Sat, 22 Feb 2014 19:28:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140222182851.GL17250@pengutronix.de>
References: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
 <1392904169-786-3-git-send-email-s.hauer@pengutronix.de>
 <20140220151601.GA1171@x61s.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140220151601.GA1171@x61s.Speedport_W_921V_1_24_000>
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
Subject: Re: [PATCH 3/4] environment: Add function to load envfs from buffer
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alex,

On Thu, Feb 20, 2014 at 04:16:05PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> > -		printf("Open %s %s\n", filename, errno_str());
> > -		return -1;
> > +	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
> > +		printf("envfs: wrong magic\n");
> > +		return -EIO;
> 
> In this case only on big endians machines:
> if (super->magic != ENVFS_32(ENVFS_MAGIC))
> 
> is faster than:
> if (ENVFS_32(super->magic) != ENVFS_MAGIC)
> 
> It's save (I suppose) ca. 4 instruktions... so it doesn't matter
> to change it.

You're right that it's slightly more efficient. I think that it's more
obviously correct converting the 'foreign' value to host order, so I
think I'll keep my version.

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
