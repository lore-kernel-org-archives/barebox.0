Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YD740-00036m-Ru
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 07:47:57 +0000
Date: Mon, 19 Jan 2015 08:47:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150119074735.GN18220@pengutronix.de>
References: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/3] common: console_console: put functions under correct
 ifdef
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Jan 18, 2015 at 09:57:02PM +0100, Lucas Stach wrote:
> So they aren't build when no console support is selected.
> 
> Fixes:
> In function `console_get_by_dev': undefined reference to `console_list'
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied all, thanks

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
