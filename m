Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRBAj-0002ZM-29
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 06:46:54 +0000
Date: Fri, 8 Jun 2018 08:46:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608064636.cv7nx5vpkdioea4f@pengutronix.de>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: Re: [RESEND v3 00/52] ARM: i.MX8MQ and EVK support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Thu, Jun 07, 2018 at 06:00:16AM -0700, Andrey Smirnov wrote:
> RESEND to include ALL of the patches in the series (not just first 38)
> 
> Everyone:
> 
> Picking up where Sascha left off, this is the next version of the
> patchset that adds support for i.MX8MQ EVK board.


Applied up to 30/52 and most of the rest. For 32 I'd like to ask if it's
really worth making several clock functions static inline. It increases
the image size by a few kb. We do more often than I like, so isn't there
another solution?

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
