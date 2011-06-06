Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTUBi-0004qk-0V
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 07:25:27 +0000
Date: Mon, 6 Jun 2011 09:25:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110606072522.GW23771@pengutronix.de>
References: <4DEB6D69.5030003@wellsense-tech.com>
	<201106051411.55383.jbe@pengutronix.de>
	<4DEB78D0.6070408@wellsense-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4DEB78D0.6070408@wellsense-tech.com>
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
Subject: Re: protecting env partitions from bad blocks
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Boaz,

Please do not top-post.

On Sun, Jun 05, 2011 at 03:38:40PM +0300, Boaz Ben-David wrote:
> Hi Juergen,
> 
> Thanks for your reply.
> Please correct me if I'm wrong here, but from what you are saying,
> if my flash has a block
> size of 512KB (thats the erase size also) and I define the env
> partition to have say 5 blocks with one that is bad
> I'm covered if I do my read/write operations using a bb device.
> 
> Also, say a block gets wear out after extended use, will it be
> marked bad after a failed write operation for example?

barebox currently does not actively mark a block as bad. You can only
do it manually from the command line.
However, it correctly handles bad blocks once they are there, so
if barebox starts and can't read its environment, you can mark
a block bad on the command line. After a 'saveenv' the bad block
gets skipped during write (and also during reading next time).

This is a lack of features, so patches welcome.

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
