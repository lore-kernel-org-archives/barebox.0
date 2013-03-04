Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCQEc-00062c-FE
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 07:54:59 +0000
Date: Mon, 4 Mar 2013 08:54:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304075457.GK25672@pengutronix.de>
References: <1362068530-11332-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362068530-11332-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v2 0/2] add mxs application uart driver
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 28, 2013 at 05:22:08PM +0100, Marc Kleine-Budde wrote:
> Hello,
> 
> this series adds support for the mxs application uart driver. Lifted from TQS's
> u-boot patches.
> 
> regards,
> Marc
> 
> changes since v1:
> - fix comments (auart_serial_getc(), auart_serial_setbaudrate())
> - use auart_serial_setbaudrate
> 
> Both suggested by Sascha.

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
