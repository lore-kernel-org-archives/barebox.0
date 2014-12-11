Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyyK0-0004Dl-AE
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 07:38:01 +0000
Date: Thu, 11 Dec 2014 08:37:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141211073738.GC30369@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
 <1418123146-13235-4-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418123146-13235-4-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 4/5] fdt: don't strip const qualifier
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 09, 2014 at 12:05:45PM +0100, Lucas Stach wrote:
> Fixes:
> warning: assignment discards 'const' qualifier from pointer target type
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied this one to master for now.

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
