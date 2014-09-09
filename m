Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRGpS-0003Lk-59
 for barebox@lists.infradead.org; Tue, 09 Sep 2014 08:31:10 +0000
Date: Tue, 9 Sep 2014 10:30:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140909083048.GT5352@pengutronix.de>
References: <1410168551-6588-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410168551-6588-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v4 0/5] firmware programming interface
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 08, 2014 at 11:29:06AM +0200, Steffen Trumtrar wrote:
> Hi!
> 
> Changes since v3:
> 	- minor clean up
> 	- add binding documentation in 5/5
> 	- rebase to v2014.09.0
> 
> The interface was tested on a Socfpga SoCkit board with v2014.09.0.
> 
> Regards,
> Steffen
> 
> 
> Juergen Beisert (2):
>   Add a Firmware programming framework
>   Firmware: provide a handler to program Altera FPGAs
> 
> Sascha Hauer (2):
>   DT: Add binding for Altera FPGAs in passive-serial mode
>   Firmware: socfpga: Add SoCFPGA FPGA program support
> 
> Steffen Trumtrar (1):
>   DT: Add binding for Altera SOCFPGA FPGA Manager

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
