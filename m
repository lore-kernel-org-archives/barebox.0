Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZefTz-0001Gs-Gt
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 08:32:56 +0000
Date: Wed, 23 Sep 2015 10:32:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150923083228.GR7858@pengutronix.de>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
 <20150923045305.GP7858@pengutronix.de>
 <20150923091116.9a0ebc423d32b06d4cb718f0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150923091116.9a0ebc423d32b06d4cb718f0@gmail.com>
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
Subject: Re: [RFC v2 00/10] MIPS: barebox as a first stage loader on the
 Black Swift board
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 23, 2015 at 09:11:16AM +0300, Antony Pavlov wrote:
> On Wed, 23 Sep 2015 06:53:05 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Antony,
> > 
> > Since it's RFC, should I apply this series?
> 
> No. I have splitted this series to 'ath-79 gpio' and 'ath-79 pbl' series.
> I have to test 'ath-79 pbl' series more carefully.
> Please apply today's 'ath-79 gpio' series (I have posted 'ath-79 gpio' series
> several hours ago).

Ok, applied.

> 
> Also please change both 'SPL' -> 'SBL' in this commit message from pengutronix/next branch:

Did that.

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
