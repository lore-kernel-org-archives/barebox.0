Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1D6-0001e3-HH
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:58:17 +0000
Date: Tue, 19 Nov 2019 11:58:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191119105814.e7gwxsmrhn6hcnpv@pengutronix.de>
References: <20191115075257.24079-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115075257.24079-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 1/5] ARM: psci: factor out smc command into commands/
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Fri, Nov 15, 2019 at 08:52:53AM +0100, Ahmad Fatoum wrote:
> So far, the smc command was only usable when barebox also provides the
> secure monitor. It's useful to have it when barebox is a PSCI consumer
> as well to test whether the secure monitor works.
> Factor out the code into commands/ in preparation to do so.
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/cpu/psci.c | 105 -------------------------------------------
>  commands/Kconfig    |  15 +++++++
>  commands/Makefile   |   1 +
>  commands/smc.c      | 107 ++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 123 insertions(+), 105 deletions(-)
>  create mode 100644 commands/smc.c

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
