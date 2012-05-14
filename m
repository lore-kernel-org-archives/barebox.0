Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqUT-0005Ta-Fa
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:18:50 +0000
Date: Mon, 14 May 2012 10:18:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514081846.GE21318@pengutronix.de>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 0/3] MIPS: add the initial support for lowlevel init
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 13, 2012 at 09:24:41PM +0400, Antony Pavlov wrote:
> This patch series introduce the initial support for lowlevel init
> for the MIPS boards.
> 
> In the future low level initialization will be used
> for cache initialization.
> 
> [RFC 1/3] MIPS: move start.S code to .text_entry section
> [RFC 2/3] MIPS: add the initial support for lowlevel init
> [RFC 3/3] MIPS: malta: add bogus lowlevel init

Looks mostly good except that you have some whitespace damage in your
patches. Can we drop 3/3 until we have something useful in the lowlevel
init?

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
