Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK3rx-0008SI-Ch
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 09:39:09 +0000
Date: Mon, 25 Mar 2013 10:39:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130325093907.GY1906@pengutronix.de>
References: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/6] ArchosG9: add keyboard input and new reset menu
 entries (v2)
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 16, 2013 at 11:59:36PM +0100, Vicente Bergas wrote:
> This is the second version of this patch series, it includes all feedback received
> which is greatly appreciated.
> 
> Vicente Bergas (6):
>   OMAP4: check for usb availability at device registration
>   ArchosG9: zero all features before setting them
>   gpio_keys: detect keys pressed before booting
>   OMAP4: add command to select next boot device priority
>   ArchosG9: add keyboard input and new reset menu entries

Applied 1,2,3 and 5/6

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
