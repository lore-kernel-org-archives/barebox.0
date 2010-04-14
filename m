Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O1y5u-00055z-HL
	for barebox@lists.infradead.org; Wed, 14 Apr 2010 08:37:11 +0000
Date: Wed, 14 Apr 2010 10:37:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100414083707.GJ7882@pengutronix.de>
References: <001301cadbab$43091640$c91b42c0$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001301cadbab$43091640$c91b42c0$@cpdesign.com.au>
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

Hi Marc,

On Wed, Apr 14, 2010 at 06:19:49PM +1000, Marc Reilly wrote:
> Hi All,
> 
>  
> 
> I'm not having much luck booting a kernel on the mx35 3stack!
> 
> Nothing happens after "done, booting the kernel" (boot snippet at end of
> email)

Newer kernels have earlyprintk support that could be of help here.
Please apply commit-id 93fd03a8c6728b58879f8af20ffd55d9c32a778b to your
kernel and add 'earlyprintk' to your kernel command line.

Do you have MMU enabled? If yes you could try disabling it

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
