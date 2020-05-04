Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVTuF-0002cA-VG
 for barebox@lists.infradead.org; Mon, 04 May 2020 05:44:45 +0000
Date: Mon, 4 May 2020 07:44:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504054441.GJ5877@pengutronix.de>
References: <20200429105803.57863-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429105803.57863-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v3] of: refactor of_read_number for clarity
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2020 at 12:58:04PM +0200, Ahmad Fatoum wrote:
> While the code is correct, less sophisticated static analyzers (and
> users operating them..) trip over it, because they don't see that
> the be32_to_cpu argument is evaluated multiple times only if it's
> constant. Moving the side effect out:
> 
> - Lets us avoid the false positive
> - Aligns us with what Linux does
> - Makes the code IMO a bit clearer
> 
> Do so.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

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
