Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQDAz-0001QN-1B
 for barebox@lists.infradead.org; Thu, 11 Apr 2013 08:48:13 +0000
Date: Thu, 11 Apr 2013 10:48:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130411084811.GM1906@pengutronix.de>
References: <1365544099-1336-1-git-send-email-vicencb@gmail.com>
 <1365544099-1336-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365544099-1336-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] OMAP4: add command to select next boot device priority
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 09, 2013 at 11:48:19PM +0200, Vicente Bergas wrote:
> On OMAP4 SoC there is a SAR memory region (Save & Rescue)
> where the ROM code reads the device to boot from.
> This patch adds a way to set this.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

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
