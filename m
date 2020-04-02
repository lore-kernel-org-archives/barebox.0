Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtcs-00037K-U6
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 06:46:56 +0000
Date: Thu, 2 Apr 2020 08:46:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200402064649.GC29627@pengutronix.de>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
 <20200331184722.22707-2-andrew.smirnov@gmail.com>
 <20200401052034.GS27288@pengutronix.de>
 <CAHQ1cqGzUFW+Khwgkzb_OCasOKKv1CoqrQHa-Mf+PDX4NuZTYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGzUFW+Khwgkzb_OCasOKKv1CoqrQHa-Mf+PDX4NuZTYQ@mail.gmail.com>
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
Subject: Re: [PATCH 01/23] ARM: zii-common: Gate rdu_i210_invm() call with
 CONFIG_PCI_IMX6
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 01, 2020 at 12:47:18PM -0700, Andrey Smirnov wrote:
> On Tue, Mar 31, 2020 at 10:20 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Tue, Mar 31, 2020 at 11:47:00AM -0700, Andrey Smirnov wrote:
> > > There's no reason to have rdu_i210_invm() inicalli if CONFIG_PCI_IMX6
> > > is not selected. Add appropriate ifdef to handle that.
> >
> > Either this is the wrong way round...
> >
> 
> Hmm, not sure I understand what you mean. I210 card and its INVM won't
> appear if PCIe is not enabled, that's why there's no reason to have
> rdu_i210_invm() initcall if CONFIG_PCI_IMX6 is _not_ selected. Did I
> miss something?

Erm, no. It was me who missed something, I had a knot in my brain :-|

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
