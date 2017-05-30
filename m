Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFaDp-0005U3-2O
 for barebox@lists.infradead.org; Tue, 30 May 2017 06:01:39 +0000
Date: Tue, 30 May 2017 08:01:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170530060109.6ifogzeaamjcttyk@pengutronix.de>
References: <1496050483.2610.35.camel@haslerrail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1496050483.2610.35.camel@haslerrail.com>
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
Subject: Re: Barebox State stored in DOS partition
To: Joye Laurent <Laurent.Joye@haslerrail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Laurent,

On Mon, May 29, 2017 at 09:34:43AM +0000, Joye Laurent wrote:
> 
> I'm trying to save my state variable set inside a DOS partition.

Sorry, state as files inside partitions is currently not supported. Only
plain partitions are supported.

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
