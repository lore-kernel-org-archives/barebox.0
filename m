Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZDeQ1-00068n-3Z
 for barebox@lists.infradead.org; Fri, 10 Jul 2015 19:57:10 +0000
Date: Fri, 10 Jul 2015 21:56:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150710195646.GA18700@pengutronix.de>
References: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC-WIP 0/5] fbconsole: switch to lib/fonts framework
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Jul 10, 2015 at 12:25:49AM +0300, Antony Pavlov wrote:
> Antony Pavlov (5):
>   for-ammend: fbconsole: FBCONSOLE -> FRAMEBUFFER_CONSOLE
>   import lib/fonts framework from linux kernel
>   for-ammend: video: fbconsole: switch to lib/fonts framework
>   lib/fonts: add "MINI4x6" font
>   video: fbconsole: switch to "MINI4x6" font: just for demo purposes

I merged this into the next branch. I don't really consider this ready
now, but I think we can use the branch to continue working on it.

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
