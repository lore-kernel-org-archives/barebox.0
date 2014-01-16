Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3n2C-0005q2-7d
 for barebox@lists.infradead.org; Thu, 16 Jan 2014 13:31:00 +0000
Date: Thu, 16 Jan 2014 14:30:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140116133037.GW16215@pengutronix.de>
References: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/5] ppc: Import latest U-Boot code
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Wed, Jan 15, 2014 at 11:47:39AM +0000, Renaud Barbier wrote:
> Upgrade the mpc85xx startup code to the latest U-Boot version and
> add MMUv2 page size definitions for future CPUs support.
> 
> Re-factor the startup code relocation code so like U-Boot it
> uses the build-time bss section address from a unique linker
> script.
> 
> Tested on ppc DA923RC and P2020RDB.

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
