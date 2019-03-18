Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5n2z-0004XZ-Cx
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 07:51:02 +0000
Date: Mon, 18 Mar 2019 08:50:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318075057.njsj3bes7wuteytc@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH 0/6] ZynqMP clock driver
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2019 at 11:20:49AM +0100, Michael Tretter wrote:
> Hello,
> 
> This series adds a clock driver for the ZynqMP. On ZynqMP, Barebox does not
> have direct access to the hardware but needs to go through the firmware to
> configure the clock tree.
> 
> Patches 1 and 2 update how firmware device tree nodes are populated. The
> behavior for this is copied from Linux.
> 
> Patch 3 provides the size of the return value from the ZynqMP firmware to
> firmware client drivers. This is necessary to use the "query" call.
> 
> Patch 4 adds the actual driver.
> 
> Patches 5 and 6 add the firmware to the device tree and connect various
> devices to the clock controller.
> 
> Michael

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
