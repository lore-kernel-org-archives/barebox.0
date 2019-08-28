Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vbJ-0006dz-QY
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:54:57 +0000
Date: Wed, 28 Aug 2019 12:54:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190828105452.jjedxfuez5sig6hu@pengutronix.de>
References: <20190823092531.6673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823092531.6673-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3] console: fix out-of-bounds read in dputc(/dev/*, ...)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>

On Fri, Aug 23, 2019 at 11:25:31AM +0200, Ahmad Fatoum wrote:
> Trying to output a single character via
> 	echo -a /dev/serial0-1
> currently results in garbage output after the newline, because console.c's
> fops_write discards the buffer length and passes the buffer to
> (struct cdev)::puts which only handles NUL-terminated strings.
> 
> Fix this by amending (struct cdev)::puts with a new nbytes parameter,
> which is correctly propagated. All this functions now return at most the
> nbytes parameter they were passed in. This fixes __console_puts, which
> used to count new lines twice in its return value. 
> 
> Fixes: b4f55fcf35 ("console: expose consoles in devfs")
> Cc: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

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
