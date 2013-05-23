Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfQMT-0003gZ-3B
 for barebox@lists.infradead.org; Thu, 23 May 2013 07:54:58 +0000
Date: Thu, 23 May 2013 09:54:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523075435.GB32299@pengutronix.de>
References: <201305171018.39539.jbe@pengutronix.de>
 <20130521065718.GK32299@pengutronix.de>
 <201305211044.12956.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201305211044.12956.jbe@pengutronix.de>
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
Subject: Re: [PATCH] MXS/i.MX23: add boot source detection
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 21, 2013 at 10:44:12AM +0200, Juergen Beisert wrote:
> The boot source for the i.MX23 is configured via a few GPIOs, which are later
> be used for different purposes (like LCD data for example). The SoC internal
> ROM reads these GPIOs and uses the selected boot source.
> 
> For various reasons the boot source is also of interest when Barebox is running.
> This detection approach reads again the GPIOs. It switches temporarily the pins
> to act as GPIOs and input, reads their settings, and switches back to their
> previous functions.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

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
