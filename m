Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrZ2p-0001fl-JT
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 19:36:52 +0000
Date: Tue, 25 Jun 2013 21:36:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130625193627.GK32299@pengutronix.de>
References: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] MIPS: pbl: add nmon MIPS nano-monitor
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 24, 2013 at 11:10:09PM +0400, Antony Pavlov wrote:
> nmon is a tiny monitor (<1200 bytes) program
> for the MIPS processors.
> It can operate with NO working RAM at all!
> It uses only the processor registers and NS16550-compatible
> UART port for operation, so it can be used for a memory
> controller setup code debugging.
> 
> With no changes nmon should work on different MIPS
> processors as it uses only common MIPS-I instructions.
> 
> [PATCH 1/3] MIPS: pbl: add nmon MIPS nano-monitor
> [PATCH 2/3] MIPS: qemu-malta: rework debug_ll.h
> [PATCH 3/3] MIPS: qemu-malta: add nmon

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
