Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13ff-0003yZ-V4
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 07:07:42 +0000
Date: Fri, 23 Aug 2019 09:07:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823070736.mx3z4hkbhaoezvtg@pengutronix.de>
References: <20190731102143.20503-1-a.fatoum@pengutronix.de>
 <20190731102143.20503-3-a.fatoum@pengutronix.de>
 <c306a487-96b7-dee0-8ade-6e896967057d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c306a487-96b7-dee0-8ade-6e896967057d@pengutronix.de>
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
Subject: Re: [PATCH v2 3/3] console: fix out-of-bounds read in dputc(/dev/*,
 ...)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>

On Thu, Aug 22, 2019 at 09:06:09AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 7/31/19 12:21 PM, Ahmad Fatoum wrote:
> > Trying to output a single character via
> > 	echo -a /dev/serial0-1
> > currently results in garbage output after the newline, because console.c's
> > fops_write discards the buffer length and passes the buffer to
> > (struct cdev)::puts which only handles NUL-terminated strings.
> > 
> > Fix this by amending (struct cdev)::puts with a new nbytes parameter,
> > which is correctly propagated.
> 
> Can this one be merged? It doesn;t depend on the other two patches.

Ok. Can you rebase it? Without the others it doesn't seem to apply.

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
