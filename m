Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8Kyg-00025A-TV
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 07:24:36 +0000
Date: Tue, 17 Apr 2018 09:24:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180417072419.vqg5fmxmhdmrt3zq@pengutronix.de>
References: <20180416193157.16094-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180416193157.16094-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/19] i.MX bootsource bugfixes, refactoring and VFxxx
 support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 16, 2018 at 12:31:38PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This patchset is the result of my work on adding support for
> bootsource detection of VFxxx as well as fixing a number of
> bugs/unsupported corner cases in similar i.MX7 specific code.
> 
> NOTE: While VFxxx support is added in this series the code integrating
> it into the SoC initalization sequnce is not included. Patch for that
> is dependent on recently submitted "i.MX reset reason detection
> support" and I didn't want to intertwine two otherwise independent
> submissions.

Applied, thanks. Please send the missing vybrid patch so I can integrate
it here.

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
