Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEzd6-0004kS-KJ
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 10:06:53 +0000
Date: Mon, 11 Mar 2013 11:06:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311100651.GH1906@pengutronix.de>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-5-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-5-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 4/9] ARM: zynq: Add support for the Avnet Zedboard
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:15:01AM +0100, Steffen Trumtrar wrote:
> The Avnet ZedBoard is an evalboard with a Zynq-7020 based MPSoC.
> There is also a Digilent ZedBoard, that is the same but only for
> academic customers.
> 
> diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig

Please regenerate with make savedefconfig

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
