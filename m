Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk2QO-0005O8-UK
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 07:49:18 +0000
Date: Thu, 17 Jan 2019 08:49:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117074914.hrwylhhfj6n3kmbu@pengutronix.de>
References: <20190114134807.9638-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190114134807.9638-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] images: check for use of obsolete pblx-*
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 14, 2019 at 02:48:08PM +0100, Ahmad Fatoum wrote:
> pblx-* has been removed in 5a1a5ed253 ("ARM: images: use piggydata")
> and using it (e.g. because a patchset was rebased) results in a non-obvious:
> 
> 	make[1]: *** No rule to make target 'images/*.pblx.*', \
> 	needed by 'images/barebox-*.img'.  Stop.
> 
> Avoid this by explicitly failing with an error message whenever pblx-y
> or pblx- has been defined.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Hey, it just triggered in master ;)

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
