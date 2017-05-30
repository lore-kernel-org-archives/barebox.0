Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFaMx-0000B5-3l
 for barebox@lists.infradead.org; Tue, 30 May 2017 06:11:04 +0000
Date: Tue, 30 May 2017 08:10:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170530061041.3tdgj4vzhaebl5wb@pengutronix.de>
References: <20170524073627.dqfb7v7td3utbcos@pengutronix.de>
 <c7e87a03-b1a7-209c-12a0-f984b2553754@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7e87a03-b1a7-209c-12a0-f984b2553754@mev.co.uk>
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
Subject: Re: Stable branches resurrected
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi Ian,

On Wed, May 24, 2017 at 04:13:13PM +0100, Ian Abbott wrote:
> On 24/05/17 08:36, Sascha Hauer wrote:
> > Hi All,
> > 
> > v2017.05.0 contains some nasty bugs. This led me to the idea to
> > resurrect the stable branches. I created stable/v2017.05 and also
> > released v2017.05.1. Please update to this one if you are using
> > v2017.05.0.
> > 
> > Experience shows that very few people semm to test the master branch,
> > but that I get bug reports relatively fast after a release. I'll try and
> > collect at least the bugfixes for the current release in a stable
> > branch. I'm not yet sure how long I maintain each stable branch though,
> > probably not too long to keep people motivated to update ;)
> > 
> > If you want to have a patch in a stable branch, please tell me so to
> > keep me reminded that we have these branches.
> 
> The only one I can think of at the moment for the 2017.05 series is commit
> eaf884ba55def055fd81ff3291a1a534fc8bd8f9 ("nv: Fix setting of
> nv.dev.<devname>.<param> variables").

Thanks for noting. Took this one for stable/v2017.05 aswell.

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
