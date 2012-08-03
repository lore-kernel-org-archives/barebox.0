Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxHRK-0000Tj-UO
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 12:57:16 +0000
Date: Fri, 3 Aug 2012 14:57:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803125712.GN1451@pengutronix.de>
References: <20120802155145.GA28426@mail.gnudd.com>
 <20120802202202.GA22646@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120802202202.GA22646@mail.gnudd.com>
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
Subject: Re: changing environment at build time
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

Hi Alessandro,

On Thu, Aug 02, 2012 at 10:22:02PM +0200, Alessandro Rubini wrote:
> I wrote:
> > Since uncompressed environent areas are not supported any more, what is
> > the preferred method to change the default environment variables?
> 
> Actually, by removing compressing code the environment is uncompressed
> itself, but it looks like I have other problems that are not yet
> completely clear to me.
> 
> I'm still curious about how to change mac address at flash time, but
> the question is not urgent any more. Sorry for disturbing

You didn't disturb, this is a valid question (to which unfortunately I
do not have an answer)

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
