Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2Dc8-0006yV-LH
 for barebox@lists.infradead.org; Fri, 27 Nov 2015 07:38:41 +0000
Date: Fri, 27 Nov 2015 08:38:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151127073817.GN11966@pengutronix.de>
References: <1432740178-7799-1-git-send-email-mkl@pengutronix.de>
 <20151126080445.GA3245@lws-weitzel2@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151126080445.GA3245@lws-weitzel2@phytec.de>
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
Subject: Re: [PATCH] bootstate: add framework for redundant boot scenarios
To: Jan Remmet <J.Remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Thu, Nov 26, 2015 at 09:04:46AM +0100, Jan Remmet wrote:
> On Wed, May 27, 2015 at 05:22:58PM +0200, Marc Kleine-Budde wrote:
> > There are several use cases where a redundant Linux system is needed. The
> > barebox,bootstate framework provides the building blocks to model different
> > use cases without the need to start from the scratch over and over again.
> Hello,
> is there any reason why this wasn't applied? I tested it and it works fine.
> There is also a watchdog handling now in commands/boot.c so we can rework the
> bootchooser.

I think the best reason is that we just haven't done it yet... I just
merged Marcs state framework enhancements series which contains some
dependencies for the bootchooser. With this I think it's just a matter
of resending the latest version of the bootchooser and doing a final
review. Marc will probably resend it soon ;)

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
