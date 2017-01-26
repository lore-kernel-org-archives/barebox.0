Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWeIy-0005AY-Si
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 07:17:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cWeId-0002k5-8L
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 08:16:51 +0100
Date: Thu, 26 Jan 2017 08:16:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170126071640.owiwqt5eyr3wtzr7@pengutronix.de>
References: <1485343915-24850-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1485343915-24850-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: i.MX7: add AIPS base address defines
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 25, 2017 at 12:31:55PM +0100, Alexander Kurz wrote:
> Import the ARM IP bus base addresses from IMX7DRM 05/2016 AIPS Memory Map

In my reference manual the addresses are given directly as numbers. I
often wondered for the other i.MX SoCs what the advantage of such such
multi-stage defines is:

#define MX7_AIPS1_ARB_BASE_ADDR     0x30000000
#define MX7_ATZ1_BASE_ADDR          MX7_AIPS1_ARB_BASE_ADDR
#define MX7_AIPS1_OFF_BASE_ADDR     (MX7_ATZ1_BASE_ADDR + 0x200000)
#define MX7_GPIO1_BASE_ADDR         (MX7_AIPS1_OFF_BASE_ADDR)

I often enough ended up calculating the values by hand to get the
address to type into barebox md/mw commands or to see which address
is meant to look it up in the reference manual (for some defines which
do not have a clear name)

Are there any real advantages of these multi stage defines? Otherwise
I would suggest to use the absolute addresses directly.

Thanks for completing the list anyway, having to add them one by one
as needed can be annoying also.

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
