Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O2K5B-0000Qd-Ns
	for barebox@lists.infradead.org; Thu, 15 Apr 2010 08:05:55 +0000
Date: Thu, 15 Apr 2010 10:05:46 +0200
From: 'Sascha Hauer' <s.hauer@pengutronix.de>
Message-ID: <20100415080546.GN7882@pengutronix.de>
References: <001301cadbab$43091640$c91b42c0$@cpdesign.com.au>
	<20100414083707.GJ7882@pengutronix.de>
	<003401cadc50$ba662070$2f326150$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <003401cadc50$ba662070$2f326150$@cpdesign.com.au>
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
Subject: Re: booting uImage for mx35 3stack
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Thu, Apr 15, 2010 at 02:04:16PM +1000, Marc Reilly wrote:
> Hi Sascha,
> 
> Thanks for all your help, and speedy responses.
> 
> > > Nothing happens after "done, booting the kernel" (boot snippet at end
> > > of
> > > email)
> > 
> > Newer kernels have earlyprintk support that could be of help here.
> > Please apply commit-id 93fd03a8c6728b58879f8af20ffd55d9c32a778b to your
> > kernel and add 'earlyprintk' to your kernel command line.
> 
> Great tip. It shows the kernel is starting ok and getting stuck just after
> irqs are enabled. 
> I'm still a bit baffled as to why this only happens with barebox.

Sounds somewhat familiar. I have just tested 2.6.31 and
2.6.34-rc-something on my board, both working fine.
Maybe this has something to do with the clocks. You could check the
register values of the CCM module in barebox and U-Boot
(md 0x53f80000+0x80).

Also note this mail:

http://lists.infradead.org/pipermail/linux-arm-kernel/2010-April/012691.html

I suspect a bug in the kernel there which is still present.

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
