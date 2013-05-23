Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfVRL-0004it-6i
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:20:19 +0000
Date: Thu, 23 May 2013 15:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523131956.GP32299@pengutronix.de>
References: <017e01ce56f5$60066090$201321b0$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <017e01ce56f5$60066090$201321b0$@com>
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
Subject: Re: imx31 bcb
To: Rodney Antonisse <rodney@atedec.com>
Cc: barebox@lists.infradead.org

On Wed, May 22, 2013 at 04:04:56PM +0200, Rodney Antonisse wrote:
> Is there anybody out there who successfully used the bcb command in barebox?
> I just can't seem to get a valid bcb without using the Freescale kobs-ng
> tools (which is not my preferred way of preparing the nand).

Are we really talking about i.MX31 here? The bcb command is only
available on i.MX28

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
