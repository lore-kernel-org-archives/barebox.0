Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBTcK-0007M5-Mn
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 17:19:33 +0000
Date: Fri, 1 Mar 2013 18:19:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130301171928.GS1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-3-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362129773-4579-3-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 2/7] tegra: remove debug_ll
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 01, 2013 at 10:22:48AM +0100, Lucas Stach wrote:
> Without some kind of initialisation those LL debug functions are mostly
> useless. We might want them when booting from the AVP, but for this to
> work they need some serious rework, so move them out of the way for now.

All debug_ll functions also from other architectures assume the uarts to
be initialized already, so as Jean-Christophe mentioned, they are for
second stage or JTAG where the debugger startup script initialized the
uarts

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
