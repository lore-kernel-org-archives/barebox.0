Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3F8T-0005x4-RD
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 07:14:12 +0000
Date: Mon, 11 Mar 2019 08:14:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190311071408.lcwhfu2nujdsxxso@pengutronix.de>
References: <20190305085752.3615-1-tomaz.solc@tablix.org>
 <20190305085752.3615-3-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190305085752.3615-3-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH v2 2/2] common: Kconfig: improve help text for DEBUG_LL
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Tue, Mar 05, 2019 at 09:57:52AM +0100, Tomaz Solc wrote:
> This adopts the help text used in Linux for the same setting. It
> clarifies that a build with DEBUG_LL enabled will only work on the
> system you chose the debug UART for.
> ---
>  common/Kconfig | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)

Applied this one, the other patches are superseeded by the patches I
have sent.

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
