Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr9x-0000vh-Me
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:01:43 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 11:00:32 +0200
References: <20120513090917.GX27341@pengutronix.de>
 <201205141003.02064.jbe@pengutronix.de> <4FB0C830.7010701@gmail.com>
In-Reply-To: <4FB0C830.7010701@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141100.32982.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> On 14.05.2012 14:03, Juergen Beisert wrote:
> > You have to touch all S3C24xx based board files just to rename these
> > files from "<socname>-<function>.h" to "<function>-<socname>.h"?
>
> Not exactly so. Yes, I have to rename file - to make space for another
> one. Having just one file with lots of #ifdefs for two very different
> architectures seems to be worse than this.

Did you really read my answer?

Here again:

 ...just to rename these files from "<socname>-<function>.h"
 to "<function>-<socname>.h"

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
