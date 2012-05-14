Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr5m-0006Dx-TL
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:57:26 +0000
Date: Mon, 14 May 2012 10:57:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514085716.GC30400@pengutronix.de>
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
 <201205141003.02064.jbe@pengutronix.de>
 <4FB0C830.7010701@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FB0C830.7010701@gmail.com>
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
Subject: Re: [PATCH 2/9] Fine split S3C arch dependencies from generic code
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Mon, May 14, 2012 at 02:54:08PM +0600, Alexey Galakhov wrote:
> On 14.05.2012 14:03, Juergen Beisert wrote:
> 
> > You have to touch all S3C24xx based board files just to rename these files 
> > from "<socname>-<function>.h" to "<function>-<socname>.h"?
> > 
> > jbe
> > 
> 
> Not exactly so. Yes, I have to rename file - to make space for another
> one.

Hm? The SoC name already is in the filename, so there *is* space for a
new file.

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
