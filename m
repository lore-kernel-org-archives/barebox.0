Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9fUN-00056b-Ve
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 19:12:40 +0000
Date: Tue, 22 Jul 2014 21:12:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140722191215.GZ23235@pengutronix.de>
References: <assp.0279be7d12.1405959207-21839-1-git-send-email-matteo.fortini@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <assp.0279be7d12.1405959207-21839-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: Re: [PATCH V3] sama5d3x: fix HSMC MODE register offset and add
 TIMINGS register
To: Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 21, 2014 at 06:13:25PM +0200, Matteo Fortini wrote:
> As we discussed on the list, I used a single struct and two different config functions
> 
> [PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add TIMINGS
> [PATCH 2/2] sama5d3x: HSMC NAND initialize TIMINGS and import values

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
