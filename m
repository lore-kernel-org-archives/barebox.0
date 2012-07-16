Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqfuF-00010X-V9
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:39:50 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 16 Jul 2012 09:37:46 +0200
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
 <1342206070-29698-3-git-send-email-jbe@pengutronix.de>
 <20120716072131.GX30009@pengutronix.de>
In-Reply-To: <20120716072131.GX30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207160937.46303.jbe@pengutronix.de>
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
Subject: Re: [PATCH 02/18] ARM/Samsung: unify device registration for the
 S3C24XX SoCs
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Jul 13, 2012 at 09:00:54PM +0200, Juergen Beisert wrote:
> > Barebox crashes since it has trouble with a resource size of 0. Most of
> > the S3C24XX based platforms crashes at runtime and can't use devices with
> > resource sizes of 0 anymore. This patch fix it by unifying the device
> > registration for all current Barebox's S3C24XX based platforms.
> >
> > - A9M2410 and A9M2440 compile time tested only.
> > - Mini2440 also runtime tested.
>
> So this is stuff for master, right?

Hmm, yes. :)

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
