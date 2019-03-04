Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nVc-0002pv-NH
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:19:58 +0000
Date: Mon, 4 Mar 2019 14:19:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304131954.d7mzm7dmzpalfcdj@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
 <20190304113823.21535-2-s.hauer@pengutronix.de>
 <20190304115006.GA16532@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190304115006.GA16532@ravnborg.org>
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
Subject: Re: [PATCH 1/6] crc: import crc_itu_t() from kernel
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 04, 2019 at 12:50:06PM +0100, Sam Ravnborg wrote:
> On Mon, Mar 04, 2019 at 12:38:18PM +0100, Sascha Hauer wrote:
> > Out cyc_crc16() function is the same function as crc_itu_t() in the
> s/Out/barebox/

Should read "Our". Thanks, fixed.

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
