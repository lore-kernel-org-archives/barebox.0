Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNee-0005KG-Sp
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:59:34 +0000
Date: Tue, 28 Jan 2020 10:59:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200128095929.tplg5if4mdkihheq@pengutronix.de>
References: <20200127074606.17254-1-ceggers@arri.de>
 <20200128093319.riamlkm6ihgoh7c2@pengutronix.de>
 <6607783.M6Blm0jaCt@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6607783.M6Blm0jaCt@n95hx1g2>
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
Subject: Re: [SPAM:54%] Re: [PATCH] barebox_banner: switch to pr_notice
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Tue, Jan 28, 2020 at 10:39:10AM +0100, Christian Eggers wrote:
> Am Dienstag, 28. Januar 2020, 10:33:19 CET schrieb Sascha Hauer:
> > On Mon, Jan 27, 2020 at 08:46:06AM +0100, Christian Eggers wrote:
> > > The banner should already be printed, if CONFIG_COMPILE_LOGLEVEL is set
> > > to 5 (notice). If printing of the banner is not desired, CONFIG_BANNER
> > > can be disabled.
> >
> > With that argument you could put it in any loglevel you want to.
> that's right. Do you like to insert the highest possible log level for this
> particular case?

In that case we would get a big red "EMERG: barebox 2020..." message. I
just see that this already starts with pr_notice which now with this
patch prints "NOTICE: barebox 2020...". Hm, I don't think this is what
we want.
You probably have CONFIG_CONSOLE_ALLOW_COLOR disabled so you don't see
that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
