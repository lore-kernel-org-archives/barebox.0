Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEjDl-0005CN-Go
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:53:46 +0000
Date: Wed, 7 Dec 2016 21:53:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207205323.ymjfjjmsevdjuawg@pengutronix.de>
References: <1480325255-17750-1-git-send-email-akurz@blala.de>
 <1480325255-17750-2-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1480325255-17750-2-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 2/4] ARM i.MX: add SoC type detection for i.MX6SL
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Mon, Nov 28, 2016 at 10:27:33AM +0100, Alexander Kurz wrote:
> The i.MX6 series SoC type is determined by barebox by examining the
> USB_ANALOG_DIGPROG aka IMX6_ANATOP_SI_REV register. This register is located
> at a common offset for all mx6 SoC - except for i.MX6SL where a different
> offset is used. This creates a dilemma while distinguishing the mx6sl from
> non-mx6sl SOC since the SoC type identification register location is type
> specific itself.
> 
> Access to undocumented and probably invalid or unpredictable registers should
> be avoided as possible. For the mx6sl detection an access to the general
> USB_ANALOG_DIGPROG @0x260 cannot be avoided when running on mx6sl. This
> register contained the value 0x00014009 for different mx6sl Rev. 1.2 based
> e-book readers using MCIMX6L7DVN10AB and MCIMX6L8DVN10AB SoC. This
> implementation assumes the value of MAJOR_UPPER (here 0x01) to be smaller
> than the smallest non-6sl MAJOR_UPPER (0x61 for mx6s).

The i.MX6SL code would be quite straight forward and easy to merge
without this handicap. I'll probably need a few more days to swallow
this pill. I assume you already searched for better ways to detect a
i.MX6SL, right?

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
