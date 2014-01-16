Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3mxe-0005eg-1T
 for barebox@lists.infradead.org; Thu, 16 Jan 2014 13:26:18 +0000
Date: Thu, 16 Jan 2014 14:25:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140116132556.GU16215@pengutronix.de>
References: <1389348776-6136-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389348776-6136-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] ARM: i.MX53: dts: move QSB pmic to own file
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 10, 2014 at 11:12:55AM +0100, Steffen Trumtrar wrote:
> There are two versions of the i.MX53 LOCO:
> 	- the MCIMX53-START board
> 	- the MCIMX53-START-R board
> 
> The MCIMX53-START-R has a mc34708 pmic and is otherwise the similar to the
> MCIMX53-START. To prepare for the START-R, move all common nodes to a new
> 	imx53-qsb-common.dtsi
> and remove everything but the board name and pmic from the imx53-qsb.dts.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

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
