Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUqc-0003Ta-1j
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 12:00:39 +0000
Date: Tue, 12 Nov 2019 13:00:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
References: <20191111095607.1813-1-ahmad@a3f.at>
 <20191111095607.1813-2-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111095607.1813-2-ahmad@a3f.at>
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
Subject: Re: [PATCH 1/1] net: designware: eqos: stop DMA on halt
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Nov 11, 2019 at 10:56:07AM +0100, Ahmad Fatoum wrote:
> designware_eqos.c contains an eqos_stop implementation to stop the NIC
> when halting the interface. Unfortunately it wasn't used leading to
> memory corruption on boot, possibly due to DMA. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---

Applied to master, thanks

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
