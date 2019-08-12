Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4xO-00007u-Oi
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 07:41:32 +0000
Date: Mon, 12 Aug 2019 09:41:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190812074121.zn5h3yr4rja32q3q@pengutronix.de>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
 <20181218071943.2560-10-antonynpavlov@gmail.com>
 <20190811125905.6fc213ce18ee414156f482ab@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811125905.6fc213ce18ee414156f482ab@gmail.com>
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
Subject: Re: [PATCH v3 09/10] scripts: add nmon-loader
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Sun, Aug 11, 2019 at 12:59:05PM +0300, Antony Pavlov wrote:
> On Tue, 18 Dec 2018 10:19:42 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi Sascha!
> 
> It looks like this patch is missed in the master branch.
> Please apply the patch!

I was about to apply it when I just saw that neither the commit message
nor a comment in the script give a hint what this all about. Could you
add something?

> > +if {$argc != 3} {
> > +    puts "Usage:"
> > +    puts "    nmon-loader.expect <file> <device> <speed>"

The script is named just nmon-loader, not nmon-loader.expect.

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
