Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4q6X-0006cf-P6
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 08:50:49 +0000
Date: Tue, 6 Mar 2012 09:50:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120306085032.GF3852@pengutronix.de>
References: <1330700647-27368-1-git-send-email-a.aring@phytec.de>
 <1330700647-27368-3-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330700647-27368-3-git-send-email-a.aring@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH/RFC 3/4] barebox-data: add barebox-data sections
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 02, 2012 at 04:04:06PM +0100, Alexander Aring wrote:
> Add barebox-data section in arm branch to get complete
> barebox regions in sdram regions tree.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
> It's right here to decrement the end adresses? Otherwise sdram
> regions will overlap.

Yes, that's correct.

> I only add this to arm, because I don't much about others
> architectures.
> So please help me to add a data region for others architectures.

It should be between _etext and __bss_start for all other architectures
aswell.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
