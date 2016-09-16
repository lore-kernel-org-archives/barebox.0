Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkniF-0004n8-6v
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 07:37:31 +0000
Date: Fri, 16 Sep 2016 09:37:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160916073709.i6jtdyexkl3ybdhy@pengutronix.de>
References: <1473675656-23309-1-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473675656-23309-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH] commands: exit on invalid option
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 12, 2016 at 12:20:56PM +0200, Enrico Jorns wrote:
> Barebox commands should not perform any action and return 0 if an
> invalid parameter was given. This might cause undetected unintended
> behvaior when calling commands with wrong options, either manually or
> from a script.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>

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
