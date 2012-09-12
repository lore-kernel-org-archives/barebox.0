Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBhse-0006mO-BE
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 08:01:06 +0000
Date: Wed, 12 Sep 2012 10:01:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912080101.GM6180@pengutronix.de>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
 <1347127542-11981-11-git-send-email-plagnioj@jcrosoft.com>
 <20120912073904.GK6180@pengutronix.de>
 <87fw6nu1fr.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fw6nu1fr.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 11/11] png: add picoPNG lib support
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 09:48:08AM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  >> +config PICOPNG
>  >> +	bool "picoPNG"
>  >> +	help
>  >> +	  Support only RGBA PNG8
> 
>  Sascha> 	  This PNG libraray only supports RGBA PNG8 but is much smaller
>  Sascha> 	  in binary size then lodepng.
> 
> s/libraray/library/
> 
> s/then/than/

even better ;)

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
