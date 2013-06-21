Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpwbQ-0003nd-Pu
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 08:21:53 +0000
Date: Fri, 21 Jun 2013 10:21:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130621082130.GC32299@pengutronix.de>
References: <1371675528-6380-1-git-send-email-s.hauer@pengutronix.de>
 <1371726931.3466.3.camel@lws-weitzel>
 <20130620152428.GU32299@pengutronix.de>
 <1371798211.2957.6.camel@lws-weitzel>
 <20130621071038.GA32299@pengutronix.de>
 <1371800801.2957.12.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371800801.2957.12.camel@lws-weitzel>
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
Subject: Re: [PATCH] read_file: Make it work on tftp servers which do not
 pass size
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 21, 2013 at 09:46:41AM +0200, Jan Weitzel wrote:
> Am Freitag, den 21.06.2013, 09:10 +0200 schrieb Sascha Hauer:
> > On Fri, Jun 21, 2013 at 09:03:31AM +0200, Jan Weitzel wrote:
> > > Am Donnerstag, den 20.06.2013, 17:24 +0200 schrieb Sascha Hauer:
> > > > 
> > > > How do you want to do that? You would have to transfer the whole file
> > > > first and see how big it is. That works for small files we expect to fit
> > > > into memory like the ones read_file normally is called with. If you want
> > > > to transfer a rootfs image it might happen that it's bigger than the
> > > > available memory.
> > > That's a good point. I didn't see a way for big files. But setting the
> > > st_size to FILESIZE_MAX can cause trouble in other commands. ubiformat
> > > only blames that is doesn't fit to eraseblock boundaries.
> > 
> > Have you tried it?
> Yes, with a v2013.03.0 based barebox. Without the patch ubiformat -f
> erase the ubi volume and "writes" a image of size 0.

I assume it does so even when the image is not of size 0, right?
That sounds broken.

Aynway, you are beginning to convince me that 0 might be a better
choice.

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
