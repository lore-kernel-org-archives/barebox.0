Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCP0P-00071F-Ss
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 07:08:38 +0000
Date: Thu, 22 Aug 2013 09:08:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130822070805.GX31036@pengutronix.de>
References: <1376989634-13909-1-git-send-email-s.hauer@pengutronix.de>
 <1376989634-13909-2-git-send-email-s.hauer@pengutronix.de>
 <20130821143245.GJ19197@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130821143245.GJ19197@ns203013.ovh.net>
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
Subject: Re: [SPAM] [PATCH 2/2] ARM: dts: imx53 qsb: remove wrong memory bank
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 21, 2013 at 04:32:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:07 Tue 20 Aug     , Sascha Hauer wrote:
> > The i.MX53 qsb has 1GiB of memory, but it's divided into two non
> > contigous banks. Remove the wrong memory node since it's overwritten
> > with the correct values during wuntime anyway.
> wuntime update is cool ;)

Yeah ;)

Fixed and applied.

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
