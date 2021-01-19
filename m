Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1npO-0002JK-Ov
 for barebox@lists.infradead.org; Tue, 19 Jan 2021 10:01:35 +0000
Date: Tue, 19 Jan 2021 11:01:33 +0100
Message-ID: <20210119100133.GV19063@pengutronix.de>
References: <20210118202922.3581-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118202922.3581-1-m.felsch@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/6] ARM: boards: kontron-samx6i: fix memory detection
 helper
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 18, 2021 at 09:29:17PM +0100, Marco Felsch wrote:
> According the vendor u-boot version [1] the version pin is not involved
> in the memory size detection algorithm. So drop the usage here.
> 
> Also fix the id0 gpio request. Instead of requesting GPIO6_6 we need to
> request GPIO6_7.
> 
> Last we need to fix the size for the solo/duallite modules. Those
> modules are populated with at least 256M of RAM according [1].
> 
> I fixed also the alignment while on it.
> 
> [1] https://github.com/kontron/u-boot-smarc-samx7/blob/master/board/kontron/amx6/amx6.c
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/boards/kontron-samx6i/mem.c | 24 ++++++------------------
>  1 file changed, 6 insertions(+), 18 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
