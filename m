Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jogJA-00024g-Bj
 for barebox@lists.infradead.org; Fri, 26 Jun 2020 04:49:50 +0000
Date: Fri, 26 Jun 2020 06:49:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200626044945.GD19105@pengutronix.de>
References: <3682d87514f9619b819ad6fb082c23d1330fb014.camel@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3682d87514f9619b819ad6fb082c23d1330fb014.camel@diehl.com>
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
Subject: Re: Is it possible to pass extra device-tree include directory?
To: Denis Osterland-Heim <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Denis,

On Mon, Jun 22, 2020 at 07:42:11AM +0000, Denis Osterland-Heim wrote:
> Hi,
> 
> is it possible to pass extra device-tree include directory?
> For instance "${PTXDIST_PLATFORMCONFIGDIR}/dts" to have a out-of-tree dts only in one place?

I am not aware of any possibility doing this currently.

Regards,
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
