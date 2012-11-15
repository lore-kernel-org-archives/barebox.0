Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYu4u-00033o-Md
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:41:37 +0000
Date: Thu, 15 Nov 2012 08:41:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115074134.GS10369@pengutronix.de>
References: <20121115031146.GA31296@greatfirst.com>
 <CAA4bVAFqCPkRGrz1oENQ3s9k99o=wPVq1RWSdiRJjeY1Mgkt3g@mail.gmail.com>
 <CAA4bVAEhhLxXfzNZ_mBP_=W-TNOHOkEnwF=vgBMBy16ezd2_NA@mail.gmail.com>
 <20121115063011.GB31296@greatfirst.com>
 <20121115070755.GC31296@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121115070755.GC31296@greatfirst.com>
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
Subject: Re: how to download a file to specified mem location using tftp
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox <barebox@lists.infradead.org>

On Thu, Nov 15, 2012 at 03:07:55PM +0800, zzs wrote:
> > So how to mount tftp to /mnt/tftp
> >
> Greped barebox code, Now I SEE
> 
> mkdir /mnt/tftp -p && mount -t tftp $eth0.serverip /mnt/tftP

Additionally you'll find this:

mkdir /mnt/tftp
automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'

which will automount it for you once you need it.

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
