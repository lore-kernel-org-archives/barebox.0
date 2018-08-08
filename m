Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnISM-0004yn-FW
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:00:32 +0000
Date: Wed, 8 Aug 2018 09:00:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808070018.y3hpzk5yoavpvxlv@pengutronix.de>
References: <20180725141811.25588-1-r.hieber@pengutronix.de>
 <20180725141811.25588-2-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180725141811.25588-2-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH 2/2] Documentation: fix code block and literal block
 highlighting
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2018 at 04:18:11PM +0200, Roland Hieber wrote:
> Use shell script highlighting where it is resonable, use console
> highlighting for transcripts, and fix some of the few cases where the
> syntax was broken, resulting in text not being rendered at all.
> 
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  Documentation/boards/imx.rst                  | 16 +++++++++----
>  .../boards/imx/Garz-Fricke-Vincell.rst        |  4 +++-
>  .../boards/imx/Phytec-phyCORE-i.MX31.rst      |  8 +++++--
>  Documentation/boards/imx/Wandboard.rst        |  5 +++-

This patch does not apply. In my tree the filenames are all different,
for example this one is Documentation/boards/imx/wandboard.rst (with a
lowercase 'w') in my tree.

However, applied 1/2.

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
