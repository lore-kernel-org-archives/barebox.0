Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q85jU-00066D-21
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 07:03:53 +0000
Date: Fri, 8 Apr 2011 09:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110408070348.GT7285@pengutronix.de>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
	<20110306182606.GD16849@tarshish>
	<201103081637.47812.jbe@pengutronix.de>
	<201103091200.16339.jbe@pengutronix.de>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F8BB@SBS2008.wellsense.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68C006F8BB@SBS2008.wellsense.local>
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
Subject: Re: Fallback environment in barebox
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: Udi Ron <udi.ron@wellsense-tech.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sun, Mar 27, 2011 at 10:58:05AM +0200, Boaz Ben-David wrote:
> Hi,
> 
> A general question regarding environment but not limited to.
> If we have an environment partition on a NAND device which has 4 blocks
> of 512K, and a block becomes bad when writing to it, does barebox handle
> it and writes to the next block?

No barebox currently does not do this. You would have to do this
manually on the command line (which of course is not very convenient in
production).

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
