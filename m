Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTwiQ-0000wi-J3
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 15:29:55 +0000
Date: Thu, 1 Nov 2012 16:29:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121101152952.GV1641@pengutronix.de>
References: <20121030205459.GE29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121030205459.GE29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/8 v3] pm9g45/pm9253/pm9261: add 1-wire support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 30, 2012 at 09:54:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	v3: comment
> 
> 	v2: fixup and add comment
> 
> 	add 1-wire support for:
> 	 - pm9g45
> 	 - pm9263
> 	 - pm9261
> 
> 	use the 1-wire uniq id to generate a local mac address
> 	The OUI will be 'ron' => 72:6F:6E
> 
> 	The patch series go on the top of the 1-wire support v2
> 
> The following changes since commit acaa716bce8cd1373cb5dabff54332fb1da7355b:
> 
>   1-wire: add ds2433 support (2012-10-29 04:46:21 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/ronetix_w1
> 
> for you to fetch changes up to 7fb0cb2ce2f7800341ab8de711dccbd2c4753c84:
> 
>   pm9261: use w1 serial number to generate local mac address (2012-10-30 13:44:54 +0800)

Applied, thanks.

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
