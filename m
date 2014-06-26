Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0Bjc-0000UH-BS
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 15:37:16 +0000
Date: Thu, 26 Jun 2014 17:36:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626153648.GB14257@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
 <20140626142827.ade227cb4fa1909f4267a9c0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140626142827.ade227cb4fa1909f4267a9c0@gmail.com>
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
Subject: Re: New Documentation for barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 02:28:27PM +0400, Antony Pavlov wrote:
> On Thu, 26 Jun 2014 10:51:31 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi all,
> > 
> > I am happy to announce new documentation for barebox.
> 
> Aghhhh!
> 
> All my mips documentation have gone away!

Sorry, that was not intentional. I won't merge the branch until the mips
documentation is back.

> 
> I'm ready to convert old dox-files to new rst-files by myself,
> but I need some recomendations.
> 
> Could I put rst mips files into Documentation/boards/mips?

Sure, whatever suits best for you. For i.MX it makes sense to have some
i.MX document describing the common i.MX stuff. I don't know enough
about MIPS to know if it's best to have SoC type or generic MIPS docs.

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
